/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xgpio.h"
#include "xgpiops.h"
#include "xscutimer.h"
#include "xscugic.h"
#include "xaxicdma.h"


#define LENGTH 16384 //buffer lengths in number of bytes
#define PROCESSOR_BRAM_MEMORY 0x80008000 // BRAM Controller 0
#define CDMA_BRAM_MEMORY 0xC0008000 // BRAM Controller 1
#define DDR_MEMORY 0x01000000

int main()
{
    init_platform();
    u32 switches ;
    u32 button;
    volatile u32 cnt1;
	u32 ps_led = 0;
    int i;
    u8 * source, * destination;
    u8 * cdma_source, * cdma_destination;

    XScuTimer timer;
    XScuTimer_Config *pScuTimerCfg;
    pScuTimerCfg = XScuTimer_LookupConfig(XPAR_SCUTIMER_DEVICE_ID);
    XScuTimer_CfgInitialize(&timer, pScuTimerCfg, pScuTimerCfg->BaseAddr);
    XScuTimer_LoadTimer(&timer, 0xFFFFFFFF);
    XScuTimer_Start(&timer);
    print("Hello World\n\r");
    print("Successfully ran Hello World application333\n\n");


    //Check the situation of BTN3 (Pin number : 54 )

    XGpio_Config* p_sw_config;
    XGpio sw;

     XGpio_Config* p_lds_config;
     XGpio lds;

     int result;
         p_sw_config = XGpio_LookupConfig(XPAR_SWITCHES_DEVICE_ID);

         if (p_sw_config == NULL) {
         xil_printf("LookupConfig Switches failed\r\n");
         while (1);
         }

         result = XGpio_CfgInitialize(&sw, p_sw_config, p_sw_config->BaseAddress);
         if (result != XST_SUCCESS) {
         xil_printf("CfgInitilize Switches failed %d\r\n", result);
         while (1);
         }

         XGpio_SetDataDirection(&sw, 1, 0xFFFFFFFF); //Set GPIO in channel 1 as inputs


         int result1;
         p_lds_config = XGpio_LookupConfig(XPAR_LEDS_DEVICE_ID);

         if (p_lds_config == NULL) {
         xil_printf("LookupConfig Leds failed\r\n");
         while (1);
         }

         result1 = XGpio_CfgInitialize(&lds, p_lds_config, p_lds_config->BaseAddress);
         if (result1 != XST_SUCCESS) {
        	 xil_printf("CfgInitilize Leds failed %d\r\n", result);
        	 while (1);
         }
         XGpio_SetDataDirection(&lds, 1, 0); //Set GPIO in channel 1 as outputs

         XGpioPs gpioPs;
         XGpioPs_Config* gpiops_cfg = XGpioPs_LookupConfig(XPAR_PS7_GPIO_0_DEVICE_ID);
         result1 = XGpioPs_CfgInitialize(&gpioPs, gpiops_cfg, gpiops_cfg->BaseAddr);
         if (result1 != XST_SUCCESS) {
        	 xil_printf("CfgInitilize gpio ps failed %d\r\n", result);
        	 while (1);
         }

		XGpioPs_SetDirectionPin(&gpioPs, 7, 1);
		XGpioPs_SetOutputEnablePin(&gpioPs, 7, 1);
		XGpioPs_SetDirectionPin(&gpioPs, 54, 0);

   XScuGic gic;
   XScuGic_Config * pGicCfg;
   pGicCfg = XScuGic_LookupConfig(XPAR_SCUGIC_SINGLE_DEVICE_ID);
   XScuGic_CfgInitialize(&Gic, pGicCfg, pGicCfg->CpuBaseAddress);

   XAxiCdma xcdma;
   XAxiCdma_Config * CdmaCfgPtr;
   CdmaCfgPtr = XAxiCdma_LookupConfig(XPAR_AXI_CDMA_0_DEVICE_ID);
   XAxiCdma_CfgInitialize(&xcdma , CdmaCfgPtr, CdmaCfgPtr->BaseAddress);


   //XScuGic_InterruptHandler (implemented in BSP)
   Xil_ExceptionInit();
   Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_IRQ_INT,(Xil_ExceptionHandler)XScuGic_InterruptHandler,&gic);
   XScuGic_Connect(&gic,XPAR_FABRIC_AXI_CDMA_0_CDMA_INTROUT_INTR,(Xil_InterruptHandler)XAxiCdma_IntrHandler,(void *)&xcdma);
   XScuGic_Enable(GicPtr, XPAR_FABRIC_AXI_CDMA_0_CDMA_INTROUT_INTR);


   do {

	    ps_led = !ps_led;

	   do {
			button = XGpioPs_ReadPin(&gpioPs, 54);
	   } while(!button);

	   switches = XGpio_DiscreteRead(&sw, 1) & 0x000F; //Read switches value
	   xil_printf("Switches value is 0x%04X\r\n", switches); //Only 4 bits

	   ///////////////////////////////////////////////////////////
	   XGpio_DiscreteWrite(&lds, 1, switches);

	    //XGpioPs_WritePin(&gpioPs, 7, button & ps_led);
	   XGpioPs_WritePin(&gpioPs, 7, ps_led);


	   if (switches&0x0001){
		   source = (u8 *)PROCESSOR_BRAM_MEMORY;
		   cdma_memory_source = (u8 *)CDMA_BRAM_MEMORY;
		   destination = (u8 *)DDR_MEMORY;
		   cdma_memory_destination = (u8 *)DDR_MEMORY;
	   } else if (switches&0x0002) {
		   source = (u8 *)DDR_MEMORY;
		   cdma_memory_source = (u8 *)DDR_MEMORY;
		   destination = (u8 *)PROCESSOR_BRAM_MEMORY;
		   cdma_memory_destination = (u8 *)CDMA_BRAM_MEMORY;
	   } else if (switches&0x0004){
		   source = (u8 *)DDR_MEMORY;
		   cdma_memory_source = (u8 *)DDR_MEMORY;
		   destination = (u8 *)DDR_MEMORY+LENGTH;
		   cdma_memory_destination = (u8 *)DDR_MEMORY+LENGTH;
	   } else{
		   source = (u8 *)PROCESSOR_BRAM_MEMORY;
		   cdma_memory_source = (u8 *)CDMA_BRAM_MEMORY;
		   destination = (u8 *) PROCESSOR_BRAM_MEMORY+LENGTH;
		   cdma_memory_destination = (u8 *)CDMA_BRAM_MEMORY+LENGTH;
	   }

	   cpu_move(source, destination, &timer);
	   cdma_move_polling (&xcdma, source, destination,cdma_source, cdma_destination,&timer);
	   cdma_move_isr (&xcdma, source, destination,cdma_source, cdma_destination,&timer);

		XScuTimer_RestartTimer(&timer);
		for (i=0; i<9999999; i++);
		cnt1 = XScuTimer_GetCounterValue(&timer);
		xil_printf("Delay took %d clock cycles\r\n", 0xFFFFFFFF-cnt1);

   } while (switches != 0x000F);



   void XScuTimer_Stop(XScuTimer *InstancePtr);
   Xil_DCacheDisable();
    cleanup_platform();
    return 0;
}









void mem_setup (u8* mem) {
int i;
for (i=0; i<LENGTH; i++) {
*(mem+i) = i;
}
}

void mem_clear (u8* mem) {
int i;
for (i=0; i<LENGTH; i++) {
*(mem+i) = 0;
}
}


void cpu_move (u8* src, u8* dst, XScuTimer* pTimer) {
u32 i, cnt;
mem_setup(src);
mem_clear(dst);
XScuTimer_RestartTimer(pTimer);
for (i=0; i<LENGTH; i++) {
*(dst+i) = *(src+i);
}
cnt = XScuTimer_GetCounterValue(pTimer);
xil_printf("Moving %d bytes with CPU took %d clock cycles\r\n",
LENGTH, 0xFFFFFFFF-cnt);
}

void cdma_move_isr (XAxiCdma * pCDMA,
u8* src, u8* dst,
u32 cdma_src, u32 cdma_dst,
XScuTimer* pTimer) {


u32 i;
volatile u32 cnt;
mem_setup(src);
mem_clear(dst);
cnt = 0;
XAxiCdma_IntrEnable(pCDMA, XAXICDMA_XR_IRQ_ALL_MASK);
XScuTimer_RestartTimer(pTimer);
XAxiCdma_SimpleTransfer(pCDMA, cdma_src, cdma_dst,
LENGTH, xcdma_callback, (void*)(&cnt));
while(cnt == 0) {
usleep(1000);
}
xil_printf("Moving %d bytes with ISR CDMA took %d clock cycles\r\n",LENGTH, 0xFFFFFFFF-cnt);
}


static void xcdma_callback(void *CallBackRef,
u32 IrqMask,
int *IgnorePtr)
{
if (IrqMask & XAXICDMA_XR_IRQ_ERROR_MASK) {
while (1);
}
if (IrqMask & XAXICDMA_XR_IRQ_IOC_MASK) {volatile u32* p_cnt = (volatile u32*)CallBackRef;
*p_cnt = XScuTimer_GetCounterValue(&timer);
}
}




