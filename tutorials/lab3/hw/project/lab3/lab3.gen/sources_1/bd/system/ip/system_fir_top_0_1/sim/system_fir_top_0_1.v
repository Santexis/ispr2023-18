// (c) Copyright 1995-2023 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:user:fir_top:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module system_fir_top_0_1 (
  s_axi_fir_io_AWADDR,
  s_axi_fir_io_AWVALID,
  s_axi_fir_io_AWREADY,
  s_axi_fir_io_WDATA,
  s_axi_fir_io_WSTRB,
  s_axi_fir_io_WVALID,
  s_axi_fir_io_WREADY,
  s_axi_fir_io_BRESP,
  s_axi_fir_io_BVALID,
  s_axi_fir_io_BREADY,
  s_axi_fir_io_ARADDR,
  s_axi_fir_io_ARVALID,
  s_axi_fir_io_ARREADY,
  s_axi_fir_io_RDATA,
  s_axi_fir_io_RRESP,
  s_axi_fir_io_RVALID,
  s_axi_fir_io_RREADY,
  interrupt,
  aresetn,
  aclk
);

(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fir_io AWADDR" *)
input wire [5 : 0] s_axi_fir_io_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fir_io AWVALID" *)
input wire s_axi_fir_io_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fir_io AWREADY" *)
output wire s_axi_fir_io_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fir_io WDATA" *)
input wire [31 : 0] s_axi_fir_io_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fir_io WSTRB" *)
input wire [3 : 0] s_axi_fir_io_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fir_io WVALID" *)
input wire s_axi_fir_io_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fir_io WREADY" *)
output wire s_axi_fir_io_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fir_io BRESP" *)
output wire [1 : 0] s_axi_fir_io_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fir_io BVALID" *)
output wire s_axi_fir_io_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fir_io BREADY" *)
input wire s_axi_fir_io_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fir_io ARADDR" *)
input wire [5 : 0] s_axi_fir_io_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fir_io ARVALID" *)
input wire s_axi_fir_io_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fir_io ARREADY" *)
output wire s_axi_fir_io_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fir_io RDATA" *)
output wire [31 : 0] s_axi_fir_io_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fir_io RRESP" *)
output wire [1 : 0] s_axi_fir_io_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fir_io RVALID" *)
output wire s_axi_fir_io_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_fir_io, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 6, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREA\
DS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fir_io RREADY" *)
input wire s_axi_fir_io_RREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *)
output wire interrupt;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *)
input wire aresetn;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF s_axi_fir_io, ASSOCIATED_RESET aresetn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *)
input wire aclk;

  fir_top #(
    .C_S_AXI_FIR_IO_ADDR_WIDTH(6),
    .C_S_AXI_FIR_IO_DATA_WIDTH(32),
    .RESET_ACTIVE_LOW(1)
  ) inst (
    .s_axi_fir_io_AWADDR(s_axi_fir_io_AWADDR),
    .s_axi_fir_io_AWVALID(s_axi_fir_io_AWVALID),
    .s_axi_fir_io_AWREADY(s_axi_fir_io_AWREADY),
    .s_axi_fir_io_WDATA(s_axi_fir_io_WDATA),
    .s_axi_fir_io_WSTRB(s_axi_fir_io_WSTRB),
    .s_axi_fir_io_WVALID(s_axi_fir_io_WVALID),
    .s_axi_fir_io_WREADY(s_axi_fir_io_WREADY),
    .s_axi_fir_io_BRESP(s_axi_fir_io_BRESP),
    .s_axi_fir_io_BVALID(s_axi_fir_io_BVALID),
    .s_axi_fir_io_BREADY(s_axi_fir_io_BREADY),
    .s_axi_fir_io_ARADDR(s_axi_fir_io_ARADDR),
    .s_axi_fir_io_ARVALID(s_axi_fir_io_ARVALID),
    .s_axi_fir_io_ARREADY(s_axi_fir_io_ARREADY),
    .s_axi_fir_io_RDATA(s_axi_fir_io_RDATA),
    .s_axi_fir_io_RRESP(s_axi_fir_io_RRESP),
    .s_axi_fir_io_RVALID(s_axi_fir_io_RVALID),
    .s_axi_fir_io_RREADY(s_axi_fir_io_RREADY),
    .interrupt(interrupt),
    .aresetn(aresetn),
    .aclk(aclk)
  );
endmodule
