//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Mon Oct 25 15:52:31 2021
//Host        : DESKTOP-B2TSFBN running 64-bit major release  (build 9200)
//Command     : generate_target m3_for_arty_a7_wrapper.bd
//Design      : m3_for_arty_a7_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module m3_for_arty_a7_wrapper
   (DAPLink_tri_o,
    TDI,
    TDO,
    dip_switches_4bits_tri_i,
    ja_pin10_io,
    ja_pin1_io,
    ja_pin2_io,
    ja_pin3_io,
    ja_pin4_io,
    ja_pin7_io,
    ja_pin8_io,
    ja_pin9_io,
    led_4bits_tri_o,
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
    sys_clock,
    usb_uart_rxd,
    usb_uart_txd);
  inout [15:0]DAPLink_tri_o;
  input TDI;
  inout [0:0]TDO;
  input [3:0]dip_switches_4bits_tri_i;
  inout ja_pin10_io;
  inout ja_pin1_io;
  inout ja_pin2_io;
  inout ja_pin3_io;
  inout ja_pin4_io;
  inout ja_pin7_io;
  inout ja_pin8_io;
  inout ja_pin9_io;
  output [3:0]led_4bits_tri_o;
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
  input sys_clock;
  input usb_uart_rxd;
  output usb_uart_txd;

  wire [15:0]DAPLink_tri_o;
  wire TDI;
  wire [0:0]TDO;
  wire [3:0]dip_switches_4bits_tri_i;
  wire ja_pin10_i;
  wire ja_pin10_io;
  wire ja_pin10_o;
  wire ja_pin10_t;
  wire ja_pin1_i;
  wire ja_pin1_io;
  wire ja_pin1_o;
  wire ja_pin1_t;
  wire ja_pin2_i;
  wire ja_pin2_io;
  wire ja_pin2_o;
  wire ja_pin2_t;
  wire ja_pin3_i;
  wire ja_pin3_io;
  wire ja_pin3_o;
  wire ja_pin3_t;
  wire ja_pin4_i;
  wire ja_pin4_io;
  wire ja_pin4_o;
  wire ja_pin4_t;
  wire ja_pin7_i;
  wire ja_pin7_io;
  wire ja_pin7_o;
  wire ja_pin7_t;
  wire ja_pin8_i;
  wire ja_pin8_io;
  wire ja_pin8_o;
  wire ja_pin8_t;
  wire ja_pin9_i;
  wire ja_pin9_io;
  wire ja_pin9_o;
  wire ja_pin9_t;
  wire [3:0]led_4bits_tri_o;
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
  wire sys_clock;
  wire usb_uart_rxd;
  wire usb_uart_txd;

  IOBUF ja_pin10_iobuf
       (.I(ja_pin10_o),
        .IO(ja_pin10_io),
        .O(ja_pin10_i),
        .T(ja_pin10_t));
  IOBUF ja_pin1_iobuf
       (.I(ja_pin1_o),
        .IO(ja_pin1_io),
        .O(ja_pin1_i),
        .T(ja_pin1_t));
  IOBUF ja_pin2_iobuf
       (.I(ja_pin2_o),
        .IO(ja_pin2_io),
        .O(ja_pin2_i),
        .T(ja_pin2_t));
  IOBUF ja_pin3_iobuf
       (.I(ja_pin3_o),
        .IO(ja_pin3_io),
        .O(ja_pin3_i),
        .T(ja_pin3_t));
  IOBUF ja_pin4_iobuf
       (.I(ja_pin4_o),
        .IO(ja_pin4_io),
        .O(ja_pin4_i),
        .T(ja_pin4_t));
  IOBUF ja_pin7_iobuf
       (.I(ja_pin7_o),
        .IO(ja_pin7_io),
        .O(ja_pin7_i),
        .T(ja_pin7_t));
  IOBUF ja_pin8_iobuf
       (.I(ja_pin8_o),
        .IO(ja_pin8_io),
        .O(ja_pin8_i),
        .T(ja_pin8_t));
  IOBUF ja_pin9_iobuf
       (.I(ja_pin9_o),
        .IO(ja_pin9_io),
        .O(ja_pin9_i),
        .T(ja_pin9_t));
  m3_for_arty_a7 m3_for_arty_a7_i
       (.DAPLink_tri_o(DAPLink_tri_o),
        .TDI(TDI),
        .TDO(TDO),
        .dip_switches_4bits_tri_i(dip_switches_4bits_tri_i),
        .ja_pin10_i(ja_pin10_i),
        .ja_pin10_o(ja_pin10_o),
        .ja_pin10_t(ja_pin10_t),
        .ja_pin1_i(ja_pin1_i),
        .ja_pin1_o(ja_pin1_o),
        .ja_pin1_t(ja_pin1_t),
        .ja_pin2_i(ja_pin2_i),
        .ja_pin2_o(ja_pin2_o),
        .ja_pin2_t(ja_pin2_t),
        .ja_pin3_i(ja_pin3_i),
        .ja_pin3_o(ja_pin3_o),
        .ja_pin3_t(ja_pin3_t),
        .ja_pin4_i(ja_pin4_i),
        .ja_pin4_o(ja_pin4_o),
        .ja_pin4_t(ja_pin4_t),
        .ja_pin7_i(ja_pin7_i),
        .ja_pin7_o(ja_pin7_o),
        .ja_pin7_t(ja_pin7_t),
        .ja_pin8_i(ja_pin8_i),
        .ja_pin8_o(ja_pin8_o),
        .ja_pin8_t(ja_pin8_t),
        .ja_pin9_i(ja_pin9_i),
        .ja_pin9_o(ja_pin9_o),
        .ja_pin9_t(ja_pin9_t),
        .led_4bits_tri_o(led_4bits_tri_o),
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
