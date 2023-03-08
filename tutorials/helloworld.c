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


int main()
{
    init_platform();
    u32 switches ;
    u32 button;
    volatile u32 cnt1;
	u32 ps_led = 0;
    int i;

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

		XGpioPs_SetDirectionPin(&gpioPs, 7, 0);
		XGpioPs_SetOutputEnablePin(&gpioPs, 7, 1);
		XGpioPs_SetDirectionPin(&gpioPs, 54, 1);

   do {
    ps_led = !ps_led;
    switches = XGpio_DiscreteRead(&sw, 1); //Read switches value
    xil_printf("Switches value is 0x%04X\r\n", switches&0x000F); //Only 4 bits

///////////////////////////////////////////////////////////
    XGpio_DiscreteWrite(&lds, 1, switches&0x000F);

    button = XGpioPs_ReadPin(&gpioPs, 54);
    XGpioPs_WritePin(&gpioPs, 7, button & ps_led);

    XScuTimer_RestartTimer(&timer);
    for (i=0; i<9999999; i++);
    cnt1 = XScuTimer_GetCounterValue(&timer);
    xil_printf("Delay took %d clock cycles\r\n", 0xFFFFFFFF-cnt1);

   }while((switches&0x000F) != 0x000F);

   void XScuTimer_Stop(XScuTimer *InstancePtr);
    cleanup_platform();
    return 0;
}



