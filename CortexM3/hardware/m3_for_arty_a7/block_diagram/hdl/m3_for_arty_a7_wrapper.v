//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Tue Apr  5 15:50:59 2022
//Host        : DESKTOP-661ESVO running 64-bit major release  (build 9200)
//Command     : generate_target m3_for_arty_a7_wrapper.bd
//Design      : m3_for_arty_a7_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module m3_for_arty_a7_wrapper
   (DAPLink_tri_o,
    TDI,
    TDO,
    TrgIN_tri_i,
    TrgOUT_tri_o,
    dip_switches_4bits_tri_i,
    led_4bits_tri_o,
    miso1,
    mosi1,
    nTRST,
    push_buttons_4bits_tri_i,
    qspi_flash_io0_io,
    qspi_flash_io1_io,
    qspi_flash_io2_io,
    qspi_flash_io3_io,
    qspi_flash_sck_io,
    qspi_flash_ss_io,
    reset,
    rgb_led_tri_o,
    sck1,
    ss1,
    sys_clock,
    usb_uart_rxd,
    usb_uart_txd);
  inout [15:0]DAPLink_tri_o;
  input TDI;
  inout [0:0]TDO;
  input [3:0]TrgIN_tri_i;
  output [3:0]TrgOUT_tri_o;
  input [3:0]dip_switches_4bits_tri_i;
  output [3:0]led_4bits_tri_o;
  input miso1;
  output mosi1;
  input nTRST;
  input [3:0]push_buttons_4bits_tri_i;
  inout qspi_flash_io0_io;
  inout qspi_flash_io1_io;
  inout qspi_flash_io2_io;
  inout qspi_flash_io3_io;
  inout qspi_flash_sck_io;
  inout qspi_flash_ss_io;
  input reset;
  output [11:0]rgb_led_tri_o;
  output sck1;
  output [0:0]ss1;
  input sys_clock;
  input usb_uart_rxd;
  output usb_uart_txd;

  wire [15:0]DAPLink_tri_o;
  wire TDI;
  wire [0:0]TDO;
  wire [3:0]TrgIN_tri_i;
  wire [3:0]TrgOUT_tri_o;
  wire [3:0]dip_switches_4bits_tri_i;
  wire [3:0]led_4bits_tri_o;
  wire miso1;
  wire mosi1;
  wire nTRST;
  wire [3:0]push_buttons_4bits_tri_i;
  wire qspi_flash_io0_i;
  wire qspi_flash_io0_io;
  wire qspi_flash_io0_o;
  wire qspi_flash_io0_t;
  wire qspi_flash_io1_i;
  wire qspi_flash_io1_io;
  wire qspi_flash_io1_o;
  wire qspi_flash_io1_t;
  wire qspi_flash_io2_i;
  wire qspi_flash_io2_io;
  wire qspi_flash_io2_o;
  wire qspi_flash_io2_t;
  wire qspi_flash_io3_i;
  wire qspi_flash_io3_io;
  wire qspi_flash_io3_o;
  wire qspi_flash_io3_t;
  wire qspi_flash_sck_i;
  wire qspi_flash_sck_io;
  wire qspi_flash_sck_o;
  wire qspi_flash_sck_t;
  wire qspi_flash_ss_i;
  wire qspi_flash_ss_io;
  wire qspi_flash_ss_o;
  wire qspi_flash_ss_t;
  wire reset;
  wire [11:0]rgb_led_tri_o;
  wire sck1;
  wire [0:0]ss1;
  wire sys_clock;
  wire usb_uart_rxd;
  wire usb_uart_txd;

  m3_for_arty_a7 m3_for_arty_a7_i
       (.DAPLink_tri_o(DAPLink_tri_o),
        .TDI(TDI),
        .TDO(TDO),
        .TrgIN_tri_i(TrgIN_tri_i),
        .TrgOUT_tri_o(TrgOUT_tri_o),
        .dip_switches_4bits_tri_i(dip_switches_4bits_tri_i),
        .led_4bits_tri_o(led_4bits_tri_o),
        .miso1(miso1),
        .mosi1(mosi1),
        .nTRST(nTRST),
        .push_buttons_4bits_tri_i(push_buttons_4bits_tri_i),
        .qspi_flash_io0_i(qspi_flash_io0_i),
        .qspi_flash_io0_o(qspi_flash_io0_o),
        .qspi_flash_io0_t(qspi_flash_io0_t),
        .qspi_flash_io1_i(qspi_flash_io1_i),
        .qspi_flash_io1_o(qspi_flash_io1_o),
        .qspi_flash_io1_t(qspi_flash_io1_t),
        .qspi_flash_io2_i(qspi_flash_io2_i),
        .qspi_flash_io2_o(qspi_flash_io2_o),
        .qspi_flash_io2_t(qspi_flash_io2_t),
        .qspi_flash_io3_i(qspi_flash_io3_i),
        .qspi_flash_io3_o(qspi_flash_io3_o),
        .qspi_flash_io3_t(qspi_flash_io3_t),
        .qspi_flash_sck_i(qspi_flash_sck_i),
        .qspi_flash_sck_o(qspi_flash_sck_o),
        .qspi_flash_sck_t(qspi_flash_sck_t),
        .qspi_flash_ss_i(qspi_flash_ss_i),
        .qspi_flash_ss_o(qspi_flash_ss_o),
        .qspi_flash_ss_t(qspi_flash_ss_t),
        .reset(reset),
        .rgb_led_tri_o(rgb_led_tri_o),
        .sck1(sck1),
        .ss1(ss1),
        .sys_clock(sys_clock),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd));
  IOBUF qspi_flash_io0_iobuf
       (.I(qspi_flash_io0_o),
        .IO(qspi_flash_io0_io),
        .O(qspi_flash_io0_i),
        .T(qspi_flash_io0_t));
  IOBUF qspi_flash_io1_iobuf
       (.I(qspi_flash_io1_o),
        .IO(qspi_flash_io1_io),
        .O(qspi_flash_io1_i),
        .T(qspi_flash_io1_t));
  IOBUF qspi_flash_io2_iobuf
       (.I(qspi_flash_io2_o),
        .IO(qspi_flash_io2_io),
        .O(qspi_flash_io2_i),
        .T(qspi_flash_io2_t));
  IOBUF qspi_flash_io3_iobuf
       (.I(qspi_flash_io3_o),
        .IO(qspi_flash_io3_io),
        .O(qspi_flash_io3_i),
        .T(qspi_flash_io3_t));
  IOBUF qspi_flash_sck_iobuf
       (.I(qspi_flash_sck_o),
        .IO(qspi_flash_sck_io),
        .O(qspi_flash_sck_i),
        .T(qspi_flash_sck_t));
  IOBUF qspi_flash_ss_iobuf
       (.I(qspi_flash_ss_o),
        .IO(qspi_flash_ss_io),
        .O(qspi_flash_ss_i),
        .T(qspi_flash_ss_t));
endmodule
