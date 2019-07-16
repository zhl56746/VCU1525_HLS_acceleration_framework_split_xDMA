//------------------------------------------------------------------------------
//  (c) Copyright 2013-2018 Xilinx, Inc. All rights reserved.
//
//  This file contains confidential and proprietary information
//  of Xilinx, Inc. and is protected under U.S. and
//  international copyright and other intellectual property
//  laws.
//
//  DISCLAIMER
//  This disclaimer is not a license and does not grant any
//  rights to the materials distributed herewith. Except as
//  otherwise provided in a valid license issued to you by
//  Xilinx, and to the maximum extent permitted by applicable
//  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
//  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
//  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
//  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
//  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//  (2) Xilinx shall not be liable (whether in contract or tort,
//  including negligence, or under any other theory of
//  liability) for any loss or damage of any kind or nature
//  related to, arising under or in connection with these
//  materials, including for any direct, or any indirect,
//  special, incidental, or consequential loss or damage
//  (including loss of data, profits, goodwill, or any type of
//  loss or damage suffered as a result of any action brought
//  by a third party) even if such damage or loss was
//  reasonably foreseeable or Xilinx had been advised of the
//  possibility of the same.
//
//  CRITICAL APPLICATIONS
//  Xilinx products are not designed or intended to be fail-
//  safe, or for use in any application requiring fail-safe
//  performance, such as life-support or safety devices or
//  systems, Class III medical devices, nuclear facilities,
//  applications related to the deployment of airbags, or any
//  other applications that could lead to death, personal
//  injury, or severe property or environmental damage
//  (individually and collectively, "Critical
//  Applications"). Customer assumes the sole risk and
//  liability of any use of Xilinx products in Critical
//  Applications, subject only to applicable laws and
//  regulations governing limitations on product liability.
//
//  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
//  PART OF THIS FILE AT ALL TIMES.
//------------------------------------------------------------------------------

// ***************************
// * DO NOT MODIFY THIS FILE *
// ***************************



`timescale 1ps/1ps
module PCIe_Bridge_ICAP_complex_pcie4_uscale_plus_0_0_gt_gtye4_common_wrapper (
  input                                   [0:0] GTYE4_COMMON_BGBYPASSB,
  input                                   [0:0] GTYE4_COMMON_BGMONITORENB,
  input                                   [0:0] GTYE4_COMMON_BGPDB,
  input                                   [4:0] GTYE4_COMMON_BGRCALOVRD,
  input                                   [0:0] GTYE4_COMMON_BGRCALOVRDENB,
  input                                  [15:0] GTYE4_COMMON_DRPADDR,
  input                                   [0:0] GTYE4_COMMON_DRPCLK,
  input                                  [15:0] GTYE4_COMMON_DRPDI,
  input                                   [0:0] GTYE4_COMMON_DRPEN,
  input                                   [0:0] GTYE4_COMMON_DRPWE,
  input                                   [0:0] GTYE4_COMMON_GTGREFCLK0,
  input                                   [0:0] GTYE4_COMMON_GTGREFCLK1,
  input                                   [0:0] GTYE4_COMMON_GTNORTHREFCLK00,
  input                                   [0:0] GTYE4_COMMON_GTNORTHREFCLK01,
  input                                   [0:0] GTYE4_COMMON_GTNORTHREFCLK10,
  input                                   [0:0] GTYE4_COMMON_GTNORTHREFCLK11,
  input                                   [0:0] GTYE4_COMMON_GTREFCLK00,
  input                                   [0:0] GTYE4_COMMON_GTREFCLK01,
  input                                   [0:0] GTYE4_COMMON_GTREFCLK10,
  input                                   [0:0] GTYE4_COMMON_GTREFCLK11,
  input                                   [0:0] GTYE4_COMMON_GTSOUTHREFCLK00,
  input                                   [0:0] GTYE4_COMMON_GTSOUTHREFCLK01,
  input                                   [0:0] GTYE4_COMMON_GTSOUTHREFCLK10,
  input                                   [0:0] GTYE4_COMMON_GTSOUTHREFCLK11,
  input                                   [2:0] GTYE4_COMMON_PCIERATEQPLL0,
  input                                   [2:0] GTYE4_COMMON_PCIERATEQPLL1,
  input                                   [7:0] GTYE4_COMMON_PMARSVD0,
  input                                   [7:0] GTYE4_COMMON_PMARSVD1,
  input                                   [0:0] GTYE4_COMMON_QPLL0CLKRSVD0,
  input                                   [0:0] GTYE4_COMMON_QPLL0CLKRSVD1,
  input                                   [7:0] GTYE4_COMMON_QPLL0FBDIV,
  input                                   [0:0] GTYE4_COMMON_QPLL0LOCKDETCLK,
  input                                   [0:0] GTYE4_COMMON_QPLL0LOCKEN,
  input                                   [0:0] GTYE4_COMMON_QPLL0PD,
  input                                   [2:0] GTYE4_COMMON_QPLL0REFCLKSEL,
  input                                   [0:0] GTYE4_COMMON_QPLL0RESET,
  input                                   [0:0] GTYE4_COMMON_QPLL1CLKRSVD0,
  input                                   [0:0] GTYE4_COMMON_QPLL1CLKRSVD1,
  input                                   [7:0] GTYE4_COMMON_QPLL1FBDIV,
  input                                   [0:0] GTYE4_COMMON_QPLL1LOCKDETCLK,
  input                                   [0:0] GTYE4_COMMON_QPLL1LOCKEN,
  input                                   [0:0] GTYE4_COMMON_QPLL1PD,
  input                                   [2:0] GTYE4_COMMON_QPLL1REFCLKSEL,
  input                                   [0:0] GTYE4_COMMON_QPLL1RESET,
  input                                   [7:0] GTYE4_COMMON_QPLLRSVD1,
  input                                   [4:0] GTYE4_COMMON_QPLLRSVD2,
  input                                   [4:0] GTYE4_COMMON_QPLLRSVD3,
  input                                   [7:0] GTYE4_COMMON_QPLLRSVD4,
  input                                   [0:0] GTYE4_COMMON_RCALENB,
  input                                  [24:0] GTYE4_COMMON_SDM0DATA,
  input                                   [0:0] GTYE4_COMMON_SDM0RESET,
  input                                   [0:0] GTYE4_COMMON_SDM0TOGGLE,
  input                                   [1:0] GTYE4_COMMON_SDM0WIDTH,
  input                                  [24:0] GTYE4_COMMON_SDM1DATA,
  input                                   [0:0] GTYE4_COMMON_SDM1RESET,
  input                                   [0:0] GTYE4_COMMON_SDM1TOGGLE,
  input                                   [1:0] GTYE4_COMMON_SDM1WIDTH,
  input                                   [0:0] GTYE4_COMMON_UBCFGSTREAMEN,
  input                                  [15:0] GTYE4_COMMON_UBDO,
  input                                   [0:0] GTYE4_COMMON_UBDRDY,
  input                                   [0:0] GTYE4_COMMON_UBENABLE,
  input                                   [1:0] GTYE4_COMMON_UBGPI,
  input                                   [1:0] GTYE4_COMMON_UBINTR,
  input                                   [0:0] GTYE4_COMMON_UBIOLMBRST,
  input                                   [0:0] GTYE4_COMMON_UBMBRST,
  input                                   [0:0] GTYE4_COMMON_UBMDMCAPTURE,
  input                                   [0:0] GTYE4_COMMON_UBMDMDBGRST,
  input                                   [0:0] GTYE4_COMMON_UBMDMDBGUPDATE,
  input                                   [3:0] GTYE4_COMMON_UBMDMREGEN,
  input                                   [0:0] GTYE4_COMMON_UBMDMSHIFT,
  input                                   [0:0] GTYE4_COMMON_UBMDMSYSRST,
  input                                   [0:0] GTYE4_COMMON_UBMDMTCK,
  input                                   [0:0] GTYE4_COMMON_UBMDMTDI,

  output                                 [15:0] GTYE4_COMMON_DRPDO,
  output                                  [0:0] GTYE4_COMMON_DRPRDY,
  output                                  [7:0] GTYE4_COMMON_PMARSVDOUT0,
  output                                  [7:0] GTYE4_COMMON_PMARSVDOUT1,
  output                                  [0:0] GTYE4_COMMON_QPLL0FBCLKLOST,
  output                                  [0:0] GTYE4_COMMON_QPLL0LOCK,
  output                                  [0:0] GTYE4_COMMON_QPLL0OUTCLK,
  output                                  [0:0] GTYE4_COMMON_QPLL0OUTREFCLK,
  output                                  [0:0] GTYE4_COMMON_QPLL0REFCLKLOST,
  output                                  [0:0] GTYE4_COMMON_QPLL1FBCLKLOST,
  output                                  [0:0] GTYE4_COMMON_QPLL1LOCK,
  output                                  [0:0] GTYE4_COMMON_QPLL1OUTCLK,
  output                                  [0:0] GTYE4_COMMON_QPLL1OUTREFCLK,
  output                                  [0:0] GTYE4_COMMON_QPLL1REFCLKLOST,
  output                                  [7:0] GTYE4_COMMON_QPLLDMONITOR0,
  output                                  [7:0] GTYE4_COMMON_QPLLDMONITOR1,
  output                                  [0:0] GTYE4_COMMON_REFCLKOUTMONITOR0,
  output                                  [0:0] GTYE4_COMMON_REFCLKOUTMONITOR1,
  output                                  [1:0] GTYE4_COMMON_RXRECCLK0SEL,
  output                                  [1:0] GTYE4_COMMON_RXRECCLK1SEL,
  output                                  [3:0] GTYE4_COMMON_SDM0FINALOUT,
  output                                 [14:0] GTYE4_COMMON_SDM0TESTDATA,
  output                                  [3:0] GTYE4_COMMON_SDM1FINALOUT,
  output                                 [14:0] GTYE4_COMMON_SDM1TESTDATA,
  output                                 [15:0] GTYE4_COMMON_UBDADDR,
  output                                  [0:0] GTYE4_COMMON_UBDEN,
  output                                 [15:0] GTYE4_COMMON_UBDI,
  output                                  [0:0] GTYE4_COMMON_UBDWE,
  output                                  [0:0] GTYE4_COMMON_UBMDMTDO,
  output                                  [0:0] GTYE4_COMMON_UBRSVDOUT,
  output                                  [0:0] GTYE4_COMMON_UBTXUART
);



gtwizard_ultrascale_v1_7_6_gtye4_common #(
  .GTYE4_COMMON_AEN_QPLL0_FBDIV                 (1'b1),
  .GTYE4_COMMON_AEN_QPLL1_FBDIV                 (1'b1),
  .GTYE4_COMMON_AEN_SDM0TOGGLE                  (1'b0),
  .GTYE4_COMMON_AEN_SDM1TOGGLE                  (1'b0),
  .GTYE4_COMMON_A_SDM0TOGGLE                    (1'b0),
  .GTYE4_COMMON_A_SDM1DATA_HIGH                 (9'b000000000),
  .GTYE4_COMMON_A_SDM1DATA_LOW                  (16'b0000000000000000),
  .GTYE4_COMMON_A_SDM1TOGGLE                    (1'b0),
  .GTYE4_COMMON_BGBYPASSB_TIE_EN                (1'b0),
  .GTYE4_COMMON_BGBYPASSB_VAL                   (1'b1),
  .GTYE4_COMMON_BGMONITORENB_TIE_EN             (1'b0),
  .GTYE4_COMMON_BGMONITORENB_VAL                (1'b1),
  .GTYE4_COMMON_BGPDB_TIE_EN                    (1'b0),
  .GTYE4_COMMON_BGPDB_VAL                       (1'b1),
  .GTYE4_COMMON_BGRCALOVRDENB_TIE_EN            (1'b0),
  .GTYE4_COMMON_BGRCALOVRDENB_VAL               (1'b1),
  .GTYE4_COMMON_BGRCALOVRD_TIE_EN               (1'b0),
  .GTYE4_COMMON_BGRCALOVRD_VAL                  (5'b10000),
  .GTYE4_COMMON_BIAS_CFG0                       (16'b0000000000110000),
  .GTYE4_COMMON_BIAS_CFG1                       (16'b0000000000000000),
  .GTYE4_COMMON_BIAS_CFG2                       (16'b0011010100100100),
  .GTYE4_COMMON_BIAS_CFG3                       (16'b0000000001000001),
  .GTYE4_COMMON_BIAS_CFG4                       (16'b0000000000010000),
  .GTYE4_COMMON_BIAS_CFG_RSVD                   (16'b0000000000000000),
  .GTYE4_COMMON_COMMON_CFG0                     (16'b0000000000000000),
  .GTYE4_COMMON_COMMON_CFG1                     (16'b0000000000000000),
  .GTYE4_COMMON_DRPADDR_TIE_EN                  (1'b0),
  .GTYE4_COMMON_DRPADDR_VAL                     (16'b0000000000000000),
  .GTYE4_COMMON_DRPCLK_TIE_EN                   (1'b0),
  .GTYE4_COMMON_DRPCLK_VAL                      (1'b0),
  .GTYE4_COMMON_DRPDI_TIE_EN                    (1'b0),
  .GTYE4_COMMON_DRPDI_VAL                       (16'b0000000000000000),
  .GTYE4_COMMON_DRPEN_TIE_EN                    (1'b0),
  .GTYE4_COMMON_DRPEN_VAL                       (1'b0),
  .GTYE4_COMMON_DRPWE_TIE_EN                    (1'b0),
  .GTYE4_COMMON_DRPWE_VAL                       (1'b0),
  .GTYE4_COMMON_GTGREFCLK0_TIE_EN               (1'b0),
  .GTYE4_COMMON_GTGREFCLK0_VAL                  (1'b0),
  .GTYE4_COMMON_GTGREFCLK1_TIE_EN               (1'b0),
  .GTYE4_COMMON_GTGREFCLK1_VAL                  (1'b0),
  .GTYE4_COMMON_GTNORTHREFCLK00_TIE_EN          (1'b0),
  .GTYE4_COMMON_GTNORTHREFCLK00_VAL             (1'b0),
  .GTYE4_COMMON_GTNORTHREFCLK01_TIE_EN          (1'b0),
  .GTYE4_COMMON_GTNORTHREFCLK01_VAL             (1'b0),
  .GTYE4_COMMON_GTNORTHREFCLK10_TIE_EN          (1'b0),
  .GTYE4_COMMON_GTNORTHREFCLK10_VAL             (1'b0),
  .GTYE4_COMMON_GTNORTHREFCLK11_TIE_EN          (1'b0),
  .GTYE4_COMMON_GTNORTHREFCLK11_VAL             (1'b0),
  .GTYE4_COMMON_GTREFCLK00_TIE_EN               (1'b0),
  .GTYE4_COMMON_GTREFCLK00_VAL                  (1'b0),
  .GTYE4_COMMON_GTREFCLK01_TIE_EN               (1'b0),
  .GTYE4_COMMON_GTREFCLK01_VAL                  (1'b0),
  .GTYE4_COMMON_GTREFCLK10_TIE_EN               (1'b0),
  .GTYE4_COMMON_GTREFCLK10_VAL                  (1'b0),
  .GTYE4_COMMON_GTREFCLK11_TIE_EN               (1'b0),
  .GTYE4_COMMON_GTREFCLK11_VAL                  (1'b0),
  .GTYE4_COMMON_GTSOUTHREFCLK00_TIE_EN          (1'b0),
  .GTYE4_COMMON_GTSOUTHREFCLK00_VAL             (1'b0),
  .GTYE4_COMMON_GTSOUTHREFCLK01_TIE_EN          (1'b0),
  .GTYE4_COMMON_GTSOUTHREFCLK01_VAL             (1'b0),
  .GTYE4_COMMON_GTSOUTHREFCLK10_TIE_EN          (1'b0),
  .GTYE4_COMMON_GTSOUTHREFCLK10_VAL             (1'b0),
  .GTYE4_COMMON_GTSOUTHREFCLK11_TIE_EN          (1'b0),
  .GTYE4_COMMON_GTSOUTHREFCLK11_VAL             (1'b0),
  .GTYE4_COMMON_PCIERATEQPLL0_TIE_EN            (1'b0),
  .GTYE4_COMMON_PCIERATEQPLL0_VAL               (3'b000),
  .GTYE4_COMMON_PCIERATEQPLL1_TIE_EN            (1'b0),
  .GTYE4_COMMON_PCIERATEQPLL1_VAL               (3'b000),
  .GTYE4_COMMON_PMARSVD0_TIE_EN                 (1'b0),
  .GTYE4_COMMON_PMARSVD0_VAL                    (8'b00000000),
  .GTYE4_COMMON_PMARSVD1_TIE_EN                 (1'b0),
  .GTYE4_COMMON_PMARSVD1_VAL                    (8'b00000000),
  .GTYE4_COMMON_POR_CFG                         (16'b0000000000000000),
  .GTYE4_COMMON_PPF0_CFG                        (16'b0000011000000000),
  .GTYE4_COMMON_PPF1_CFG                        (16'b0000010000000000),
  .GTYE4_COMMON_QPLL0CLKOUT_RATE                ("HALF"),
  .GTYE4_COMMON_QPLL0CLKRSVD0_TIE_EN            (1'b0),
  .GTYE4_COMMON_QPLL0CLKRSVD0_VAL               (1'b0),
  .GTYE4_COMMON_QPLL0CLKRSVD1_TIE_EN            (1'b0),
  .GTYE4_COMMON_QPLL0CLKRSVD1_VAL               (1'b0),
  .GTYE4_COMMON_QPLL0FBDIV_TIE_EN               (1'b0),
  .GTYE4_COMMON_QPLL0FBDIV_VAL                  (8'b00000000),
  .GTYE4_COMMON_QPLL0LOCKDETCLK_TIE_EN          (1'b0),
  .GTYE4_COMMON_QPLL0LOCKDETCLK_VAL             (1'b0),
  .GTYE4_COMMON_QPLL0LOCKEN_TIE_EN              (1'b0),
  .GTYE4_COMMON_QPLL0LOCKEN_VAL                 (1'b0),
  .GTYE4_COMMON_QPLL0PD_TIE_EN                  (1'b0),
  .GTYE4_COMMON_QPLL0PD_VAL                     (1'b1),
  .GTYE4_COMMON_QPLL0REFCLKSEL_TIE_EN           (1'b0),
  .GTYE4_COMMON_QPLL0REFCLKSEL_VAL              (3'b001),
  .GTYE4_COMMON_QPLL0RESET_TIE_EN               (1'b0),
  .GTYE4_COMMON_QPLL0RESET_VAL                  (1'b1),
  .GTYE4_COMMON_QPLL0_CFG0                      (16'b0011001100011000),
  .GTYE4_COMMON_QPLL0_CFG1                      (16'b1101000000111000),
  .GTYE4_COMMON_QPLL0_CFG1_G3                   (16'b1101000000111000),
  .GTYE4_COMMON_QPLL0_CFG2                      (16'b1000011111000000),
  .GTYE4_COMMON_QPLL0_CFG2_G3                   (16'b1000011111000000),
  .GTYE4_COMMON_QPLL0_CFG3                      (16'b0000000100100000),
  .GTYE4_COMMON_QPLL0_CFG4                      (16'b0000000000000010),
  .GTYE4_COMMON_QPLL0_CP                        (10'b1111111111),
  .GTYE4_COMMON_QPLL0_CP_G3                     (10'b0000001111),
  .GTYE4_COMMON_QPLL0_FBDIV                     (100),
  .GTYE4_COMMON_QPLL0_FBDIV_G3                  (160),
  .GTYE4_COMMON_QPLL0_INIT_CFG0                 (16'b0000001010110010),
  .GTYE4_COMMON_QPLL0_INIT_CFG1                 (8'b00000000),
  .GTYE4_COMMON_QPLL0_LOCK_CFG                  (16'b0000010111101000),
  .GTYE4_COMMON_QPLL0_LOCK_CFG_G3               (16'b0000010111101000),
  .GTYE4_COMMON_QPLL0_LPF                       (10'b0111010100),
  .GTYE4_COMMON_QPLL0_LPF_G3                    (10'b0111010101),
  .GTYE4_COMMON_QPLL0_PCI_EN                    (1'b1),
  .GTYE4_COMMON_QPLL0_RATE_SW_USE_DRP           (1'b0),
  .GTYE4_COMMON_QPLL0_REFCLK_DIV                (1),
  .GTYE4_COMMON_QPLL0_SDM_CFG0                  (16'b0000000010000000),
  .GTYE4_COMMON_QPLL0_SDM_CFG1                  (16'b0000000000000000),
  .GTYE4_COMMON_QPLL0_SDM_CFG2                  (16'b0000000000000000),
  .GTYE4_COMMON_QPLL1CLKOUT_RATE                ("HALF"),
  .GTYE4_COMMON_QPLL1CLKRSVD0_TIE_EN            (1'b0),
  .GTYE4_COMMON_QPLL1CLKRSVD0_VAL               (1'b0),
  .GTYE4_COMMON_QPLL1CLKRSVD1_TIE_EN            (1'b0),
  .GTYE4_COMMON_QPLL1CLKRSVD1_VAL               (1'b0),
  .GTYE4_COMMON_QPLL1FBDIV_TIE_EN               (1'b0),
  .GTYE4_COMMON_QPLL1FBDIV_VAL                  (8'b00000000),
  .GTYE4_COMMON_QPLL1LOCKDETCLK_TIE_EN          (1'b0),
  .GTYE4_COMMON_QPLL1LOCKDETCLK_VAL             (1'b0),
  .GTYE4_COMMON_QPLL1LOCKEN_TIE_EN              (1'b0),
  .GTYE4_COMMON_QPLL1LOCKEN_VAL                 (1'b1),
  .GTYE4_COMMON_QPLL1PD_TIE_EN                  (1'b0),
  .GTYE4_COMMON_QPLL1PD_VAL                     (1'b0),
  .GTYE4_COMMON_QPLL1REFCLKSEL_TIE_EN           (1'b0),
  .GTYE4_COMMON_QPLL1REFCLKSEL_VAL              (3'b001),
  .GTYE4_COMMON_QPLL1RESET_TIE_EN               (1'b0),
  .GTYE4_COMMON_QPLL1RESET_VAL                  (1'b0),
  .GTYE4_COMMON_QPLL1_CFG0                      (16'b0011001100011000),
  .GTYE4_COMMON_QPLL1_CFG1                      (16'b1101000000111000),
  .GTYE4_COMMON_QPLL1_CFG1_G3                   (16'b1101000000111000),
  .GTYE4_COMMON_QPLL1_CFG2                      (16'b0000111111000011),
  .GTYE4_COMMON_QPLL1_CFG2_G3                   (16'b0000111111000011),
  .GTYE4_COMMON_QPLL1_CFG3                      (16'b0000000100100000),
  .GTYE4_COMMON_QPLL1_CFG4                      (16'b0000000000000001),
  .GTYE4_COMMON_QPLL1_CP                        (10'b1111111111),
  .GTYE4_COMMON_QPLL1_CP_G3                     (10'b0001111111),
  .GTYE4_COMMON_QPLL1_FBDIV                     (100),
  .GTYE4_COMMON_QPLL1_FBDIV_G3                  (80),
  .GTYE4_COMMON_QPLL1_INIT_CFG0                 (16'b0000001010110010),
  .GTYE4_COMMON_QPLL1_INIT_CFG1                 (8'b00000000),
  .GTYE4_COMMON_QPLL1_LOCK_CFG                  (16'b0000000111101000),
  .GTYE4_COMMON_QPLL1_LOCK_CFG_G3               (16'b0000010111101000),
  .GTYE4_COMMON_QPLL1_LPF                       (10'b0111010100),
  .GTYE4_COMMON_QPLL1_LPF_G3                    (10'b0111010100),
  .GTYE4_COMMON_QPLL1_PCI_EN                    (1'b1),
  .GTYE4_COMMON_QPLL1_RATE_SW_USE_DRP           (1'b0),
  .GTYE4_COMMON_QPLL1_REFCLK_DIV                (1),
  .GTYE4_COMMON_QPLL1_SDM_CFG0                  (16'b0000000010000000),
  .GTYE4_COMMON_QPLL1_SDM_CFG1                  (16'b0000000000000000),
  .GTYE4_COMMON_QPLL1_SDM_CFG2                  (16'b0000000000000000),
  .GTYE4_COMMON_QPLLRSVD1_TIE_EN                (1'b0),
  .GTYE4_COMMON_QPLLRSVD1_VAL                   (8'b00000000),
  .GTYE4_COMMON_QPLLRSVD2_TIE_EN                (1'b0),
  .GTYE4_COMMON_QPLLRSVD2_VAL                   (5'b00000),
  .GTYE4_COMMON_QPLLRSVD3_TIE_EN                (1'b0),
  .GTYE4_COMMON_QPLLRSVD3_VAL                   (5'b00000),
  .GTYE4_COMMON_QPLLRSVD4_TIE_EN                (1'b0),
  .GTYE4_COMMON_QPLLRSVD4_VAL                   (8'b00000000),
  .GTYE4_COMMON_RCALENB_TIE_EN                  (1'b0),
  .GTYE4_COMMON_RCALENB_VAL                     (1'b1),
  .GTYE4_COMMON_RSVD_ATTR0                      (16'b0000000000000000),
  .GTYE4_COMMON_RSVD_ATTR1                      (16'b0000000000000000),
  .GTYE4_COMMON_RSVD_ATTR2                      (16'b0000000000000000),
  .GTYE4_COMMON_RSVD_ATTR3                      (16'b0000000000000000),
  .GTYE4_COMMON_RXRECCLKOUT0_SEL                (2'b00),
  .GTYE4_COMMON_RXRECCLKOUT1_SEL                (2'b00),
  .GTYE4_COMMON_SARC_ENB                        (1'b0),
  .GTYE4_COMMON_SARC_SEL                        (1'b0),
  .GTYE4_COMMON_SDM0DATA_TIE_EN                 (1'b0),
  .GTYE4_COMMON_SDM0DATA_VAL                    (25'b0000000000000000000000000),
  .GTYE4_COMMON_SDM0INITSEED0_0                 (16'b0000000100010001),
  .GTYE4_COMMON_SDM0INITSEED0_1                 (9'b000010001),
  .GTYE4_COMMON_SDM0RESET_TIE_EN                (1'b0),
  .GTYE4_COMMON_SDM0RESET_VAL                   (1'b0),
  .GTYE4_COMMON_SDM0TOGGLE_TIE_EN               (1'b0),
  .GTYE4_COMMON_SDM0TOGGLE_VAL                  (1'b0),
  .GTYE4_COMMON_SDM0WIDTH_TIE_EN                (1'b0),
  .GTYE4_COMMON_SDM0WIDTH_VAL                   (2'b00),
  .GTYE4_COMMON_SDM1DATA_TIE_EN                 (1'b0),
  .GTYE4_COMMON_SDM1DATA_VAL                    (25'b0000000000000000000000000),
  .GTYE4_COMMON_SDM1INITSEED0_0                 (16'b0000000100010001),
  .GTYE4_COMMON_SDM1INITSEED0_1                 (9'b000010001),
  .GTYE4_COMMON_SDM1RESET_TIE_EN                (1'b0),
  .GTYE4_COMMON_SDM1RESET_VAL                   (1'b0),
  .GTYE4_COMMON_SDM1TOGGLE_TIE_EN               (1'b0),
  .GTYE4_COMMON_SDM1TOGGLE_VAL                  (1'b0),
  .GTYE4_COMMON_SDM1WIDTH_TIE_EN                (1'b0),
  .GTYE4_COMMON_SDM1WIDTH_VAL                   (2'b00),
  .GTYE4_COMMON_SIM_DEVICE                      ("ULTRASCALE_PLUS"),
  .GTYE4_COMMON_SIM_MODE                        ("FAST"),
  .GTYE4_COMMON_SIM_RESET_SPEEDUP               ("TRUE"),
  .GTYE4_COMMON_UBCFGSTREAMEN_TIE_EN            (1'b0),
  .GTYE4_COMMON_UBCFGSTREAMEN_VAL               (1'b0),
  .GTYE4_COMMON_UBDO_TIE_EN                     (1'b0),
  .GTYE4_COMMON_UBDO_VAL                        (16'b0000000000000000),
  .GTYE4_COMMON_UBDRDY_TIE_EN                   (1'b0),
  .GTYE4_COMMON_UBDRDY_VAL                      (1'b0),
  .GTYE4_COMMON_UBENABLE_TIE_EN                 (1'b0),
  .GTYE4_COMMON_UBENABLE_VAL                    (1'b0),
  .GTYE4_COMMON_UBGPI_TIE_EN                    (1'b0),
  .GTYE4_COMMON_UBGPI_VAL                       (2'b00),
  .GTYE4_COMMON_UBINTR_TIE_EN                   (1'b0),
  .GTYE4_COMMON_UBINTR_VAL                      (2'b00),
  .GTYE4_COMMON_UBIOLMBRST_TIE_EN               (1'b0),
  .GTYE4_COMMON_UBIOLMBRST_VAL                  (1'b0),
  .GTYE4_COMMON_UBMBRST_TIE_EN                  (1'b0),
  .GTYE4_COMMON_UBMBRST_VAL                     (1'b0),
  .GTYE4_COMMON_UBMDMCAPTURE_TIE_EN             (1'b0),
  .GTYE4_COMMON_UBMDMCAPTURE_VAL                (1'b0),
  .GTYE4_COMMON_UBMDMDBGRST_TIE_EN              (1'b0),
  .GTYE4_COMMON_UBMDMDBGRST_VAL                 (1'b0),
  .GTYE4_COMMON_UBMDMDBGUPDATE_TIE_EN           (1'b0),
  .GTYE4_COMMON_UBMDMDBGUPDATE_VAL              (1'b0),
  .GTYE4_COMMON_UBMDMREGEN_TIE_EN               (1'b0),
  .GTYE4_COMMON_UBMDMREGEN_VAL                  (4'b0000),
  .GTYE4_COMMON_UBMDMSHIFT_TIE_EN               (1'b0),
  .GTYE4_COMMON_UBMDMSHIFT_VAL                  (1'b0),
  .GTYE4_COMMON_UBMDMSYSRST_TIE_EN              (1'b0),
  .GTYE4_COMMON_UBMDMSYSRST_VAL                 (1'b0),
  .GTYE4_COMMON_UBMDMTCK_TIE_EN                 (1'b0),
  .GTYE4_COMMON_UBMDMTCK_VAL                    (1'b0),
  .GTYE4_COMMON_UBMDMTDI_TIE_EN                 (1'b0),
  .GTYE4_COMMON_UBMDMTDI_VAL                    (1'b0),
  .GTYE4_COMMON_UB_CFG0                         (16'b0000000000000000),
  .GTYE4_COMMON_UB_CFG1                         (16'b0000000000000000),
  .GTYE4_COMMON_UB_CFG2                         (16'b0000000000000000),
  .GTYE4_COMMON_UB_CFG3                         (16'b0000000000000000),
  .GTYE4_COMMON_UB_CFG4                         (16'b0000000000000000),
  .GTYE4_COMMON_UB_CFG5                         (16'b0000010000000000),
  .GTYE4_COMMON_UB_CFG6                         (16'b0000000000000000)
) common_inst (

  // inputs
  .GTYE4_COMMON_BGBYPASSB                       (GTYE4_COMMON_BGBYPASSB),
  .GTYE4_COMMON_BGMONITORENB                    (GTYE4_COMMON_BGMONITORENB),
  .GTYE4_COMMON_BGPDB                           (GTYE4_COMMON_BGPDB),
  .GTYE4_COMMON_BGRCALOVRD                      (GTYE4_COMMON_BGRCALOVRD),
  .GTYE4_COMMON_BGRCALOVRDENB                   (GTYE4_COMMON_BGRCALOVRDENB),
  .GTYE4_COMMON_DRPADDR                         (GTYE4_COMMON_DRPADDR),
  .GTYE4_COMMON_DRPCLK                          (GTYE4_COMMON_DRPCLK),
  .GTYE4_COMMON_DRPDI                           (GTYE4_COMMON_DRPDI),
  .GTYE4_COMMON_DRPEN                           (GTYE4_COMMON_DRPEN),
  .GTYE4_COMMON_DRPWE                           (GTYE4_COMMON_DRPWE),
  .GTYE4_COMMON_GTGREFCLK0                      (GTYE4_COMMON_GTGREFCLK0),
  .GTYE4_COMMON_GTGREFCLK1                      (GTYE4_COMMON_GTGREFCLK1),
  .GTYE4_COMMON_GTNORTHREFCLK00                 (GTYE4_COMMON_GTNORTHREFCLK00),
  .GTYE4_COMMON_GTNORTHREFCLK01                 (GTYE4_COMMON_GTNORTHREFCLK01),
  .GTYE4_COMMON_GTNORTHREFCLK10                 (GTYE4_COMMON_GTNORTHREFCLK10),
  .GTYE4_COMMON_GTNORTHREFCLK11                 (GTYE4_COMMON_GTNORTHREFCLK11),
  .GTYE4_COMMON_GTREFCLK00                      (GTYE4_COMMON_GTREFCLK00),
  .GTYE4_COMMON_GTREFCLK01                      (GTYE4_COMMON_GTREFCLK01),
  .GTYE4_COMMON_GTREFCLK10                      (GTYE4_COMMON_GTREFCLK10),
  .GTYE4_COMMON_GTREFCLK11                      (GTYE4_COMMON_GTREFCLK11),
  .GTYE4_COMMON_GTSOUTHREFCLK00                 (GTYE4_COMMON_GTSOUTHREFCLK00),
  .GTYE4_COMMON_GTSOUTHREFCLK01                 (GTYE4_COMMON_GTSOUTHREFCLK01),
  .GTYE4_COMMON_GTSOUTHREFCLK10                 (GTYE4_COMMON_GTSOUTHREFCLK10),
  .GTYE4_COMMON_GTSOUTHREFCLK11                 (GTYE4_COMMON_GTSOUTHREFCLK11),
  .GTYE4_COMMON_PCIERATEQPLL0                   (GTYE4_COMMON_PCIERATEQPLL0),
  .GTYE4_COMMON_PCIERATEQPLL1                   (GTYE4_COMMON_PCIERATEQPLL1),
  .GTYE4_COMMON_PMARSVD0                        (GTYE4_COMMON_PMARSVD0),
  .GTYE4_COMMON_PMARSVD1                        (GTYE4_COMMON_PMARSVD1),
  .GTYE4_COMMON_QPLL0CLKRSVD0                   (GTYE4_COMMON_QPLL0CLKRSVD0),
  .GTYE4_COMMON_QPLL0CLKRSVD1                   (GTYE4_COMMON_QPLL0CLKRSVD1),
  .GTYE4_COMMON_QPLL0FBDIV                      (GTYE4_COMMON_QPLL0FBDIV),
  .GTYE4_COMMON_QPLL0LOCKDETCLK                 (GTYE4_COMMON_QPLL0LOCKDETCLK),
  .GTYE4_COMMON_QPLL0LOCKEN                     (GTYE4_COMMON_QPLL0LOCKEN),
  .GTYE4_COMMON_QPLL0PD                         (GTYE4_COMMON_QPLL0PD),
  .GTYE4_COMMON_QPLL0REFCLKSEL                  (GTYE4_COMMON_QPLL0REFCLKSEL),
  .GTYE4_COMMON_QPLL0RESET                      (GTYE4_COMMON_QPLL0RESET),
  .GTYE4_COMMON_QPLL1CLKRSVD0                   (GTYE4_COMMON_QPLL1CLKRSVD0),
  .GTYE4_COMMON_QPLL1CLKRSVD1                   (GTYE4_COMMON_QPLL1CLKRSVD1),
  .GTYE4_COMMON_QPLL1FBDIV                      (GTYE4_COMMON_QPLL1FBDIV),
  .GTYE4_COMMON_QPLL1LOCKDETCLK                 (GTYE4_COMMON_QPLL1LOCKDETCLK),
  .GTYE4_COMMON_QPLL1LOCKEN                     (GTYE4_COMMON_QPLL1LOCKEN),
  .GTYE4_COMMON_QPLL1PD                         (GTYE4_COMMON_QPLL1PD),
  .GTYE4_COMMON_QPLL1REFCLKSEL                  (GTYE4_COMMON_QPLL1REFCLKSEL),
  .GTYE4_COMMON_QPLL1RESET                      (GTYE4_COMMON_QPLL1RESET),
  .GTYE4_COMMON_QPLLRSVD1                       (GTYE4_COMMON_QPLLRSVD1),
  .GTYE4_COMMON_QPLLRSVD2                       (GTYE4_COMMON_QPLLRSVD2),
  .GTYE4_COMMON_QPLLRSVD3                       (GTYE4_COMMON_QPLLRSVD3),
  .GTYE4_COMMON_QPLLRSVD4                       (GTYE4_COMMON_QPLLRSVD4),
  .GTYE4_COMMON_RCALENB                         (GTYE4_COMMON_RCALENB),
  .GTYE4_COMMON_SDM0DATA                        (GTYE4_COMMON_SDM0DATA),
  .GTYE4_COMMON_SDM0RESET                       (GTYE4_COMMON_SDM0RESET),
  .GTYE4_COMMON_SDM0TOGGLE                      (GTYE4_COMMON_SDM0TOGGLE),
  .GTYE4_COMMON_SDM0WIDTH                       (GTYE4_COMMON_SDM0WIDTH),
  .GTYE4_COMMON_SDM1DATA                        (GTYE4_COMMON_SDM1DATA),
  .GTYE4_COMMON_SDM1RESET                       (GTYE4_COMMON_SDM1RESET),
  .GTYE4_COMMON_SDM1TOGGLE                      (GTYE4_COMMON_SDM1TOGGLE),
  .GTYE4_COMMON_SDM1WIDTH                       (GTYE4_COMMON_SDM1WIDTH),
  .GTYE4_COMMON_UBCFGSTREAMEN                   (GTYE4_COMMON_UBCFGSTREAMEN),
  .GTYE4_COMMON_UBDO                            (GTYE4_COMMON_UBDO),
  .GTYE4_COMMON_UBDRDY                          (GTYE4_COMMON_UBDRDY),
  .GTYE4_COMMON_UBENABLE                        (GTYE4_COMMON_UBENABLE),
  .GTYE4_COMMON_UBGPI                           (GTYE4_COMMON_UBGPI),
  .GTYE4_COMMON_UBINTR                          (GTYE4_COMMON_UBINTR),
  .GTYE4_COMMON_UBIOLMBRST                      (GTYE4_COMMON_UBIOLMBRST),
  .GTYE4_COMMON_UBMBRST                         (GTYE4_COMMON_UBMBRST),
  .GTYE4_COMMON_UBMDMCAPTURE                    (GTYE4_COMMON_UBMDMCAPTURE),
  .GTYE4_COMMON_UBMDMDBGRST                     (GTYE4_COMMON_UBMDMDBGRST),
  .GTYE4_COMMON_UBMDMDBGUPDATE                  (GTYE4_COMMON_UBMDMDBGUPDATE),
  .GTYE4_COMMON_UBMDMREGEN                      (GTYE4_COMMON_UBMDMREGEN),
  .GTYE4_COMMON_UBMDMSHIFT                      (GTYE4_COMMON_UBMDMSHIFT),
  .GTYE4_COMMON_UBMDMSYSRST                     (GTYE4_COMMON_UBMDMSYSRST),
  .GTYE4_COMMON_UBMDMTCK                        (GTYE4_COMMON_UBMDMTCK),
  .GTYE4_COMMON_UBMDMTDI                        (GTYE4_COMMON_UBMDMTDI),

  // outputs
  .GTYE4_COMMON_DRPDO                           (GTYE4_COMMON_DRPDO),
  .GTYE4_COMMON_DRPRDY                          (GTYE4_COMMON_DRPRDY),
  .GTYE4_COMMON_PMARSVDOUT0                     (GTYE4_COMMON_PMARSVDOUT0),
  .GTYE4_COMMON_PMARSVDOUT1                     (GTYE4_COMMON_PMARSVDOUT1),
  .GTYE4_COMMON_QPLL0FBCLKLOST                  (GTYE4_COMMON_QPLL0FBCLKLOST),
  .GTYE4_COMMON_QPLL0LOCK                       (GTYE4_COMMON_QPLL0LOCK),
  .GTYE4_COMMON_QPLL0OUTCLK                     (GTYE4_COMMON_QPLL0OUTCLK),
  .GTYE4_COMMON_QPLL0OUTREFCLK                  (GTYE4_COMMON_QPLL0OUTREFCLK),
  .GTYE4_COMMON_QPLL0REFCLKLOST                 (GTYE4_COMMON_QPLL0REFCLKLOST),
  .GTYE4_COMMON_QPLL1FBCLKLOST                  (GTYE4_COMMON_QPLL1FBCLKLOST),
  .GTYE4_COMMON_QPLL1LOCK                       (GTYE4_COMMON_QPLL1LOCK),
  .GTYE4_COMMON_QPLL1OUTCLK                     (GTYE4_COMMON_QPLL1OUTCLK),
  .GTYE4_COMMON_QPLL1OUTREFCLK                  (GTYE4_COMMON_QPLL1OUTREFCLK),
  .GTYE4_COMMON_QPLL1REFCLKLOST                 (GTYE4_COMMON_QPLL1REFCLKLOST),
  .GTYE4_COMMON_QPLLDMONITOR0                   (GTYE4_COMMON_QPLLDMONITOR0),
  .GTYE4_COMMON_QPLLDMONITOR1                   (GTYE4_COMMON_QPLLDMONITOR1),
  .GTYE4_COMMON_REFCLKOUTMONITOR0               (GTYE4_COMMON_REFCLKOUTMONITOR0),
  .GTYE4_COMMON_REFCLKOUTMONITOR1               (GTYE4_COMMON_REFCLKOUTMONITOR1),
  .GTYE4_COMMON_RXRECCLK0SEL                    (GTYE4_COMMON_RXRECCLK0SEL),
  .GTYE4_COMMON_RXRECCLK1SEL                    (GTYE4_COMMON_RXRECCLK1SEL),
  .GTYE4_COMMON_SDM0FINALOUT                    (GTYE4_COMMON_SDM0FINALOUT),
  .GTYE4_COMMON_SDM0TESTDATA                    (GTYE4_COMMON_SDM0TESTDATA),
  .GTYE4_COMMON_SDM1FINALOUT                    (GTYE4_COMMON_SDM1FINALOUT),
  .GTYE4_COMMON_SDM1TESTDATA                    (GTYE4_COMMON_SDM1TESTDATA),
  .GTYE4_COMMON_UBDADDR                         (GTYE4_COMMON_UBDADDR),
  .GTYE4_COMMON_UBDEN                           (GTYE4_COMMON_UBDEN),
  .GTYE4_COMMON_UBDI                            (GTYE4_COMMON_UBDI),
  .GTYE4_COMMON_UBDWE                           (GTYE4_COMMON_UBDWE),
  .GTYE4_COMMON_UBMDMTDO                        (GTYE4_COMMON_UBMDMTDO),
  .GTYE4_COMMON_UBRSVDOUT                       (GTYE4_COMMON_UBRSVDOUT),
  .GTYE4_COMMON_UBTXUART                        (GTYE4_COMMON_UBTXUART)
);

endmodule

