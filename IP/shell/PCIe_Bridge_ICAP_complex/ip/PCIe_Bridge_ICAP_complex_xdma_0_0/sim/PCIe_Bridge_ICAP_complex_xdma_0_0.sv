// (c) Copyright 1995-2019 Xilinx, Inc. All rights reserved.
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


// IP VLNV: xilinx.com:ip:xdma:4.1
// IP Revision: 3

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module PCIe_Bridge_ICAP_complex_xdma_0_0 (
  sys_rst_n,
  axi_aclk,
  axi_aresetn,
  usr_irq_req,
  usr_irq_function_number,
  usr_irq_ack,
  m_axi_awready,
  m_axi_wready,
  m_axi_bid,
  m_axi_bresp,
  m_axi_bvalid,
  m_axi_arready,
  m_axi_rid,
  m_axi_rdata,
  m_axi_rresp,
  m_axi_rlast,
  m_axi_rvalid,
  m_axi_awid,
  m_axi_awaddr,
  m_axi_awlen,
  m_axi_awsize,
  m_axi_awburst,
  m_axi_awprot,
  m_axi_awvalid,
  m_axi_awlock,
  m_axi_awcache,
  m_axi_wdata,
  m_axi_wstrb,
  m_axi_wlast,
  m_axi_wvalid,
  m_axi_bready,
  m_axi_arid,
  m_axi_araddr,
  m_axi_arlen,
  m_axi_arsize,
  m_axi_arburst,
  m_axi_arprot,
  m_axi_arvalid,
  m_axi_arlock,
  m_axi_arcache,
  m_axi_rready,
  m_axil_awaddr,
  m_axil_awuser,
  m_axil_awprot,
  m_axil_awvalid,
  m_axil_awready,
  m_axil_wdata,
  m_axil_wstrb,
  m_axil_wvalid,
  m_axil_wready,
  m_axil_bvalid,
  m_axil_bresp,
  m_axil_bready,
  m_axil_araddr,
  m_axil_aruser,
  m_axil_arprot,
  m_axil_arvalid,
  m_axil_arready,
  m_axil_rdata,
  m_axil_rresp,
  m_axil_rvalid,
  m_axil_rready,
  m_axib_awid,
  m_axib_awaddr,
  m_axib_awlen,
  m_axib_awuser,
  m_axib_awsize,
  m_axib_awburst,
  m_axib_awprot,
  m_axib_awvalid,
  m_axib_awready,
  m_axib_awlock,
  m_axib_awcache,
  m_axib_wdata,
  m_axib_wstrb,
  m_axib_wlast,
  m_axib_wvalid,
  m_axib_wready,
  m_axib_bid,
  m_axib_bresp,
  m_axib_bvalid,
  m_axib_bready,
  m_axib_arid,
  m_axib_araddr,
  m_axib_arlen,
  m_axib_aruser,
  m_axib_arsize,
  m_axib_arburst,
  m_axib_arprot,
  m_axib_arvalid,
  m_axib_arready,
  m_axib_arlock,
  m_axib_arcache,
  m_axib_rid,
  m_axib_rdata,
  m_axib_rresp,
  m_axib_rlast,
  m_axib_rvalid,
  m_axib_rready,
  interrupt_out,
  cfg_ltssm_state_sd,
  user_lnk_up_sd,
  phy_rdy_out_sd,
  cfg_function_status_sd,
  cfg_max_read_req_sd,
  cfg_max_payload_sd,
  cfg_flr_done_sd,
  cfg_flr_in_process_sd,
  s_axis_rq_tdata_sd,
  s_axis_rq_tlast_sd,
  s_axis_rq_tuser_sd,
  s_axis_rq_tkeep_sd,
  s_axis_rq_tready_sd,
  s_axis_rq_tvalid_sd,
  m_axis_rc_tdata_sd,
  m_axis_rc_tuser_sd,
  m_axis_rc_tlast_sd,
  m_axis_rc_tkeep_sd,
  m_axis_rc_tvalid_sd,
  m_axis_rc_tready_sd,
  m_axis_cq_tdata_sd,
  m_axis_cq_tuser_sd,
  m_axis_cq_tlast_sd,
  m_axis_cq_tkeep_sd,
  m_axis_cq_tvalid_sd,
  m_axis_cq_tready_sd,
  s_axis_cc_tdata_sd,
  s_axis_cc_tuser_sd,
  s_axis_cc_tlast_sd,
  s_axis_cc_tkeep_sd,
  s_axis_cc_tvalid_sd,
  s_axis_cc_tready_sd,
  user_clk_sd,
  user_reset_sd,
  pcie_cq_np_req_sd,
  pcie_cq_np_req_count_sd,
  pcie_tfc_nph_av_sd,
  pcie_tfc_npd_av_sd,
  pcie_rq_seq_num_vld0_sd,
  pcie_rq_seq_num0_sd,
  pcie_rq_seq_num_vld1_sd,
  pcie_rq_seq_num1_sd,
  cfg_fc_nph_sd,
  cfg_fc_sel_sd,
  cfg_phy_link_down_sd,
  cfg_phy_link_status_sd,
  cfg_negotiated_width_sd,
  cfg_current_speed_sd,
  cfg_pl_status_change_sd,
  cfg_hot_reset_out_sd,
  cfg_ds_port_number_sd,
  cfg_ds_bus_number_sd,
  cfg_ds_device_number_sd,
  cfg_ds_function_number_sd,
  cfg_err_uncor_in_sd,
  cfg_err_cor_in_sd,
  cfg_link_training_enable_sd,
  cfg_vf_flr_in_process_sd,
  cfg_dsn_sd,
  cfg_interrupt_int_sd,
  cfg_interrupt_sent_sd,
  cfg_interrupt_pending_sd,
  cfg_interrupt_msi_function_number_sd,
  cfg_interrupt_msi_sent_sd,
  cfg_interrupt_msi_fail_sd,
  cfg_interrupt_msix_int_sd,
  cfg_interrupt_msix_data_sd,
  cfg_interrupt_msix_address_sd,
  cfg_interrupt_msix_enable_sd,
  cfg_interrupt_msix_mask_sd,
  cfg_interrupt_msix_vf_enable_sd,
  cfg_interrupt_msix_vf_mask_sd,
  cfg_err_cor_out_sd,
  cfg_err_nonfatal_out_sd,
  cfg_err_fatal_out_sd,
  cfg_local_error_out_sd,
  cfg_msg_received_sd,
  cfg_msg_received_data_sd,
  cfg_msg_received_type_sd,
  cfg_msg_transmit_sd,
  cfg_msg_transmit_type_sd,
  cfg_msg_transmit_data_sd,
  cfg_msg_transmit_done_sd
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.sys_rst_n, BOARD.ASSOCIATED_PARAM SYS_RST_N_BOARD_INTERFACE, TYPE PCIE_PERST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.sys_rst_n RST" *)
input wire sys_rst_n;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.axi_aclk, ASSOCIATED_BUSIF M_AXI:S_AXI_B:M_AXI_LITE:S_AXI_LITE:M_AXI_BYPASS:M_AXI_B:S_AXIS_C2H_0:S_AXIS_C2H_1:S_AXIS_C2H_2:S_AXIS_C2H_3:M_AXIS_H2C_0:M_AXIS_H2C_1:M_AXIS_H2C_2:M_AXIS_H2C_3:sc0_ats_m_axis_cq:sc0_ats_m_axis_rc:sc0_ats_s_axis_cc:sc0_ats_s_axis_rq:sc1_ats_m_axis_cq:sc1_ats_m_axis_rc:sc1_ats_s_axis_cc:sc1_ats_s_axis_rq:cxs_tx:cxs_rx, ASSOCIATED_RESET axi_aresetn, FREQ_HZ 250000000, PHASE 0.000, CLK_DOMAIN PCIe_Bridge_ICAP_complex_xdma_0_0_axi_aclk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.axi_aclk CLK" *)
output wire axi_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.axi_aresetn RST" *)
output wire axi_aresetn;
input wire [0 : 0] usr_irq_req;
input wire [1 : 0] usr_irq_function_number;
output wire [0 : 0] usr_irq_ack;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWREADY" *)
input wire m_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WREADY" *)
input wire m_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BID" *)
input wire [3 : 0] m_axi_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BRESP" *)
input wire [1 : 0] m_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BVALID" *)
input wire m_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARREADY" *)
input wire m_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RID" *)
input wire [3 : 0] m_axi_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RDATA" *)
input wire [511 : 0] m_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RRESP" *)
input wire [1 : 0] m_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RLAST" *)
input wire m_axi_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RVALID" *)
input wire m_axi_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWID" *)
output wire [3 : 0] m_axi_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWADDR" *)
output wire [63 : 0] m_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWLEN" *)
output wire [7 : 0] m_axi_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWSIZE" *)
output wire [2 : 0] m_axi_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWBURST" *)
output wire [1 : 0] m_axi_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWPROT" *)
output wire [2 : 0] m_axi_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWVALID" *)
output wire m_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWLOCK" *)
output wire m_axi_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWCACHE" *)
output wire [3 : 0] m_axi_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WDATA" *)
output wire [511 : 0] m_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WSTRB" *)
output wire [63 : 0] m_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WLAST" *)
output wire m_axi_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WVALID" *)
output wire m_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BREADY" *)
output wire m_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARID" *)
output wire [3 : 0] m_axi_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARADDR" *)
output wire [63 : 0] m_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARLEN" *)
output wire [7 : 0] m_axi_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARSIZE" *)
output wire [2 : 0] m_axi_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARBURST" *)
output wire [1 : 0] m_axi_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARPROT" *)
output wire [2 : 0] m_axi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARVALID" *)
output wire m_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARLOCK" *)
output wire m_axi_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARCACHE" *)
output wire [3 : 0] m_axi_arcache;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI, SUPPORTS_NARROW_BURST 0, HAS_BURST 0, HAS_BURST.VALUE_SRC CONSTANT, DATA_WIDTH 512, PROTOCOL AXI4, FREQ_HZ 250000000, ID_WIDTH 4, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 32, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN PCIe_Bridge_ICAP_complex_xd\
ma_0_0_axi_aclk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RREADY" *)
output wire m_axi_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE AWADDR" *)
output wire [31 : 0] m_axil_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE AWUSER" *)
output wire [10 : 0] m_axil_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE AWPROT" *)
output wire [2 : 0] m_axil_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE AWVALID" *)
output wire m_axil_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE AWREADY" *)
input wire m_axil_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE WDATA" *)
output wire [31 : 0] m_axil_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE WSTRB" *)
output wire [3 : 0] m_axil_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE WVALID" *)
output wire m_axil_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE WREADY" *)
input wire m_axil_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE BVALID" *)
input wire m_axil_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE BRESP" *)
input wire [1 : 0] m_axil_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE BREADY" *)
output wire m_axil_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE ARADDR" *)
output wire [31 : 0] m_axil_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE ARUSER" *)
output wire [10 : 0] m_axil_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE ARPROT" *)
output wire [2 : 0] m_axil_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE ARVALID" *)
output wire m_axil_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE ARREADY" *)
input wire m_axil_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE RDATA" *)
input wire [31 : 0] m_axil_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE RRESP" *)
input wire [1 : 0] m_axil_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE RVALID" *)
input wire m_axil_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_LITE, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 250000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 11, ARUSER_WIDTH 11, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN PCIe_Bridge_ICAP_complex_xdma_0_0_axi_aclk, NUM_REA\
D_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE RREADY" *)
output wire m_axil_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_BYPASS AWID" *)
output wire [3 : 0] m_axib_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_BYPASS AWADDR" *)
output wire [63 : 0] m_axib_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_BYPASS AWLEN" *)
output wire [7 : 0] m_axib_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_BYPASS AWUSER" *)
output wire [7 : 0] m_axib_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_BYPASS AWSIZE" *)
output wire [2 : 0] m_axib_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_BYPASS AWBURST" *)
output wire [1 : 0] m_axib_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_BYPASS AWPROT" *)
output wire [2 : 0] m_axib_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_BYPASS AWVALID" *)
output wire m_axib_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_BYPASS AWREADY" *)
input wire m_axib_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_BYPASS AWLOCK" *)
output wire m_axib_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_BYPASS AWCACHE" *)
output wire [3 : 0] m_axib_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_BYPASS WDATA" *)
output wire [511 : 0] m_axib_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_BYPASS WSTRB" *)
output wire [63 : 0] m_axib_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_BYPASS WLAST" *)
output wire m_axib_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_BYPASS WVALID" *)
output wire m_axib_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_BYPASS WREADY" *)
input wire m_axib_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_BYPASS BID" *)
input wire [3 : 0] m_axib_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_BYPASS BRESP" *)
input wire [1 : 0] m_axib_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_BYPASS BVALID" *)
input wire m_axib_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_BYPASS BREADY" *)
output wire m_axib_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_BYPASS ARID" *)
output wire [3 : 0] m_axib_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_BYPASS ARADDR" *)
output wire [63 : 0] m_axib_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_BYPASS ARLEN" *)
output wire [7 : 0] m_axib_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_BYPASS ARUSER" *)
output wire [7 : 0] m_axib_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_BYPASS ARSIZE" *)
output wire [2 : 0] m_axib_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_BYPASS ARBURST" *)
output wire [1 : 0] m_axib_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_BYPASS ARPROT" *)
output wire [2 : 0] m_axib_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_BYPASS ARVALID" *)
output wire m_axib_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_BYPASS ARREADY" *)
input wire m_axib_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_BYPASS ARLOCK" *)
output wire m_axib_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_BYPASS ARCACHE" *)
output wire [3 : 0] m_axib_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_BYPASS RID" *)
input wire [3 : 0] m_axib_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_BYPASS RDATA" *)
input wire [511 : 0] m_axib_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_BYPASS RRESP" *)
input wire [1 : 0] m_axib_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_BYPASS RLAST" *)
input wire m_axib_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_BYPASS RVALID" *)
input wire m_axib_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_BYPASS, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, SUPPORTS_NARROW_BURST 0, NUM_READ_THREADS 2, NUM_WRITE_THREADS 2, DATA_WIDTH 512, PROTOCOL AXI4, FREQ_HZ 250000000, ID_WIDTH 4, ADDR_WIDTH 64, AWUSER_WIDTH 8, ARUSER_WIDTH 8, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN PCIe_Bridge\
_ICAP_complex_xdma_0_0_axi_aclk, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_BYPASS RREADY" *)
output wire m_axib_rready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTERRUPT.interrupt_out, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTERRUPT.interrupt_out INTERRUPT" *)
output wire interrupt_out;
(* X_INTERFACE_INFO = "xilinx.com:display_pcie4:pcie4_cfg_status:1.0 pcie4_cfg_status ltssm_state" *)
input wire [5 : 0] cfg_ltssm_state_sd;
input wire user_lnk_up_sd;
input wire phy_rdy_out_sd;
(* X_INTERFACE_INFO = "xilinx.com:display_pcie4:pcie4_cfg_status:1.0 pcie4_cfg_status function_status" *)
input wire [15 : 0] cfg_function_status_sd;
(* X_INTERFACE_INFO = "xilinx.com:display_pcie4:pcie4_cfg_status:1.0 pcie4_cfg_status max_read_req" *)
input wire [2 : 0] cfg_max_read_req_sd;
(* X_INTERFACE_INFO = "xilinx.com:display_pcie4:pcie4_cfg_status:1.0 pcie4_cfg_status max_payload" *)
input wire [1 : 0] cfg_max_payload_sd;
(* X_INTERFACE_INFO = "xilinx.com:display_pcie4:pcie4_cfg_control:1.0 pcie4_cfg_control flr_done" *)
output wire [3 : 0] cfg_flr_done_sd;
(* X_INTERFACE_INFO = "xilinx.com:display_pcie4:pcie4_cfg_control:1.0 pcie4_cfg_control flr_in_process" *)
input wire [3 : 0] cfg_flr_in_process_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_rq TDATA" *)
output wire [511 : 0] s_axis_rq_tdata_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_rq TLAST" *)
output wire s_axis_rq_tlast_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_rq TUSER" *)
output wire [136 : 0] s_axis_rq_tuser_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_rq TKEEP" *)
output wire [15 : 0] s_axis_rq_tkeep_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_rq TREADY" *)
input wire [3 : 0] s_axis_rq_tready_sd;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_rq, TDATA_NUM_BYTES 64, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 137, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 250000000, PHASE 0.000, CLK_DOMAIN PCIe_Bridge_ICAP_complex_pcie4_uscale_plus_0_0_user_clk, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_rq TVALID" *)
output wire s_axis_rq_tvalid_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rc TDATA" *)
input wire [511 : 0] m_axis_rc_tdata_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rc TUSER" *)
input wire [160 : 0] m_axis_rc_tuser_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rc TLAST" *)
input wire m_axis_rc_tlast_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rc TKEEP" *)
input wire [15 : 0] m_axis_rc_tkeep_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rc TVALID" *)
input wire m_axis_rc_tvalid_sd;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_rc, TDATA_NUM_BYTES 64, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 161, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 250000000, PHASE 0.000, CLK_DOMAIN PCIe_Bridge_ICAP_complex_pcie4_uscale_plus_0_0_user_clk, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rc TREADY" *)
output wire m_axis_rc_tready_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_cq TDATA" *)
input wire [511 : 0] m_axis_cq_tdata_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_cq TUSER" *)
input wire [182 : 0] m_axis_cq_tuser_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_cq TLAST" *)
input wire m_axis_cq_tlast_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_cq TKEEP" *)
input wire [15 : 0] m_axis_cq_tkeep_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_cq TVALID" *)
input wire m_axis_cq_tvalid_sd;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_cq, TDATA_NUM_BYTES 64, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 183, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 250000000, PHASE 0.000, CLK_DOMAIN PCIe_Bridge_ICAP_complex_pcie4_uscale_plus_0_0_user_clk, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_cq TREADY" *)
output wire m_axis_cq_tready_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_cc TDATA" *)
output wire [511 : 0] s_axis_cc_tdata_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_cc TUSER" *)
output wire [80 : 0] s_axis_cc_tuser_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_cc TLAST" *)
output wire s_axis_cc_tlast_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_cc TKEEP" *)
output wire [15 : 0] s_axis_cc_tkeep_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_cc TVALID" *)
output wire s_axis_cc_tvalid_sd;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_cc, TDATA_NUM_BYTES 64, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 81, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 250000000, PHASE 0.000, CLK_DOMAIN PCIe_Bridge_ICAP_complex_pcie4_uscale_plus_0_0_user_clk, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_cc TREADY" *)
input wire [3 : 0] s_axis_cc_tready_sd;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.user_clk, ASSOCIATED_BUSIF m_axis_cq:s_axis_cc:s_axis_rq:m_axis_rc:pcie4_cxs_rx:pcie4_cxs_tx, FREQ_HZ 250000000, ASSOCIATED_RESET user_reset_sd, PHASE 0.000, CLK_DOMAIN PCIe_Bridge_ICAP_complex_pcie4_uscale_plus_0_0_user_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.user_clk CLK" *)
input wire user_clk_sd;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.user_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.user_reset RST" *)
input wire user_reset_sd;
(* X_INTERFACE_INFO = "xilinx.com:display_pcie4:pcie4_cfg_status:1.0 pcie4_cfg_status cq_np_req" *)
output wire [1 : 0] pcie_cq_np_req_sd;
(* X_INTERFACE_INFO = "xilinx.com:display_pcie4:pcie4_cfg_status:1.0 pcie4_cfg_status cq_np_req_count" *)
input wire [5 : 0] pcie_cq_np_req_count_sd;
(* X_INTERFACE_INFO = "xilinx.com:display_pcie4:pcie4_cfg_status:1.0 pcie4_cfg_status tfc_nph_av" *)
input wire [3 : 0] pcie_tfc_nph_av_sd;
(* X_INTERFACE_INFO = "xilinx.com:display_pcie4:pcie4_cfg_status:1.0 pcie4_cfg_status tfc_npd_av" *)
input wire [3 : 0] pcie_tfc_npd_av_sd;
(* X_INTERFACE_INFO = "xilinx.com:display_pcie4:pcie4_cfg_status:1.0 pcie4_cfg_status rq_seq_num_vld0" *)
input wire pcie_rq_seq_num_vld0_sd;
(* X_INTERFACE_INFO = "xilinx.com:display_pcie4:pcie4_cfg_status:1.0 pcie4_cfg_status rq_seq_num0" *)
input wire [5 : 0] pcie_rq_seq_num0_sd;
(* X_INTERFACE_INFO = "xilinx.com:display_pcie4:pcie4_cfg_status:1.0 pcie4_cfg_status rq_seq_num_vld1" *)
input wire pcie_rq_seq_num_vld1_sd;
(* X_INTERFACE_INFO = "xilinx.com:display_pcie4:pcie4_cfg_status:1.0 pcie4_cfg_status rq_seq_num1" *)
input wire [5 : 0] pcie_rq_seq_num1_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie_cfg_fc:1.0 pcie4_cfg_fc NPH" *)
input wire [7 : 0] cfg_fc_nph_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie_cfg_fc:1.0 pcie4_cfg_fc SEL" *)
output wire [2 : 0] cfg_fc_sel_sd;
(* X_INTERFACE_INFO = "xilinx.com:display_pcie4:pcie4_cfg_status:1.0 pcie4_cfg_status phy_link_down" *)
input wire cfg_phy_link_down_sd;
(* X_INTERFACE_INFO = "xilinx.com:display_pcie4:pcie4_cfg_status:1.0 pcie4_cfg_status phy_link_status" *)
input wire [1 : 0] cfg_phy_link_status_sd;
(* X_INTERFACE_INFO = "xilinx.com:display_pcie4:pcie4_cfg_status:1.0 pcie4_cfg_status negotiated_width" *)
input wire [2 : 0] cfg_negotiated_width_sd;
(* X_INTERFACE_INFO = "xilinx.com:display_pcie4:pcie4_cfg_status:1.0 pcie4_cfg_status current_speed" *)
input wire [1 : 0] cfg_current_speed_sd;
(* X_INTERFACE_INFO = "xilinx.com:display_pcie4:pcie4_cfg_status:1.0 pcie4_cfg_status pl_status_change" *)
input wire cfg_pl_status_change_sd;
(* X_INTERFACE_INFO = "xilinx.com:display_pcie4:pcie4_cfg_control:1.0 pcie4_cfg_control hot_reset_out" *)
input wire cfg_hot_reset_out_sd;
(* X_INTERFACE_INFO = "xilinx.com:display_pcie4:pcie4_cfg_control:1.0 pcie4_cfg_control ds_port_number" *)
output wire [7 : 0] cfg_ds_port_number_sd;
(* X_INTERFACE_INFO = "xilinx.com:display_pcie4:pcie4_cfg_control:1.0 pcie4_cfg_control ds_bus_number" *)
output wire [7 : 0] cfg_ds_bus_number_sd;
(* X_INTERFACE_INFO = "xilinx.com:display_pcie4:pcie4_cfg_control:1.0 pcie4_cfg_control ds_device_number" *)
output wire [4 : 0] cfg_ds_device_number_sd;
(* X_INTERFACE_INFO = "xilinx.com:display_pcie4:pcie4_cfg_control:1.0 pcie4_cfg_control ds_function_number" *)
output wire [2 : 0] cfg_ds_function_number_sd;
(* X_INTERFACE_INFO = "xilinx.com:display_pcie4:pcie4_cfg_control:1.0 pcie4_cfg_control err_uncor_in" *)
output wire cfg_err_uncor_in_sd;
(* X_INTERFACE_INFO = "xilinx.com:display_pcie4:pcie4_cfg_control:1.0 pcie4_cfg_control err_cor_in" *)
output wire cfg_err_cor_in_sd;
(* X_INTERFACE_INFO = "xilinx.com:display_pcie4:pcie4_cfg_control:1.0 pcie4_cfg_control link_training_enable" *)
output wire cfg_link_training_enable_sd;
(* X_INTERFACE_INFO = "xilinx.com:display_pcie4:pcie4_cfg_control:1.0 pcie4_cfg_control vf_flr_in_process" *)
input wire [251 : 0] cfg_vf_flr_in_process_sd;
(* X_INTERFACE_INFO = "xilinx.com:display_pcie4:pcie4_cfg_control:1.0 pcie4_cfg_control dsn" *)
output wire [63 : 0] cfg_dsn_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_interrupt:1.0 pcie4_cfg_interrupt INTx_VECTOR" *)
output wire [3 : 0] cfg_interrupt_int_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_interrupt:1.0 pcie4_cfg_interrupt SENT" *)
input wire cfg_interrupt_sent_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_interrupt:1.0 pcie4_cfg_interrupt PENDING" *)
output wire [3 : 0] cfg_interrupt_pending_sd;
(* X_INTERFACE_INFO = "xilinx.com:display_pcie4:pcie4_cfg_external_msix:1.0 pcie4_cfg_external_msix function_number" *)
output wire [7 : 0] cfg_interrupt_msi_function_number_sd;
(* X_INTERFACE_INFO = "xilinx.com:display_pcie4:pcie4_cfg_external_msix:1.0 pcie4_cfg_external_msix sent" *)
input wire cfg_interrupt_msi_sent_sd;
(* X_INTERFACE_INFO = "xilinx.com:display_pcie4:pcie4_cfg_external_msix:1.0 pcie4_cfg_external_msix fail" *)
input wire cfg_interrupt_msi_fail_sd;
(* X_INTERFACE_INFO = "xilinx.com:display_pcie4:pcie4_cfg_external_msix:1.0 pcie4_cfg_external_msix int_vector" *)
output wire cfg_interrupt_msix_int_sd;
(* X_INTERFACE_INFO = "xilinx.com:display_pcie4:pcie4_cfg_external_msix:1.0 pcie4_cfg_external_msix data" *)
output wire [31 : 0] cfg_interrupt_msix_data_sd;
(* X_INTERFACE_INFO = "xilinx.com:display_pcie4:pcie4_cfg_external_msix:1.0 pcie4_cfg_external_msix address" *)
output wire [63 : 0] cfg_interrupt_msix_address_sd;
(* X_INTERFACE_INFO = "xilinx.com:display_pcie4:pcie4_cfg_external_msix:1.0 pcie4_cfg_external_msix enable" *)
input wire [3 : 0] cfg_interrupt_msix_enable_sd;
(* X_INTERFACE_INFO = "xilinx.com:display_pcie4:pcie4_cfg_external_msix:1.0 pcie4_cfg_external_msix mask" *)
input wire [3 : 0] cfg_interrupt_msix_mask_sd;
(* X_INTERFACE_INFO = "xilinx.com:display_pcie4:pcie4_cfg_external_msix:1.0 pcie4_cfg_external_msix vf_enable" *)
input wire [251 : 0] cfg_interrupt_msix_vf_enable_sd;
(* X_INTERFACE_INFO = "xilinx.com:display_pcie4:pcie4_cfg_external_msix:1.0 pcie4_cfg_external_msix vf_mask" *)
input wire [251 : 0] cfg_interrupt_msix_vf_mask_sd;
(* X_INTERFACE_INFO = "xilinx.com:display_pcie4:pcie4_cfg_status:1.0 pcie4_cfg_status err_cor_out" *)
input wire cfg_err_cor_out_sd;
(* X_INTERFACE_INFO = "xilinx.com:display_pcie4:pcie4_cfg_status:1.0 pcie4_cfg_status err_nonfatal_out" *)
input wire cfg_err_nonfatal_out_sd;
(* X_INTERFACE_INFO = "xilinx.com:display_pcie4:pcie4_cfg_status:1.0 pcie4_cfg_status err_fatal_out" *)
input wire cfg_err_fatal_out_sd;
(* X_INTERFACE_INFO = "xilinx.com:display_pcie4:pcie4_cfg_status:1.0 pcie4_cfg_status local_error_out" *)
input wire [4 : 0] cfg_local_error_out_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msg_received:1.0 pcie4_cfg_mesg_rcvd recd" *)
input wire cfg_msg_received_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msg_received:1.0 pcie4_cfg_mesg_rcvd recd_data" *)
input wire [7 : 0] cfg_msg_received_data_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msg_received:1.0 pcie4_cfg_mesg_rcvd recd_type" *)
input wire [4 : 0] cfg_msg_received_type_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_mesg_tx:1.0 pcie4_cfg_mesg_tx TRANSMIT" *)
output wire cfg_msg_transmit_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_mesg_tx:1.0 pcie4_cfg_mesg_tx TRANSMIT_TYPE" *)
output wire [2 : 0] cfg_msg_transmit_type_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_mesg_tx:1.0 pcie4_cfg_mesg_tx TRANSMIT_DATA" *)
output wire [31 : 0] cfg_msg_transmit_data_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_mesg_tx:1.0 pcie4_cfg_mesg_tx TRANSMIT_DONE" *)
input wire cfg_msg_transmit_done_sd;

  PCIe_Bridge_ICAP_complex_xdma_0_0_core_top #(
    .COMPONENT_NAME("xdma_0"),
    .PL_UPSTREAM_FACING("true"),
    .TL_LEGACY_MODE_ENABLE("false"),
    .PCIE_BLK_LOCN(8),
    .PL_LINK_CAP_MAX_LINK_WIDTH(16),
    .PL_LINK_CAP_MAX_LINK_SPEED(4),
    .REF_CLK_FREQ(0),
    .DRP_CLK_SEL(0),
    .FREE_RUN_FREQ(0),
    .AXI_ADDR_WIDTH(64),
    .AXI_DATA_WIDTH(512),
    .CORE_CLK_FREQ(2),
    .PLL_TYPE(2),
    .USER_CLK_FREQ(3),
    .SILICON_REV("Pre-Production"),
    .PIPE_SIM("false"),
    .EXT_CH_GT_DRP("false"),
    .PCIE3_DRP("false"),
    .DEDICATE_PERST("false"),
    .SYS_RESET_POLARITY(0),
    .MCAP_ENABLEMENT("NONE"),
    .EXT_STARTUP_PRIMITIVE("false"),
    .PF0_VENDOR_ID('H10EE),
    .PF0_DEVICE_ID('H903F),
    .PF0_REVISION_ID('H00),
    .PF0_SUBSYSTEM_VENDOR_ID('H10EE),
    .PF0_SUBSYSTEM_ID('H0007),
    .PF0_CLASS_CODE('H070001),
    .PF1_VENDOR_ID('H10EE),
    .PF1_DEVICE_ID('H9111),
    .PF1_REVISION_ID('H00),
    .PF1_SUBSYSTEM_VENDOR_ID('H10EE),
    .PF1_SUBSYSTEM_ID('H0007),
    .PF1_CLASS_CODE('H070001),
    .PF2_DEVICE_ID('H9211),
    .PF2_REVISION_ID('H00),
    .PF2_SUBSYSTEM_ID('H0007),
    .PF3_DEVICE_ID('H9311),
    .PF3_REVISION_ID('H00),
    .PF3_SUBSYSTEM_ID('H0007),
    .AXILITE_MASTER_APERTURE_SIZE('H12),
    .AXILITE_MASTER_CONTROL('H4),
    .XDMA_APERTURE_SIZE('H09),
    .XDMA_CONTROL('H4),
    .AXIST_BYPASS_APERTURE_SIZE('H0D),
    .AXIST_BYPASS_CONTROL('H4),
    .PF0_INTERRUPT_PIN('D000),
    .PF0_MSI_CAP_MULTIMSGCAP(0),
    .C_COMP_TIMEOUT(1),
    .C_TIMEOUT0_SEL('HE),
    .C_TIMEOUT1_SEL('HF),
    .C_TIMEOUT_MULT('H3),
    .C_OLD_BRIDGE_TIMEOUT(0),
    .SHARED_LOGIC(1),
    .SHARED_LOGIC_CLK("false"),
    .SHARED_LOGIC_BOTH("false"),
    .SHARED_LOGIC_GTC("false"),
    .SHARED_LOGIC_GTC_7XG2("false"),
    .SHARED_LOGIC_CLK_7XG2("false"),
    .SHARED_LOGIC_BOTH_7XG2("false"),
    .EN_TRANSCEIVER_STATUS_PORTS("false"),
    .IS_BOARD_PROJECT(0),
    .EN_GT_SELECTION("FALSE"),
    .SELECT_QUAD("GTY_Quad_227"),
    .ULTRASCALE("FALSE"),
    .ULTRASCALE_PLUS("TRUE"),
    .V7_GEN3("FALSE"),
    .MSI_ENABLED("FALSE"),
    .DEV_PORT_TYPE(0),
    .XDMA_AXI_INTF_MM(1),
    .XDMA_PCIE_64BIT_EN("xdma_pcie_64bit_en"),
    .XDMA_AXILITE_MASTER("TRUE"),
    .XDMA_AXIST_BYPASS("TRUE"),
    .XDMA_RNUM_CHNL(1),
    .XDMA_WNUM_CHNL(1),
    .XDMA_AXILITE_SLAVE("FALSE"),
    .XDMA_NUM_USR_IRQ(1),
    .XDMA_RNUM_RIDS(32),
    .XDMA_WNUM_RIDS(16),
    .C_M_AXI_ID_WIDTH(4),
    .C_AXIBAR_NUM(1),
    .C_FAMILY("virtexuplus"),
    .XDMA_NUM_PCIE_TAG(256),
    .EN_AXI_MASTER_IF("TRUE"),
    .EN_WCHNL_0("TRUE"),
    .EN_WCHNL_1("FALSE"),
    .EN_WCHNL_2("FALSE"),
    .EN_WCHNL_3("FALSE"),
    .EN_WCHNL_4("FALSE"),
    .EN_WCHNL_5("FALSE"),
    .EN_WCHNL_6("FALSE"),
    .EN_WCHNL_7("FALSE"),
    .EN_RCHNL_0("TRUE"),
    .EN_RCHNL_1("FALSE"),
    .EN_RCHNL_2("FALSE"),
    .EN_RCHNL_3("FALSE"),
    .EN_RCHNL_4("FALSE"),
    .EN_RCHNL_5("FALSE"),
    .EN_RCHNL_6("FALSE"),
    .EN_RCHNL_7("FALSE"),
    .XDMA_DSC_BYPASS("FALSE"),
    .C_METERING_ON(1),
    .RX_DETECT(0),
    .C_ATS_ENABLE("FALSE"),
    .C_ATS_CAP_NEXTPTR('H000),
    .C_PR_CAP_NEXTPTR('H000),
    .C_PRI_ENABLE("FALSE"),
    .DSC_BYPASS_RD(0),
    .DSC_BYPASS_WR(0),
    .XDMA_STS_PORTS("FALSE"),
    .MSIX_ENABLED("TRUE"),
    .WR_CH0_ENABLED("FALSE"),
    .WR_CH1_ENABLED("FALSE"),
    .WR_CH2_ENABLED("FALSE"),
    .WR_CH3_ENABLED("FALSE"),
    .RD_CH0_ENABLED("FALSE"),
    .RD_CH1_ENABLED("FALSE"),
    .RD_CH2_ENABLED("FALSE"),
    .RD_CH3_ENABLED("FALSE"),
    .CFG_MGMT_IF("FALSE"),
    .RQ_SEQ_NUM_IGNORE(0),
    .CFG_EXT_IF("FALSE"),
    .LEGACY_CFG_EXT_IF("FALSE"),
    .C_PARITY_CHECK(0),
    .C_PARITY_GEN(0),
    .C_PARITY_PROP(0),
    .C_ECC_ENABLE(0),
    .EN_DEBUG_PORTS("FALSE"),
    .VU9P_BOARD("FALSE"),
    .ENABLE_JTAG_DBG("FALSE"),
    .ENABLE_IBERT("false"),
    .MM_SLAVE_EN(1),
    .DMA_EN(1),
    .C_AXIBAR_0('H0000000000000000),
    .C_AXIBAR_1('H0000000000000000),
    .C_AXIBAR_2('H0000000000000000),
    .C_AXIBAR_3('H0000000000000000),
    .C_AXIBAR_4('H0000000000000000),
    .C_AXIBAR_5('H0000000000000000),
    .C_AXIBAR_HIGHADDR_0('H0000000000000000),
    .C_AXIBAR_HIGHADDR_1('H0000000000000000),
    .C_AXIBAR_HIGHADDR_2('H0000000000000000),
    .C_AXIBAR_HIGHADDR_3('H0000000000000000),
    .C_AXIBAR_HIGHADDR_4('H0000000000000000),
    .C_AXIBAR_HIGHADDR_5('H0000000000000000),
    .C_AXIBAR2PCIEBAR_0('H0000000000000000),
    .C_AXIBAR2PCIEBAR_1('H0000000000000000),
    .C_AXIBAR2PCIEBAR_2('H0000000000000000),
    .C_AXIBAR2PCIEBAR_3('H0000000000000000),
    .C_AXIBAR2PCIEBAR_4('H0000000000000000),
    .C_AXIBAR2PCIEBAR_5('H0000000000000000),
    .EN_AXI_SLAVE_IF("FALSE"),
    .C_INCLUDE_BAROFFSET_REG(1),
    .C_BASEADDR('H00001000),
    .C_HIGHADDR('H00001FFF),
    .C_S_AXI_ID_WIDTH(5),
    .C_S_AXI_NUM_READ(8),
    .C_M_AXI_NUM_READ(8),
    .C_M_AXI_NUM_READQ(2),
    .C_S_AXI_NUM_WRITE(8),
    .C_M_AXI_NUM_WRITE(32),
    .MSIX_IMPL_EXT("FALSE"),
    .AXI_ACLK_LOOPBACK("FALSE"),
    .PF0_BAR0_APERTURE_SIZE('H0A),
    .PF0_BAR0_CONTROL('H4),
    .PF0_BAR1_APERTURE_SIZE('H05),
    .PF0_BAR1_CONTROL('H0),
    .PF0_BAR2_APERTURE_SIZE('H05),
    .PF0_BAR2_CONTROL('H0),
    .PF0_BAR3_APERTURE_SIZE('H05),
    .PF0_BAR3_CONTROL('H0),
    .PF0_BAR4_APERTURE_SIZE('H05),
    .PF0_BAR4_CONTROL('H0),
    .PF0_BAR5_APERTURE_SIZE('H05),
    .PF0_BAR5_CONTROL('H0),
    .PF0_EXPANSION_ROM_APERTURE_SIZE('H000),
    .PF0_EXPANSION_ROM_ENABLE("FALSE"),
    .PCIEBAR_NUM(6),
    .C_PCIEBAR2AXIBAR_0('H0000000000000000),
    .C_PCIEBAR2AXIBAR_1('H0000000000000000),
    .C_PCIEBAR2AXIBAR_2('H0000000000000000),
    .C_PCIEBAR2AXIBAR_3('H0000000000000000),
    .C_PCIEBAR2AXIBAR_4('H0000000000000000),
    .C_PCIEBAR2AXIBAR_5('H0000000000000000),
    .C_PCIEBAR2AXIBAR_6('H0000000000000000),
    .BARLITE1(1),
    .BARLITE2(7),
    .VCU118_BOARD("FALSE"),
    .SPLIT_DMA("TRUE"),
    .USE_STANDARD_INTERFACES("FALSE"),
    .PIPE_LINE_STAGE(2),
    .AXIS_PIPE_LINE_STAGE(0),
    .MULT_PF_DES("TRUE"),
    .PF_SWAP("FALSE"),
    .RUNBIT_FIX("FALSE"),
    .xlnx_ref_board("None"),
    .GTWIZ_IN_CORE(1),
    .GTCOM_IN_CORE(2),
    .INS_LOSS_PROFILE("Add-in_Card"),
    .FUNC_MODE(1),
    .PF1_ENABLED(0),
    .DMA_RESET_SOURCE_SEL(0),
    .PF1_BAR0_APERTURE_SIZE('H0A),
    .PF1_BAR0_CONTROL('H4),
    .PF1_BAR1_APERTURE_SIZE('H0A),
    .PF1_BAR1_CONTROL('H0),
    .PF1_BAR2_APERTURE_SIZE('H0A),
    .PF1_BAR2_CONTROL('H0),
    .PF1_BAR3_APERTURE_SIZE('H0A),
    .PF1_BAR3_CONTROL('H0),
    .PF1_BAR4_APERTURE_SIZE('H0A),
    .PF1_BAR4_CONTROL('H0),
    .PF1_BAR5_APERTURE_SIZE('H0A),
    .PF1_BAR5_CONTROL('H0),
    .PF1_EXPANSION_ROM_APERTURE_SIZE('H000),
    .PF1_EXPANSION_ROM_ENABLE("FALSE"),
    .PF1_PCIEBAR2AXIBAR_0('H0000000000000000),
    .PF1_PCIEBAR2AXIBAR_1('H0000000000000000),
    .PF1_PCIEBAR2AXIBAR_2('H0000000000000000),
    .PF1_PCIEBAR2AXIBAR_3('H0000000000000000),
    .PF1_PCIEBAR2AXIBAR_4('H0000000000000000),
    .PF1_PCIEBAR2AXIBAR_5('H0000000000000000),
    .PF1_PCIEBAR2AXIBAR_6('H0000000000000000),
    .C_MSIX_INT_TABLE_EN(1),
    .VU9P_TUL_EX("FALSE"),
    .PCIE_BLK_TYPE(0),
    .CCIX_ENABLE("FALSE"),
    .CCIX_DVSEC("FALSE"),
    .EXT_SYS_CLK_BUFG("FALSE"),
    .C_NUM_OF_SC(1),
    .USR_IRQ_EXDES("FALSE"),
    .AXI_VIP_IN_EXDES("FALSE"),
    .PIPE_DEBUG_EN("FALSE"),
    .XDMA_NON_INCREMENTAL_EXDES("FALSE"),
    .XDMA_ST_INFINITE_DESC_EXDES("FALSE"),
    .EXT_XVC_VSEC_ENABLE("FALSE"),
    .ACS_EXT_CAP_ENABLE("TRUE"),
    .EN_PCIE_DEBUG_PORTS("FALSE"),
    .MULTQ_EN(0),
    .DMA_MM(1),
    .DMA_ST(0),
    .C_PCIE_PFS_SUPPORTED(0),
    .C_SRIOV_EN(0),
    .BARLITE_EXT_PF0('H01),
    .BARLITE_EXT_PF1('H3F),
    .BARLITE_EXT_PF2('H00),
    .BARLITE_EXT_PF3('H00),
    .BARLITE_INT_PF0('H02),
    .BARLITE_INT_PF1('H00),
    .BARLITE_INT_PF2('H00),
    .BARLITE_INT_PF3('H00),
    .NUM_VFS_PF0(0),
    .NUM_VFS_PF1(0),
    .NUM_VFS_PF2(0),
    .NUM_VFS_PF3(0),
    .FIRSTVF_OFFSET_PF0(0),
    .FIRSTVF_OFFSET_PF1(0),
    .FIRSTVF_OFFSET_PF2(0),
    .FIRSTVF_OFFSET_PF3(0),
    .VF_BARLITE_EXT_PF0('H00),
    .VF_BARLITE_EXT_PF1('H00),
    .VF_BARLITE_EXT_PF2('H00),
    .VF_BARLITE_EXT_PF3('H00),
    .VF_BARLITE_INT_PF0('H01),
    .VF_BARLITE_INT_PF1('H01),
    .VF_BARLITE_INT_PF2('H01),
    .VF_BARLITE_INT_PF3('H01),
    .C_C2H_NUM_CHNL(1),
    .C_H2C_NUM_CHNL(1),
    .H2C_XDMA_CHNL('H0F),
    .C2H_XDMA_CHNL('H0F),
    .AXISTEN_IF_ENABLE_MSG_ROUTE('H00000),
    .ENABLE_MORE("FALSE"),
    .DISABLE_BRAM_PIPELINE("FALSE"),
    .DISABLE_EQ_SYNCHRONIZER("FALSE"),
    .C_ENABLE_RESOURCE_REDUCTION("FALSE"),
    .GEN4_EIEOS_0S7("TRUE"),
    .C_S_AXI_SUPPORTS_NARROW_BURST(0),
    .ENABLE_ATS_SWITCH("FALSE"),
    .C_ATS_SWITCH_UNIQUE_BDF(1),
    .C_LAST_CORE_CAP_ADDR('H100),
    .C_VSEC_CAP_ADDR('H128),
    .SOFT_RESET_EN("FALSE"),
    .INTERRUPT_OUT_WIDTH(1),
    .C_MSI_RX_PIN_EN(0),
    .C_MSIX_RX_PIN_EN(1),
    .C_INTX_RX_PIN_EN(1),
    .MSIX_RX_DECODE_EN("FALSE"),
    .PCIE_ID_IF("FALSE"),
    .TL_PF_ENABLE_REG(0),
    .AXSIZE_BYTE_ACCESS_EN("FALSE"),
    .SPLIT_DMA_SINGLE_PF("FALSE"),
    .RBAR_ENABLE("FALSE"),
    .C_SMMU_EN(0),
    .C_M_AXI_AWUSER_WIDTH(8),
    .C_M_AXI_ARUSER_WIDTH(8),
    .C_SLAVE_READ_64OS_EN(0)
  ) inst (
    .sys_clk(1'B0),
    .sys_clk_ce_out(),
    .sys_clk_gt(1'B0),
    .sys_rst_n(sys_rst_n),
    .dma_bridge_resetn(1'B1),
    .cfg_ltssm_state(),
    .user_lnk_up(),
    .pci_exp_txp(),
    .pci_exp_txn(),
    .pci_exp_rxp(16'B0),
    .pci_exp_rxn(16'B0),
    .cfg_subsys_vend_id(16'H10EE),
    .cfg_vend_id(16'H10EE),
    .cfg_dev_id_pf0(16'H903F),
    .cfg_dev_id_pf1(16'H9111),
    .cfg_dev_id_pf2(16'H9211),
    .cfg_dev_id_pf3(16'H9311),
    .cfg_rev_id_pf0(8'H00),
    .cfg_rev_id_pf1(8'H00),
    .cfg_rev_id_pf2(8'H00),
    .cfg_rev_id_pf3(8'H00),
    .cfg_subsys_id_pf0(16'H0007),
    .cfg_subsys_id_pf1(16'H0007),
    .cfg_subsys_id_pf2(16'H0007),
    .cfg_subsys_id_pf3(16'H0007),
    .axi_aclk(axi_aclk),
    .axi_aresetn(axi_aresetn),
    .axi_ctl_aclk(1'B0),
    .axi_ctl_aresetn(),
    .usr_irq_req(usr_irq_req),
    .usr_irq_function_number(usr_irq_function_number),
    .usr_irq_ack(usr_irq_ack),
    .msi_enable(),
    .msix_enable(),
    .msi_vector_width(),
    .m_axi_awready(m_axi_awready),
    .m_axi_wready(m_axi_wready),
    .m_axi_bid(m_axi_bid),
    .m_axi_bresp(m_axi_bresp),
    .m_axi_bvalid(m_axi_bvalid),
    .m_axi_arready(m_axi_arready),
    .m_axi_rid(m_axi_rid),
    .m_axi_rdata(m_axi_rdata),
    .m_axi_ruser(64'B0),
    .m_axi_rresp(m_axi_rresp),
    .m_axi_rlast(m_axi_rlast),
    .m_axi_rvalid(m_axi_rvalid),
    .m_axi_awid(m_axi_awid),
    .m_axi_awaddr(m_axi_awaddr),
    .m_axi_awlen(m_axi_awlen),
    .m_axi_awsize(m_axi_awsize),
    .m_axi_awburst(m_axi_awburst),
    .m_axi_awprot(m_axi_awprot),
    .m_axi_awvalid(m_axi_awvalid),
    .m_axi_awlock(m_axi_awlock),
    .m_axi_awcache(m_axi_awcache),
    .m_axi_wdata(m_axi_wdata),
    .m_axi_wuser(),
    .m_axi_wstrb(m_axi_wstrb),
    .m_axi_wlast(m_axi_wlast),
    .m_axi_wvalid(m_axi_wvalid),
    .m_axi_bready(m_axi_bready),
    .m_axi_arid(m_axi_arid),
    .m_axi_araddr(m_axi_araddr),
    .m_axi_arlen(m_axi_arlen),
    .m_axi_arsize(m_axi_arsize),
    .m_axi_arburst(m_axi_arburst),
    .m_axi_arprot(m_axi_arprot),
    .m_axi_arvalid(m_axi_arvalid),
    .m_axi_arlock(m_axi_arlock),
    .m_axi_arcache(m_axi_arcache),
    .m_axi_rready(m_axi_rready),
    .m_axil_awaddr(m_axil_awaddr),
    .m_axil_awuser(m_axil_awuser),
    .m_axil_awprot(m_axil_awprot),
    .m_axil_awvalid(m_axil_awvalid),
    .m_axil_awready(m_axil_awready),
    .m_axil_wdata(m_axil_wdata),
    .m_axil_wstrb(m_axil_wstrb),
    .m_axil_wvalid(m_axil_wvalid),
    .m_axil_wready(m_axil_wready),
    .m_axil_bvalid(m_axil_bvalid),
    .m_axil_bresp(m_axil_bresp),
    .m_axil_bready(m_axil_bready),
    .m_axil_araddr(m_axil_araddr),
    .m_axil_aruser(m_axil_aruser),
    .m_axil_arprot(m_axil_arprot),
    .m_axil_arvalid(m_axil_arvalid),
    .m_axil_arready(m_axil_arready),
    .m_axil_rdata(m_axil_rdata),
    .m_axil_rresp(m_axil_rresp),
    .m_axil_rvalid(m_axil_rvalid),
    .m_axil_rready(m_axil_rready),
    .cfg_mgmt_addr(19'B0),
    .cfg_mgmt_write(1'B0),
    .cfg_mgmt_write_data(32'B0),
    .cfg_mgmt_byte_enable(4'B0),
    .cfg_mgmt_read(1'B0),
    .cfg_mgmt_read_data(),
    .cfg_mgmt_read_write_done(),
    .cfg_mgmt_type1_cfg_reg_access(1'B0),
    .cfg_mgmt_addr_sd(),
    .cfg_mgmt_write_sd(),
    .cfg_mgmt_function_number_sd(),
    .cfg_mgmt_write_data_sd(),
    .cfg_mgmt_byte_enable_sd(),
    .cfg_mgmt_read_sd(),
    .cfg_mgmt_read_data_sd(32'B0),
    .cfg_mgmt_read_write_done_sd(1'B0),
    .cfg_mgmt_type1_cfg_reg_access_sd(),
    .drp_rdy(),
    .drp_do(),
    .drp_clk(1'B0),
    .drp_en(1'B0),
    .drp_we(1'B0),
    .drp_addr(11'B0),
    .drp_di(16'B0),
    .common_commands_in(26'B0),
    .pipe_rx_0_sigs(84'B0),
    .pipe_rx_1_sigs(84'B0),
    .pipe_rx_2_sigs(84'B0),
    .pipe_rx_3_sigs(84'B0),
    .pipe_rx_4_sigs(84'B0),
    .pipe_rx_5_sigs(84'B0),
    .pipe_rx_6_sigs(84'B0),
    .pipe_rx_7_sigs(84'B0),
    .pipe_rx_8_sigs(84'B0),
    .pipe_rx_9_sigs(84'B0),
    .pipe_rx_10_sigs(84'B0),
    .pipe_rx_11_sigs(84'B0),
    .pipe_rx_12_sigs(84'B0),
    .pipe_rx_13_sigs(84'B0),
    .pipe_rx_14_sigs(84'B0),
    .pipe_rx_15_sigs(84'B0),
    .common_commands_out(),
    .pipe_tx_0_sigs(),
    .pipe_tx_1_sigs(),
    .pipe_tx_2_sigs(),
    .pipe_tx_3_sigs(),
    .pipe_tx_4_sigs(),
    .pipe_tx_5_sigs(),
    .pipe_tx_6_sigs(),
    .pipe_tx_7_sigs(),
    .pipe_tx_8_sigs(),
    .pipe_tx_9_sigs(),
    .pipe_tx_10_sigs(),
    .pipe_tx_11_sigs(),
    .pipe_tx_12_sigs(),
    .pipe_tx_13_sigs(),
    .pipe_tx_14_sigs(),
    .pipe_tx_15_sigs(),
    .m_axib_awid(m_axib_awid),
    .m_axib_awaddr(m_axib_awaddr),
    .m_axib_awlen(m_axib_awlen),
    .m_axib_awuser(m_axib_awuser),
    .m_axib_awsize(m_axib_awsize),
    .m_axib_awburst(m_axib_awburst),
    .m_axib_awprot(m_axib_awprot),
    .m_axib_awvalid(m_axib_awvalid),
    .m_axib_awready(m_axib_awready),
    .m_axib_awlock(m_axib_awlock),
    .m_axib_awcache(m_axib_awcache),
    .m_axib_wdata(m_axib_wdata),
    .m_axib_wstrb(m_axib_wstrb),
    .m_axib_wlast(m_axib_wlast),
    .m_axib_wvalid(m_axib_wvalid),
    .m_axib_wready(m_axib_wready),
    .m_axib_wuser(),
    .m_axib_bid(m_axib_bid),
    .m_axib_bresp(m_axib_bresp),
    .m_axib_bvalid(m_axib_bvalid),
    .m_axib_bready(m_axib_bready),
    .m_axib_arid(m_axib_arid),
    .m_axib_araddr(m_axib_araddr),
    .m_axib_arlen(m_axib_arlen),
    .m_axib_aruser(m_axib_aruser),
    .m_axib_arsize(m_axib_arsize),
    .m_axib_arburst(m_axib_arburst),
    .m_axib_arprot(m_axib_arprot),
    .m_axib_arvalid(m_axib_arvalid),
    .m_axib_arready(m_axib_arready),
    .m_axib_arlock(m_axib_arlock),
    .m_axib_arcache(m_axib_arcache),
    .m_axib_rid(m_axib_rid),
    .m_axib_rdata(m_axib_rdata),
    .m_axib_ruser(64'B0),
    .m_axib_rresp(m_axib_rresp),
    .m_axib_rlast(m_axib_rlast),
    .m_axib_rvalid(m_axib_rvalid),
    .m_axib_rready(m_axib_rready),
    .s_axis_c2h_tdata_0(512'B0),
    .s_axis_c2h_tlast_0(1'B0),
    .s_axis_c2h_tvalid_0(1'B0),
    .s_axis_c2h_tready_0(),
    .s_axis_c2h_tuser_0(64'B0),
    .s_axis_c2h_tkeep_0(64'B0),
    .m_axis_h2c_tdata_0(),
    .m_axis_h2c_tlast_0(),
    .m_axis_h2c_tvalid_0(),
    .m_axis_h2c_tready_0(1'B0),
    .m_axis_h2c_tuser_0(),
    .m_axis_h2c_tkeep_0(),
    .s_axis_c2h_tdata_1(512'B0),
    .s_axis_c2h_tlast_1(1'B0),
    .s_axis_c2h_tvalid_1(1'B0),
    .s_axis_c2h_tready_1(),
    .s_axis_c2h_tuser_1(64'B0),
    .s_axis_c2h_tkeep_1(64'B0),
    .m_axis_h2c_tdata_1(),
    .m_axis_h2c_tlast_1(),
    .m_axis_h2c_tvalid_1(),
    .m_axis_h2c_tready_1(1'B0),
    .m_axis_h2c_tuser_1(),
    .m_axis_h2c_tkeep_1(),
    .s_axis_c2h_tdata_2(512'B0),
    .s_axis_c2h_tlast_2(1'B0),
    .s_axis_c2h_tvalid_2(1'B0),
    .s_axis_c2h_tready_2(),
    .s_axis_c2h_tuser_2(64'B0),
    .s_axis_c2h_tkeep_2(64'B0),
    .m_axis_h2c_tdata_2(),
    .m_axis_h2c_tlast_2(),
    .m_axis_h2c_tvalid_2(),
    .m_axis_h2c_tready_2(1'B0),
    .m_axis_h2c_tuser_2(),
    .m_axis_h2c_tkeep_2(),
    .s_axis_c2h_tdata_3(512'B0),
    .s_axis_c2h_tlast_3(1'B0),
    .s_axis_c2h_tvalid_3(1'B0),
    .s_axis_c2h_tready_3(),
    .s_axis_c2h_tuser_3(64'B0),
    .s_axis_c2h_tkeep_3(64'B0),
    .m_axis_h2c_tdata_3(),
    .m_axis_h2c_tlast_3(),
    .m_axis_h2c_tvalid_3(),
    .m_axis_h2c_tready_3(1'B0),
    .m_axis_h2c_tuser_3(),
    .m_axis_h2c_tkeep_3(),
    .s_axil_awaddr(32'B0),
    .s_axil_awprot(3'B0),
    .s_axil_awvalid(1'B0),
    .s_axil_awready(),
    .s_axil_wdata(32'B0),
    .s_axil_wstrb(4'B0),
    .s_axil_wvalid(1'B0),
    .s_axil_wready(),
    .s_axil_bvalid(),
    .s_axil_bresp(),
    .s_axil_bready(1'B0),
    .s_axil_araddr(32'B0),
    .s_axil_arprot(3'B0),
    .s_axil_arvalid(1'B0),
    .s_axil_arready(),
    .s_axil_rdata(),
    .s_axil_rresp(),
    .s_axil_rvalid(),
    .s_axil_rready(1'B0),
    .c2h_dsc_byp_ready_0(),
    .c2h_dsc_byp_src_addr_0(64'B0),
    .c2h_dsc_byp_dst_addr_0(64'B0),
    .c2h_dsc_byp_len_0(28'B0),
    .c2h_dsc_byp_ctl_0(16'B0),
    .c2h_dsc_byp_load_0(1'B0),
    .c2h_dsc_byp_ready_1(),
    .c2h_dsc_byp_src_addr_1(64'B0),
    .c2h_dsc_byp_dst_addr_1(64'B0),
    .c2h_dsc_byp_len_1(28'B0),
    .c2h_dsc_byp_ctl_1(16'B0),
    .c2h_dsc_byp_load_1(1'B0),
    .c2h_dsc_byp_ready_2(),
    .c2h_dsc_byp_src_addr_2(64'B0),
    .c2h_dsc_byp_dst_addr_2(64'B0),
    .c2h_dsc_byp_len_2(28'B0),
    .c2h_dsc_byp_ctl_2(16'B0),
    .c2h_dsc_byp_load_2(1'B0),
    .c2h_dsc_byp_ready_3(),
    .c2h_dsc_byp_src_addr_3(64'B0),
    .c2h_dsc_byp_dst_addr_3(64'B0),
    .c2h_dsc_byp_len_3(28'B0),
    .c2h_dsc_byp_ctl_3(16'B0),
    .c2h_dsc_byp_load_3(1'B0),
    .h2c_dsc_byp_ready_0(),
    .h2c_dsc_byp_src_addr_0(64'B0),
    .h2c_dsc_byp_dst_addr_0(64'B0),
    .h2c_dsc_byp_len_0(28'B0),
    .h2c_dsc_byp_ctl_0(16'B0),
    .h2c_dsc_byp_load_0(1'B0),
    .h2c_dsc_byp_ready_1(),
    .h2c_dsc_byp_src_addr_1(64'B0),
    .h2c_dsc_byp_dst_addr_1(64'B0),
    .h2c_dsc_byp_len_1(28'B0),
    .h2c_dsc_byp_ctl_1(16'B0),
    .h2c_dsc_byp_load_1(1'B0),
    .h2c_dsc_byp_ready_2(),
    .h2c_dsc_byp_src_addr_2(64'B0),
    .h2c_dsc_byp_dst_addr_2(64'B0),
    .h2c_dsc_byp_len_2(28'B0),
    .h2c_dsc_byp_ctl_2(16'B0),
    .h2c_dsc_byp_load_2(1'B0),
    .h2c_dsc_byp_ready_3(),
    .h2c_dsc_byp_src_addr_3(64'B0),
    .h2c_dsc_byp_dst_addr_3(64'B0),
    .h2c_dsc_byp_len_3(28'B0),
    .h2c_dsc_byp_ctl_3(16'B0),
    .h2c_dsc_byp_load_3(1'B0),
    .c2h_sts_0(),
    .h2c_sts_0(),
    .c2h_sts_1(),
    .h2c_sts_1(),
    .c2h_sts_2(),
    .h2c_sts_2(),
    .c2h_sts_3(),
    .h2c_sts_3(),
    .cfg_negotiated_width_o(),
    .cfg_current_speed_o(),
    .cfg_ltssm_state_o(),
    .pipe_txprbssel(3'B0),
    .pipe_rxprbssel(3'B0),
    .pipe_txprbsforceerr(1'B0),
    .pipe_rxprbscntreset(1'B0),
    .pipe_loopback(3'B0),
    .pipe_rxprbserr(),
    .pipe_txinhibit(16'B0),
    .pipe_rst_fsm(),
    .pipe_qrst_fsm(),
    .pipe_rate_fsm(),
    .pipe_sync_fsm_tx(),
    .pipe_sync_fsm_rx(),
    .pipe_drp_fsm(),
    .pipe_rst_idle(),
    .pipe_qrst_idle(),
    .pipe_rate_idle(),
    .pipe_eyescandataerror(),
    .pipe_rxstatus(),
    .pipe_dmonitorout(),
    .pipe_cpll_lock(),
    .pipe_qpll_lock(),
    .pipe_rxpmaresetdone(),
    .pipe_rxbufstatus(),
    .pipe_txphaligndone(),
    .pipe_txphinitdone(),
    .pipe_txdlysresetdone(),
    .pipe_rxphaligndone(),
    .pipe_rxdlysresetdone(),
    .pipe_rxsyncdone(),
    .pipe_rxdisperr(),
    .pipe_rxnotintable(),
    .pipe_rxcommadet(),
    .gt_ch_drp_rdy(),
    .pipe_debug_0(),
    .pipe_debug_1(),
    .pipe_debug_2(),
    .pipe_debug_3(),
    .pipe_debug_4(),
    .pipe_debug_5(),
    .pipe_debug_6(),
    .pipe_debug_7(),
    .pipe_debug_8(),
    .pipe_debug_9(),
    .pipe_debug(),
    .gt_pcieuserratedone(16'B0),
    .gt_loopback(48'B0),
    .gt_txprbsforceerr(16'B0),
    .gt_txinhibit(16'B0),
    .gt_txprbssel(64'B0),
    .gt_rxprbssel(64'B0),
    .gt_rxprbscntreset(16'B0),
    .gt_txelecidle(),
    .gt_txresetdone(),
    .gt_rxresetdone(),
    .gt_rxpmaresetdone(),
    .gt_txphaligndone(),
    .gt_txphinitdone(),
    .gt_txdlysresetdone(),
    .gt_rxphaligndone(),
    .gt_rxdlysresetdone(),
    .gt_rxsyncdone(),
    .gt_eyescandataerror(),
    .gt_rxprbserr(),
    .gt_dmonfiforeset(16'B0),
    .gt_dmonitorclk(16'B0),
    .gt_dmonitorout(),
    .gt_rxcommadet(),
    .gt_phystatus(),
    .gt_rxvalid(),
    .gt_rxcdrlock(),
    .gt_pcierateidle(),
    .gt_pcieuserratestart(),
    .gt_gtpowergood(),
    .gt_cplllock(),
    .gt_rxoutclk(),
    .gt_rxrecclkout(),
    .gt_qpll1lock(),
    .gt_rxstatus(),
    .gt_rxbufstatus(),
    .gt_bufgtdiv(),
    .phy_txeq_ctrl(),
    .phy_txeq_preset(),
    .phy_rst_fsm(),
    .phy_txeq_fsm(),
    .phy_rxeq_fsm(),
    .phy_rst_idle(),
    .phy_rrst_n(),
    .phy_prst_n(),
    .ext_ch_gt_drpen(16'B0),
    .ext_ch_gt_drpwe(16'B0),
    .ext_ch_gt_drpaddr(160'B0),
    .ext_ch_gt_drpdi(256'B0),
    .ext_ch_gt_drpclk(),
    .ext_ch_gt_drprdy(),
    .ext_ch_gt_drpdo(),
    .mcap_design_switch(),
    .mcap_eos_in(1'B0),
    .startup_cfgclk(),
    .startup_cfgmclk(),
    .startup_di(),
    .startup_eos(),
    .startup_preq(),
    .startup_do(4'B0),
    .startup_dts(4'B0),
    .startup_fcsbo(1'B0),
    .startup_fcsbts(1'B0),
    .startup_gsr(1'B0),
    .startup_gts(1'B0),
    .startup_keyclearb(1'B1),
    .startup_pack(1'B0),
    .startup_usrcclko(1'B0),
    .startup_usrcclkts(1'B1),
    .startup_usrdoneo(1'B0),
    .startup_usrdonets(1'B1),
    .cap_req(),
    .cap_gnt(1'B1),
    .cap_rel(1'B0),
    .atspri_s_axis_rq_tdata(512'B0),
    .atspri_s_axis_rq_tkeep(16'B0),
    .atspri_s_axis_rq_tuser(137'B0),
    .atspri_s_axis_rq_tlast(1'B0),
    .atspri_s_axis_rq_tvalid(1'B0),
    .atspri_s_axis_rq_tready(),
    .atspri_m_axis_cq_tdata(),
    .atspri_m_axis_cq_tkeep(),
    .atspri_m_axis_cq_tuser(),
    .atspri_m_axis_cq_tlast(),
    .atspri_m_axis_cq_tvalid(),
    .atspri_m_axis_cq_tready(1'B0),
    .cfg_status_ats_stu(),
    .cfg_status_ats_en(),
    .cfg_status_pr_en(),
    .cfg_status_pr_rst(),
    .cfg_status_pr_uprgi(),
    .cfg_status_set_uprgi(1'B0),
    .cfg_status_pr_rf(),
    .cfg_status_set_rf(1'B0),
    .cfg_status_set_s(1'B0),
    .cfg_status_clr_s(1'B0),
    .cfg_status_ost_pr_alloc(),
    .cfg_ext_read_received(),
    .cfg_ext_write_received(),
    .cfg_ext_register_number(),
    .cfg_ext_function_number(),
    .cfg_ext_write_data(),
    .cfg_ext_write_byte_enable(),
    .cfg_ext_read_data(32'B0),
    .cfg_ext_read_data_valid(1'B0),
    .m_axis_rq_tdata_out(),
    .m_axis_rq_tlast_out(),
    .m_axis_rq_tuser_out(),
    .m_axis_rq_tkeep_out(),
    .m_axis_rq_tready_out(),
    .m_axis_rq_tvalid_out(),
    .s_axis_rc_tdata_out(),
    .s_axis_rc_tuser_out(),
    .s_axis_rc_tlast_out(),
    .s_axis_rc_tkeep_out(),
    .s_axis_rc_tvalid_out(),
    .s_axis_rc_tready_out(),
    .s_axis_cq_tdata_out(),
    .s_axis_cq_tuser_out(),
    .s_axis_cq_tlast_out(),
    .s_axis_cq_tkeep_out(),
    .s_axis_cq_tvalid_out(),
    .s_axis_cq_tready_out(),
    .m_axis_cc_tdata_out(),
    .m_axis_cc_tuser_out(),
    .m_axis_cc_tlast_out(),
    .m_axis_cc_tkeep_out(),
    .m_axis_cc_tvalid_out(),
    .m_axis_cc_tready_out(),
    .pipe_pclk_in(1'B0),
    .pipe_rxusrclk_in(1'B0),
    .pipe_rxoutclk_in(16'B0),
    .pipe_dclk_in(1'B0),
    .pipe_userclk1_in(1'B0),
    .pipe_userclk2_in(1'B0),
    .pipe_oobclk_in(1'B0),
    .pipe_mmcm_lock_in(1'B1),
    .pipe_txoutclk_out(),
    .pipe_rxoutclk_out(),
    .pipe_mmcm_rst_n(1'B1),
    .pipe_pclk_sel_out(),
    .pipe_gen3_out(),
    .ext_qpll1refclk(),
    .ext_qpll1rate(),
    .ext_qpll1pd(),
    .ext_qpll1reset(),
    .ext_qpll1lock_out(3'B0),
    .ext_qpll1outclk_out(3'B0),
    .ext_qpll1outrefclk_out(3'B0),
    .int_qpll1lock_out(),
    .int_qpll1outrefclk_out(),
    .int_qpll1outclk_out(),
    .int_pclk_out_slave(),
    .int_pipe_rxusrclk_out(),
    .int_rxoutclk_out(),
    .int_dclk_out(),
    .int_userclk1_out(),
    .int_userclk2_out(),
    .int_oobclk_out(),
    .int_qplllock_out(),
    .int_qplloutclk_out(),
    .int_qplloutrefclk_out(),
    .int_pclk_sel_slave(16'B0),
    .qpll_drp_crscode(12'B0),
    .qpll_drp_fsm(18'B0),
    .qpll_drp_done(2'B0),
    .qpll_drp_reset(2'B0),
    .qpll_qplllock(2'B0),
    .qpll_qplloutclk(2'B0),
    .qpll_qplloutrefclk(2'B0),
    .qpll_qplld(),
    .qpll_qpllreset(),
    .qpll_drp_clk(),
    .qpll_drp_rst_n(),
    .qpll_drp_ovrd(),
    .qpll_drp_gen3(),
    .qpll_drp_start(),
    .gt_qpll0lock(),
    .gt_gen34_eios_det(),
    .gt_txoutclk(),
    .gt_txoutclkfabric(),
    .gt_rxoutclkfabric(),
    .gt_txoutclkpcs(),
    .gt_rxoutclkpcs(),
    .gt_txpmareset(16'B0),
    .gt_rxpmareset(16'B0),
    .gt_txpcsreset(16'B0),
    .gt_rxpcsreset(16'B0),
    .gt_rxbufreset(16'B0),
    .gt_rxcdrreset(16'B0),
    .gt_rxdfelpmreset(16'B0),
    .gt_txprogdivresetdone(),
    .gt_txpmaresetdone(),
    .gt_txsyncdone(),
    .gt_rxprbslocked(),
    .ext_usp_qpllxrefclk(),
    .ext_usp_qpllxrate(),
    .ext_usp_qpllxrcalenb(),
    .ext_usp_qpll0pd(),
    .ext_usp_qpll0reset(),
    .ext_usp_qpll0lock_out(4'B0),
    .ext_usp_qpll0outclk_out(4'B0),
    .ext_usp_qpll0outrefclk_out(4'B0),
    .int_usp_qpll0lock_out(),
    .int_usp_qpll0outrefclk_out(),
    .int_usp_qpll0outclk_out(),
    .ext_usp_qpll1pd(),
    .ext_usp_qpll1reset(),
    .ext_usp_qpll1lock_out(4'B0),
    .ext_usp_qpll1outclk_out(4'B0),
    .ext_usp_qpll1outrefclk_out(4'B0),
    .int_usp_qpll1lock_out(),
    .int_usp_qpll1outrefclk_out(),
    .int_usp_qpll1outclk_out(),
    .free_run_clock(1'B0),
    .interrupt_out(interrupt_out),
    .interrupt_out_msi_vec0to31(),
    .interrupt_out_msi_vec32to63(),
    .interrupt_out_msix_0(),
    .interrupt_out_msix_1(),
    .interrupt_out_msix_2(),
    .interrupt_out_msix_3(),
    .s_axib_awid(5'B0),
    .s_axib_awaddr(64'B0),
    .s_axib_awregion(4'B0),
    .s_axib_awlen(8'B0),
    .s_axib_awsize(3'B0),
    .s_axib_awburst(2'B0),
    .s_axib_awvalid(1'B0),
    .s_axib_wdata(512'B0),
    .s_axib_wstrb(64'B0),
    .s_axib_wlast(1'B0),
    .s_axib_wvalid(1'B0),
    .s_axib_wuser(64'B0),
    .s_axib_ruser(),
    .s_axib_bready(1'B0),
    .s_axib_arid(5'B0),
    .s_axib_araddr(64'B0),
    .s_axib_arregion(4'B0),
    .s_axib_arlen(8'B0),
    .s_axib_arsize(3'B0),
    .s_axib_arburst(2'B0),
    .s_axib_arvalid(1'B0),
    .s_axib_rready(1'B0),
    .s_axib_awready(),
    .s_axib_wready(),
    .s_axib_bid(),
    .s_axib_bresp(),
    .s_axib_bvalid(),
    .s_axib_arready(),
    .s_axib_rid(),
    .s_axib_rdata(),
    .s_axib_rresp(),
    .s_axib_rlast(),
    .s_axib_rvalid(),
    .cfg_function_status(),
    .cfg_max_read_req(),
    .cfg_max_payload(),
    .cfg_flr_in_process(),
    .cfg_flr_done(4'B0),
    .cfg_vf_flr_in_process(),
    .cfg_vf_flr_func_num(8'B0),
    .cfg_vf_flr_done(1'B0),
    .cfg_interrupt_msi_enable(),
    .gtrefclk01_usp_in(),
    .gtrefclk00_usp_in(),
    .pcierateqpll0_usp_in(),
    .pcierateqpll1_usp_in(),
    .qpll0pd_usp_in(),
    .qpll0reset_usp_in(),
    .qpll1pd_usp_in(),
    .qpll1reset_usp_in(),
    .qpll0lock_usp_out(4'B0),
    .qpll0outclk_usp_out(4'B0),
    .qpll0outrefclk_usp_out(4'B0),
    .qpll1lock_usp_out(4'B0),
    .qpll1outclk_usp_out(4'B0),
    .qpll1outrefclk_usp_out(4'B0),
    .qpll0freqlock_usp_in(),
    .qpll1freqlock_usp_in(),
    .pcierateqpllpd_usp_out(32'B0),
    .pcierateqpllreset_usp_out(32'B0),
    .gtwiz_reset_rx_done_usp_in(),
    .gtwiz_reset_tx_done_usp_in(),
    .gtwiz_userclk_rx_active_usp_in(),
    .gtwiz_userclk_tx_active_usp_in(),
    .loopback_usp_in(),
    .rxpd_usp_in(),
    .rxprbssel_usp_in(),
    .rxrate_usp_in(),
    .txctrl0_usp_in(),
    .txctrl1_usp_in(),
    .txctrl2_usp_in(),
    .txdata_usp_in(),
    .txdeemph_usp_in(),
    .txdiffctrl_usp_in(),
    .txprbssel_usp_in(),
    .txprecursor_usp_in(),
    .txrate_usp_in(),
    .txmaincursor_usp_in(),
    .txmargin_usp_in(),
    .txoutclksel_usp_in(),
    .txpd_usp_in(),
    .txpostcursor_usp_in(),
    .cpllfreqlock_usp_in(),
    .rcalenb_usp_in(),
    .cpllpd_usp_in(),
    .cpllreset_usp_in(),
    .dmonfiforeset_usp_in(),
    .dmonitorclk_usp_in(),
    .eyescanreset_usp_in(),
    .gtrefclk0_usp_in(),
    .gtrxreset_usp_in(),
    .gttxreset_usp_in(),
    .txpisopd_usp_in(),
    .pcieeqrxeqadaptdone_usp_in(),
    .pcierstidle_usp_in(),
    .pciersttxsyncstart_usp_in(),
    .pcieuserratedone_usp_in(),
    .resetovrd_usp_in(),
    .rx8b10ben_usp_in(),
    .rxbufreset_usp_in(),
    .rxcdrfreqreset_usp_in(),
    .rxcdrhold_usp_in(),
    .rxcdrreset_usp_in(),
    .rxcommadeten_usp_in(),
    .rxdfeagchold_usp_in(),
    .rxdfecfokhold_usp_in(),
    .rxdfekhhold_usp_in(),
    .rxdfelfhold_usp_in(),
    .rxdfelpmreset_usp_in(),
    .rxdfetap10hold_usp_in(),
    .rxdfetap11hold_usp_in(),
    .rxdfetap12hold_usp_in(),
    .rxdfetap13hold_usp_in(),
    .rxdfetap14hold_usp_in(),
    .rxdfetap15hold_usp_in(),
    .rxdfetap2hold_usp_in(),
    .rxdfetap3hold_usp_in(),
    .rxdfetap4hold_usp_in(),
    .rxdfetap5hold_usp_in(),
    .rxdfetap6hold_usp_in(),
    .rxdfetap7hold_usp_in(),
    .rxdfetap8hold_usp_in(),
    .rxdfetap9hold_usp_in(),
    .rxdfeuthold_usp_in(),
    .rxdfevphold_usp_in(),
    .rxlpmen_usp_in(),
    .rxlpmgchold_usp_in(),
    .rxlpmhfhold_usp_in(),
    .rxlpmlfhold_usp_in(),
    .rxlpmoshold_usp_in(),
    .rxmcommaalignen_usp_in(),
    .rxoshold_usp_in(),
    .rxpcommaalignen_usp_in(),
    .rxpcsreset_usp_in(),
    .rxpmareset_usp_in(),
    .rxpolarity_usp_in(),
    .rxprbscntreset_usp_in(),
    .rxprogdivreset_usp_in(),
    .rxslide_usp_in(),
    .rxtermination_usp_in(),
    .rxuserrdy_usp_in(),
    .rxusrclk2_usp_in(),
    .rxusrclk_usp_in(),
    .tx8b10ben_usp_in(),
    .txdetectrx_usp_in(),
    .txdlybypass_usp_in(),
    .txdlyen_usp_in(),
    .txdlyhold_usp_in(),
    .txdlyovrden_usp_in(),
    .txdlysreset_usp_in(),
    .txdlyupdown_usp_in(),
    .txelecidle_usp_in(),
    .txpcsreset_usp_in(),
    .txphalign_usp_in(),
    .txphalignen_usp_in(),
    .txphdlypd_usp_in(),
    .txphdlyreset_usp_in(),
    .txphdlytstclk_usp_in(),
    .txphinit_usp_in(),
    .txphovrden_usp_in(),
    .rxratemode_usp_in(),
    .txpmareset_usp_in(),
    .txprbsforceerr_usp_in(),
    .txprogdivreset_usp_in(),
    .txswing_usp_in(),
    .txsyncallin_usp_in(),
    .txsyncin_usp_in(),
    .txsyncmode_usp_in(),
    .txuserrdy_usp_in(),
    .txusrclk2_usp_in(),
    .txusrclk_usp_in(),
    .rxclkcorcnt_usp_out(32'B0),
    .bufgtcemask_usp_out(48'B0),
    .bufgtrstmask_usp_out(48'B0),
    .rxbufstatus_usp_out(48'B0),
    .rxstatus_usp_out(48'B0),
    .rxctrl2_usp_out(128'B0),
    .rxctrl3_usp_out(128'B0),
    .bufgtdiv_usp_out(144'B0),
    .dmonitorout_usp_out(256'B0),
    .rxctrl0_usp_out(256'B0),
    .rxctrl1_usp_out(256'B0),
    .rxdata_usp_out(2048'B0),
    .bufgtreset_usp_out(16'B0),
    .bufgtce_usp_out(16'B0),
    .cplllock_usp_out(16'B0),
    .gtpowergood_usp_out(16'B0),
    .pcierategen3_usp_out(16'B0),
    .pcierateidle_usp_out(16'B0),
    .pciesynctxsyncdone_usp_out(16'B0),
    .pcieusergen3rdy_usp_out(16'B0),
    .pcieuserphystatusrst_usp_out(16'B0),
    .pcieuserratestart_usp_out(16'B0),
    .phystatus_usp_out(16'B0),
    .rxbyteisaligned_usp_out(16'B0),
    .rxbyterealign_usp_out(16'B0),
    .rxcdrlock_usp_out(16'B0),
    .rxcommadet_usp_out(16'B0),
    .rxphaligndone_usp_out(16'B0),
    .rxpmaresetdone_usp_out(16'B0),
    .rxdlysresetdone_usp_out(16'B0),
    .rxelecidle_usp_out(16'B0),
    .rxoutclk_usp_out(16'B0),
    .rxoutclkfabric_usp_out(16'B0),
    .rxoutclkpcs_usp_out(16'B0),
    .rxprbserr_usp_out(16'B0),
    .rxprbslocked_usp_out(16'B0),
    .rxratedone_usp_out(16'B0),
    .rxrecclkout_usp_out(16'B0),
    .rxresetdone_usp_out(16'B0),
    .rxsyncdone_usp_out(16'B0),
    .txdlysresetdone_usp_out(16'B0),
    .rxvalid_usp_out(16'B0),
    .txoutclk_usp_out(16'B0),
    .txoutclkfabric_usp_out(16'B0),
    .txoutclkpcs_usp_out(16'B0),
    .txphaligndone_usp_out(16'B0),
    .txphinitdone_usp_out(16'B0),
    .txpmaresetdone_usp_out(16'B0),
    .txprgdivresetdone_usp_out(16'B0),
    .txresetdone_usp_out(16'B0),
    .txsyncdone_usp_out(16'B0),
    .txsyncout_usp_out(16'B0),
    .drpaddr_usp_in(),
    .drpen_usp_in(),
    .drpdi_usp_in(),
    .drpwe_usp_in(),
    .drprst_usp_in(),
    .ext_phy_clk_bufg_gt_ce(),
    .ext_phy_clk_bufg_gt_reset(),
    .ext_phy_clk_rst_idle(),
    .ext_phy_clk_txoutclk(),
    .ext_phy_clk_bufgtcemask(),
    .ext_phy_clk_gt_bufgtrstmask(),
    .ext_phy_clk_bufgtdiv(),
    .ext_phy_clk_pclk2_gt(1'B0),
    .ext_phy_clk_int_clock(1'B0),
    .ext_phy_clk_pclk(1'B0),
    .ext_phy_clk_phy_pclk2(1'B0),
    .ext_phy_clk_phy_coreclk(1'B0),
    .ext_phy_clk_phy_userclk(1'B0),
    .ext_phy_clk_phy_mcapclk(1'B0),
    .drpdo_usp_out(256'B0),
    .drprdy_usp_out(16'B0),
    .drpclk_usp_in(),
    .rxdlysresetdone_us_out(16'B0),
    .rxelecidle_us_out(16'B0),
    .rxoutclk_us_out(16'B0),
    .rxphaligndone_us_out(16'B0),
    .rxpmaresetdone_us_out(16'B0),
    .rxprbserr_us_out(16'B0),
    .rxprbslocked_us_out(16'B0),
    .rxprgdivresetdone_us_out(16'B0),
    .rxratedone_us_out(16'B0),
    .rxresetdone_us_out(16'B0),
    .rxsyncdone_us_out(16'B0),
    .rxvalid_us_out(16'B0),
    .txdlysresetdone_us_out(16'B0),
    .txoutclk_us_out(16'B0),
    .txphaligndone_us_out(16'B0),
    .txphinitdone_us_out(16'B0),
    .txpmaresetdone_us_out(16'B0),
    .txprgdivresetdone_us_out(16'B0),
    .txresetdone_us_out(16'B0),
    .txsyncout_us_out(16'B0),
    .txsyncdone_us_out(16'B0),
    .cplllock_us_out(16'B0),
    .eyescandataerror_us_out(16'B0),
    .gtpowergood_us_out(16'B0),
    .pcierategen3_us_out(16'B0),
    .pcierateidle_us_out(16'B0),
    .pciesynctxsyncdone_us_out(16'B0),
    .pcieusergen3rdy_us_out(16'B0),
    .pcieuserphystatusrst_us_out(16'B0),
    .pcieuserratestart_us_out(16'B0),
    .phystatus_us_out(16'B0),
    .rxbyteisaligned_us_out(16'B0),
    .rxbyterealign_us_out(16'B0),
    .rxcdrlock_us_out(16'B0),
    .rxcommadet_us_out(16'B0),
    .gthtxn_us_out(16'B0),
    .gthtxp_us_out(16'B0),
    .drprdy_us_out(16'B0),
    .pcierateqpllpd_us_out(32'B0),
    .pcierateqpllreset_us_out(32'B0),
    .rxclkcorcnt_us_out(32'B0),
    .bufgtce_us_out(48'B0),
    .bufgtcemask_us_out(48'B0),
    .bufgtreset_us_out(48'B0),
    .bufgtrstmask_us_out(48'B0),
    .rxbufstatus_us_out(48'B0),
    .rxstatus_us_out(48'B0),
    .rxctrl2_us_out(128'B0),
    .rxctrl3_us_out(128'B0),
    .bufgtdiv_us_out(144'B0),
    .pcsrsvdout_us_out(192'B0),
    .drpdo_us_out(256'B0),
    .rxctrl0_us_out(256'B0),
    .rxctrl1_us_out(256'B0),
    .dmonitorout_us_out(272'B0),
    .rxdata_us_out(2048'B0),
    .gtwiz_reset_rx_done_us_in(),
    .gtwiz_reset_tx_done_us_in(),
    .gtwiz_userclk_rx_active_us_in(),
    .gtwiz_userclk_tx_active_us_in(),
    .gtwiz_userclk_tx_reset_us_in(),
    .cpllpd_us_in(),
    .rxdfeagchold_us_in(),
    .rxdfecfokhold_us_in(),
    .rxdfelfhold_us_in(),
    .rxdfekhhold_us_in(),
    .rxdfetap2hold_us_in(),
    .rxdfetap3hold_us_in(),
    .rxdfetap4hold_us_in(),
    .rxdfetap5hold_us_in(),
    .rxdfetap6hold_us_in(),
    .rxdfetap7hold_us_in(),
    .rxdfetap8hold_us_in(),
    .rxdfetap9hold_us_in(),
    .rxdfetap10hold_us_in(),
    .rxdfetap11hold_us_in(),
    .rxdfetap12hold_us_in(),
    .rxdfetap13hold_us_in(),
    .rxdfetap14hold_us_in(),
    .rxdfetap15hold_us_in(),
    .rxdfeuthold_us_in(),
    .rxdfevphold_us_in(),
    .rxoshold_us_in(),
    .rxlpmgchold_us_in(),
    .rxlpmhfhold_us_in(),
    .rxlpmlfhold_us_in(),
    .rxlpmoshold_us_in(),
    .cpllreset_us_in(),
    .dmonfiforeset_us_in(),
    .dmonitorclk_us_in(),
    .drpclk_us_in(),
    .drpen_us_in(),
    .drpwe_us_in(),
    .eyescanreset_us_in(),
    .gthrxn_us_in(),
    .gthrxp_us_in(),
    .gtrefclk0_us_in(),
    .gtrxreset_us_in(),
    .gttxreset_us_in(),
    .pcieeqrxeqadaptdone_us_in(),
    .pcierstidle_us_in(),
    .pciersttxsyncstart_us_in(),
    .pcieuserratedone_us_in(),
    .rx8b10ben_us_in(),
    .rxbufreset_us_in(),
    .rxcdrhold_us_in(),
    .rxcommadeten_us_in(),
    .rxlpmen_us_in(),
    .rxmcommaalignen_us_in(),
    .rxpcommaalignen_us_in(),
    .rxpolarity_us_in(),
    .rxprbscntreset_us_in(),
    .rxprogdivreset_us_in(),
    .rxratemode_us_in(),
    .rxslide_us_in(),
    .rxuserrdy_us_in(),
    .rxusrclk2_us_in(),
    .rxusrclk_us_in(),
    .tx8b10ben_us_in(),
    .txdeemph_us_in(),
    .txdetectrx_us_in(),
    .txdlybypass_us_in(),
    .txdlyen_us_in(),
    .txdlyhold_us_in(),
    .txdlyovrden_us_in(),
    .txdlysreset_us_in(),
    .txdlyupdown_us_in(),
    .txelecidle_us_in(),
    .txinhibit_us_in(),
    .txphalign_us_in(),
    .txphalignen_us_in(),
    .txphdlypd_us_in(),
    .txphdlyreset_us_in(),
    .txphdlytstclk_us_in(),
    .txphinit_us_in(),
    .txphovrden_us_in(),
    .txprbsforceerr_us_in(),
    .txprogdivreset_us_in(),
    .txswing_us_in(),
    .txsyncallin_us_in(),
    .txsyncin_us_in(),
    .txsyncmode_us_in(),
    .txuserrdy_us_in(),
    .txusrclk2_us_in(),
    .txusrclk_us_in(),
    .rxpd_us_in(),
    .txpd_us_in(),
    .loopback_us_in(),
    .rxrate_us_in(),
    .txrate_us_in(),
    .txmargin_us_in(),
    .txoutclksel_us_in(),
    .rxprbssel_us_in(),
    .txdiffctrl_us_in(),
    .txprbssel_us_in(),
    .txprecursor_us_in(),
    .txpostcursor_us_in(),
    .txmaincursor_us_in(),
    .txctrl2_us_in(),
    .drpaddr_us_in(),
    .drpdi_us_in(),
    .pcsrsvdin_us_in(),
    .txctrl0_us_in(),
    .txctrl1_us_in(),
    .txdata_us_in(),
    .qpll0clk_us_in(),
    .qpll0refclk_us_in(),
    .qpll1clk_us_in(),
    .qpll1refclk_us_in(),
    .gtrefclk01_us_in(),
    .qpll1pd_us_in(),
    .qpll1reset_us_in(),
    .qpll1lock_us_out(3'B0),
    .qpll1outclk_us_out(3'B0),
    .qpll1outrefclk_us_out(3'B0),
    .qpllrsvd2_us_in(),
    .qpllrsvd3_us_in(),
    .cfg_interrupt_msix_enable(),
    .cfg_interrupt_msix_mask(),
    .cfg_interrupt_msix_data(32'B0),
    .cfg_interrupt_msix_address(64'B0),
    .cfg_interrupt_msix_int(1'B0),
    .cfg_interrupt_msi_sent(),
    .cfg_interrupt_msi_fail(),
    .cfg_interrupt_msix_sent(),
    .cfg_interrupt_msix_fail(),
    .rbar_bar_size_sd(7'B0),
    .rbar_function_number_sd(9'B0),
    .rbar_write_enable_bar0_sd(1'B0),
    .rbar_write_enable_bar1_sd(1'B0),
    .rbar_write_enable_bar2_sd(1'B0),
    .rbar_write_enable_bar3_sd(1'B0),
    .rbar_write_enable_bar4_sd(1'B0),
    .rbar_write_enable_bar5_sd(1'B0),
    .cfg_ltssm_state_sd(cfg_ltssm_state_sd),
    .user_lnk_up_sd(user_lnk_up_sd),
    .phy_rdy_out_sd(phy_rdy_out_sd),
    .cfg_function_status_sd(cfg_function_status_sd),
    .cfg_max_read_req_sd(cfg_max_read_req_sd),
    .cfg_max_payload_sd(cfg_max_payload_sd),
    .cfg_flr_done_sd(cfg_flr_done_sd),
    .cfg_flr_in_process_sd(cfg_flr_in_process_sd),
    .s_axis_rq_tdata_sd(s_axis_rq_tdata_sd),
    .s_axis_rq_tlast_sd(s_axis_rq_tlast_sd),
    .s_axis_rq_tuser_sd(s_axis_rq_tuser_sd),
    .s_axis_rq_tkeep_sd(s_axis_rq_tkeep_sd),
    .s_axis_rq_tready_sd(s_axis_rq_tready_sd),
    .s_axis_rq_tvalid_sd(s_axis_rq_tvalid_sd),
    .m_axis_rc_tdata_sd(m_axis_rc_tdata_sd),
    .m_axis_rc_tuser_sd(m_axis_rc_tuser_sd),
    .m_axis_rc_tlast_sd(m_axis_rc_tlast_sd),
    .m_axis_rc_tkeep_sd(m_axis_rc_tkeep_sd),
    .m_axis_rc_tvalid_sd(m_axis_rc_tvalid_sd),
    .m_axis_rc_tready_sd(m_axis_rc_tready_sd),
    .m_axis_cq_tdata_sd(m_axis_cq_tdata_sd),
    .m_axis_cq_tuser_sd(m_axis_cq_tuser_sd),
    .m_axis_cq_tlast_sd(m_axis_cq_tlast_sd),
    .m_axis_cq_tkeep_sd(m_axis_cq_tkeep_sd),
    .m_axis_cq_tvalid_sd(m_axis_cq_tvalid_sd),
    .m_axis_cq_tready_sd(m_axis_cq_tready_sd),
    .s_axis_cc_tdata_sd(s_axis_cc_tdata_sd),
    .s_axis_cc_tuser_sd(s_axis_cc_tuser_sd),
    .s_axis_cc_tlast_sd(s_axis_cc_tlast_sd),
    .s_axis_cc_tkeep_sd(s_axis_cc_tkeep_sd),
    .s_axis_cc_tvalid_sd(s_axis_cc_tvalid_sd),
    .s_axis_cc_tready_sd(s_axis_cc_tready_sd),
    .user_clk_sd(user_clk_sd),
    .user_reset_sd(user_reset_sd),
    .pcie_cq_np_req_sd(pcie_cq_np_req_sd),
    .pcie_cq_np_req_count_sd(pcie_cq_np_req_count_sd),
    .pcie_tfc_nph_av_sd(pcie_tfc_nph_av_sd),
    .pcie_tfc_npd_av_sd(pcie_tfc_npd_av_sd),
    .pcie_rq_seq_num_vld0_sd(pcie_rq_seq_num_vld0_sd),
    .pcie_rq_seq_num0_sd(pcie_rq_seq_num0_sd),
    .pcie_rq_seq_num_vld1_sd(pcie_rq_seq_num_vld1_sd),
    .pcie_rq_seq_num1_sd(pcie_rq_seq_num1_sd),
    .cfg_fc_nph_sd(cfg_fc_nph_sd),
    .cfg_fc_sel_sd(cfg_fc_sel_sd),
    .cfg_phy_link_down_sd(cfg_phy_link_down_sd),
    .cfg_phy_link_status_sd(cfg_phy_link_status_sd),
    .cfg_negotiated_width_sd(cfg_negotiated_width_sd),
    .cfg_current_speed_sd(cfg_current_speed_sd),
    .cfg_pl_status_change_sd(cfg_pl_status_change_sd),
    .cfg_hot_reset_out_sd(cfg_hot_reset_out_sd),
    .cfg_ds_port_number_sd(cfg_ds_port_number_sd),
    .cfg_ds_bus_number_sd(cfg_ds_bus_number_sd),
    .cfg_ds_device_number_sd(cfg_ds_device_number_sd),
    .cfg_ds_function_number_sd(cfg_ds_function_number_sd),
    .cfg_err_uncor_in_sd(cfg_err_uncor_in_sd),
    .cfg_err_cor_in_sd(cfg_err_cor_in_sd),
    .cfg_link_training_enable_sd(cfg_link_training_enable_sd),
    .cfg_vf_flr_in_process_sd(cfg_vf_flr_in_process_sd),
    .cfg_dsn_sd(cfg_dsn_sd),
    .cfg_interrupt_int_sd(cfg_interrupt_int_sd),
    .cfg_interrupt_sent_sd(cfg_interrupt_sent_sd),
    .cfg_interrupt_pending_sd(cfg_interrupt_pending_sd),
    .cfg_interrupt_msi_enable_sd(4'B0),
    .cfg_interrupt_msi_mask_update_sd(1'B0),
    .cfg_interrupt_msi_data_sd(32'B0),
    .cfg_interrupt_msi_int_sd(),
    .cfg_interrupt_msi_pending_status_sd(),
    .cfg_interrupt_msi_pending_status_data_enable_sd(),
    .cfg_interrupt_msi_pending_status_function_num_sd(),
    .cfg_interrupt_msi_attr_sd(),
    .cfg_interrupt_msi_tph_present_sd(),
    .cfg_interrupt_msi_tph_type_sd(),
    .cfg_interrupt_msi_tph_st_tag_sd(),
    .cfg_interrupt_msi_function_number_sd(cfg_interrupt_msi_function_number_sd),
    .cfg_interrupt_msi_sent_sd(cfg_interrupt_msi_sent_sd),
    .cfg_interrupt_msi_fail_sd(cfg_interrupt_msi_fail_sd),
    .cfg_interrupt_msix_int_sd(cfg_interrupt_msix_int_sd),
    .cfg_interrupt_msix_data_sd(cfg_interrupt_msix_data_sd),
    .cfg_interrupt_msix_address_sd(cfg_interrupt_msix_address_sd),
    .cfg_interrupt_msix_enable_sd(cfg_interrupt_msix_enable_sd),
    .cfg_interrupt_msix_mask_sd(cfg_interrupt_msix_mask_sd),
    .cfg_interrupt_msix_vf_enable_sd(cfg_interrupt_msix_vf_enable_sd),
    .cfg_interrupt_msix_vf_mask_sd(cfg_interrupt_msix_vf_mask_sd),
    .cfg_err_cor_out_sd(cfg_err_cor_out_sd),
    .cfg_err_nonfatal_out_sd(cfg_err_nonfatal_out_sd),
    .cfg_err_fatal_out_sd(cfg_err_fatal_out_sd),
    .cfg_local_error_out_sd(cfg_local_error_out_sd),
    .cfg_msg_received_sd(cfg_msg_received_sd),
    .cfg_msg_received_data_sd(cfg_msg_received_data_sd),
    .cfg_msg_received_type_sd(cfg_msg_received_type_sd),
    .cfg_msg_transmit_sd(cfg_msg_transmit_sd),
    .cfg_msg_transmit_type_sd(cfg_msg_transmit_type_sd),
    .cfg_msg_transmit_data_sd(cfg_msg_transmit_data_sd),
    .cfg_msg_transmit_done_sd(cfg_msg_transmit_done_sd),
    .rd_interrupt(),
    .wr_interrupt(),
    .ats_pri_en(),
    .gt_drp_clk(),
    .core_clk(),
    .cxs0_active_req_tx(1'B0),
    .cxs0_active_ack_tx(),
    .cxs0_deact_hint_tx(),
    .cxs0_valid_tx(1'B0),
    .cxs0_crdgnt_tx(),
    .cxs0_crdrtn_tx(1'B0),
    .cxs0_cntl_tx(36'B0),
    .cxs0_data_tx(512'B0),
    .cxs0_valid_chk_tx(1'B0),
    .cxs0_crdgnt_chk_tx(),
    .cxs0_crdrtn_chk_tx(1'B0),
    .cxs0_cntl_chk_tx(1'B0),
    .cxs0_data_chk_tx(64'B0),
    .cxs0_active_req_rx(),
    .cxs0_active_ack_rx(1'B0),
    .cxs0_deact_hint_rx(1'B0),
    .cxs0_valid_rx(),
    .cxs0_crdgnt_rx(1'B0),
    .cxs0_crdrtn_rx(),
    .cxs0_cntl_rx(),
    .cxs0_data_rx(),
    .cxs0_valid_chk_rx(),
    .cxs0_crdgnt_chk_rx(1'B0),
    .cxs0_crdrtn_chk_rx(),
    .cxs0_cntl_chk_rx(),
    .cxs0_data_chk_rx(),
    .pcie4_cxs0_active_req_tx_sd(),
    .pcie4_cxs0_active_ack_tx_sd(1'B0),
    .pcie4_cxs0_deact_hint_tx_sd(1'B0),
    .pcie4_cxs0_valid_tx_sd(),
    .pcie4_cxs0_crdgnt_tx_sd(1'B0),
    .pcie4_cxs0_crdrtn_tx_sd(),
    .pcie4_cxs0_cntl_tx_sd(),
    .pcie4_cxs0_data_tx_sd(),
    .pcie4_cxs0_valid_chk_tx_sd(),
    .pcie4_cxs0_crdgnt_chk_tx_sd(1'B0),
    .pcie4_cxs0_crdrtn_chk_tx_sd(),
    .pcie4_cxs0_cntl_chk_tx_sd(),
    .pcie4_cxs0_data_chk_tx_sd(),
    .pcie4_cxs0_active_req_rx_sd(1'B0),
    .pcie4_cxs0_active_ack_rx_sd(),
    .pcie4_cxs0_deact_hint_rx_sd(),
    .pcie4_cxs0_valid_rx_sd(1'B0),
    .pcie4_cxs0_crdgnt_rx_sd(),
    .pcie4_cxs0_crdrtn_rx_sd(1'B0),
    .pcie4_cxs0_cntl_rx_sd(36'B0),
    .pcie4_cxs0_data_rx_sd(512'B0),
    .pcie4_cxs0_valid_chk_rx_sd(1'B0),
    .pcie4_cxs0_crdgnt_chk_rx_sd(),
    .pcie4_cxs0_crdrtn_chk_rx_sd(1'B0),
    .pcie4_cxs0_cntl_chk_rx_sd(1'B0),
    .pcie4_cxs0_data_chk_rx_sd(64'B0),
    .ccix_optimized_tlp_tx_and_rx_enable_in(1'B0),
    .s_aclk(1'B0),
    .s_aresetn(1'B0),
    .s_axi_araddr(14'B0),
    .s_axi_arburst(2'B0),
    .s_axi_arcache(4'B0),
    .s_axi_arid(16'B0),
    .s_axi_arlen(8'B0),
    .s_axi_arlock(1'B0),
    .s_axi_arprot(3'B0),
    .s_axi_arqos(4'B0),
    .s_axi_arready(),
    .s_axi_arsize(3'B0),
    .s_axi_aruser(16'B0),
    .s_axi_arvalid(1'B0),
    .s_axi_awaddr(14'B0),
    .s_axi_awburst(2'B0),
    .s_axi_awcache(4'B0),
    .s_axi_awid(16'B0),
    .s_axi_awlen(8'B0),
    .s_axi_awlock(1'B0),
    .s_axi_awprot(3'B0),
    .s_axi_awqos(4'B0),
    .s_axi_awready(),
    .s_axi_awsize(3'B0),
    .s_axi_awuser(16'B0),
    .s_axi_awvalid(1'B0),
    .s_axi_bid(),
    .s_axi_bready(1'B0),
    .s_axi_bresp(),
    .s_axi_bvalid(),
    .s_axi_rdata(),
    .s_axi_rid(),
    .s_axi_rlast(),
    .s_axi_rready(1'B0),
    .s_axi_rresp(),
    .s_axi_rvalid(),
    .s_axi_wdata(32'B0),
    .s_axi_wlast(1'B0),
    .s_axi_wready(),
    .s_axi_wstrb(4'B0),
    .s_axi_wvalid(1'B0),
    .sc0_ats_s_axis_rq_tvalid(1'B0),
    .sc0_ats_s_axis_rq_tready(),
    .sc0_ats_s_axis_rq_tdata(512'B0),
    .sc0_ats_s_axis_rq_tkeep(64'B0),
    .sc0_ats_s_axis_rq_tlast(1'B0),
    .sc0_ats_s_axis_rq_tuser(137'B0),
    .sc0_ats_m_axis_rc_tvalid(),
    .sc0_ats_m_axis_rc_tready(1'B0),
    .sc0_ats_m_axis_rc_tdata(),
    .sc0_ats_m_axis_rc_tkeep(),
    .sc0_ats_m_axis_rc_tlast(),
    .sc0_ats_m_axis_rc_tuser(),
    .sc0_ats_s_axis_cc_tvalid(1'B0),
    .sc0_ats_s_axis_cc_tready(),
    .sc0_ats_s_axis_cc_tdata(512'B0),
    .sc0_ats_s_axis_cc_tkeep(64'B0),
    .sc0_ats_s_axis_cc_tlast(1'B0),
    .sc0_ats_s_axis_cc_tuser(81'B0),
    .sc0_ats_m_axis_cq_tvalid(),
    .sc0_ats_m_axis_cq_tready(1'B0),
    .sc0_ats_m_axis_cq_tdata(),
    .sc0_ats_m_axis_cq_tkeep(),
    .sc0_ats_m_axis_cq_tlast(),
    .sc0_ats_m_axis_cq_tuser(),
    .sc1_ats_s_axis_rq_tvalid(1'B0),
    .sc1_ats_s_axis_rq_tready(),
    .sc1_ats_s_axis_rq_tdata(512'B0),
    .sc1_ats_s_axis_rq_tkeep(64'B0),
    .sc1_ats_s_axis_rq_tlast(1'B0),
    .sc1_ats_s_axis_rq_tuser(137'B0),
    .sc1_ats_m_axis_rc_tvalid(),
    .sc1_ats_m_axis_rc_tready(1'B0),
    .sc1_ats_m_axis_rc_tdata(),
    .sc1_ats_m_axis_rc_tkeep(),
    .sc1_ats_m_axis_rc_tlast(),
    .sc1_ats_m_axis_rc_tuser(),
    .sc1_ats_s_axis_cc_tvalid(1'B0),
    .sc1_ats_s_axis_cc_tready(),
    .sc1_ats_s_axis_cc_tdata(512'B0),
    .sc1_ats_s_axis_cc_tkeep(64'B0),
    .sc1_ats_s_axis_cc_tlast(1'B0),
    .sc1_ats_s_axis_cc_tuser(81'B0),
    .sc1_ats_m_axis_cq_tvalid(),
    .sc1_ats_m_axis_cq_tready(1'B0),
    .sc1_ats_m_axis_cq_tdata(),
    .sc1_ats_m_axis_cq_tkeep(),
    .sc1_ats_m_axis_cq_tlast(),
    .sc1_ats_m_axis_cq_tuser(),
    .pipe_debug_ctl_in_tx0(32'B0),
    .pipe_debug_ctl_in_tx1(32'B0),
    .pipe_debug_ctl_in_rx0(32'B0),
    .pipe_debug_ctl_in_rx1(32'B0),
    .pipe_debug_ltssm_rec_spd_1(1'B0),
    .pipe_debug_ltssm_pol_act(1'B0),
    .pipe_debug_ctl_vec4(4'B0),
    .pipe_debug_mux_ctl(32'B0),
    .pipe_debug_debug_out_128_0(),
    .pipe_debug_debug_out_ext_16_0(),
    .pipe_debug_debug_out_128_1(),
    .pipe_debug_debug_out_ext_16_1(),
    .pipe_debug_debug_out_128_2(),
    .pipe_debug_debug_out_ext_16_2(),
    .pipe_debug_debug_out_128_3(),
    .pipe_debug_debug_out_ext_16_3(),
    .pipe_debug_inject_tx_status(),
    .pipe_debug_inject_rx_status()
  );
endmodule
