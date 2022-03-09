//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Wed Mar  9 12:59:21 2022
//Host        : DESKTOP-B2TSFBN running 64-bit major release  (build 9200)
//Command     : generate_target m3_for_arty_a7_wrapper.bd
//Design      : m3_for_arty_a7_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module m3_for_arty_a7_wrapper
   (DAPLink_tri_o,
    GPIO_Trg_tri_io,
    TDI,
    TDO,
    dip_switches_4bits_tri_i,
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
  inout [7:0]GPIO_Trg_tri_io;
  input TDI;
  inout [0:0]TDO;
  input [3:0]dip_switches_4bits_tri_i;
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
  wire [0:0]GPIO_Trg_tri_i_0;
  wire [1:1]GPIO_Trg_tri_i_1;
  wire [2:2]GPIO_Trg_tri_i_2;
  wire [3:3]GPIO_Trg_tri_i_3;
  wire [4:4]GPIO_Trg_tri_i_4;
  wire [5:5]GPIO_Trg_tri_i_5;
  wire [6:6]GPIO_Trg_tri_i_6;
  wire [7:7]GPIO_Trg_tri_i_7;
  wire [0:0]GPIO_Trg_tri_io_0;
  wire [1:1]GPIO_Trg_tri_io_1;
  wire [2:2]GPIO_Trg_tri_io_2;
  wire [3:3]GPIO_Trg_tri_io_3;
  wire [4:4]GPIO_Trg_tri_io_4;
  wire [5:5]GPIO_Trg_tri_io_5;
  wire [6:6]GPIO_Trg_tri_io_6;
  wire [7:7]GPIO_Trg_tri_io_7;
  wire [0:0]GPIO_Trg_tri_o_0;
  wire [1:1]GPIO_Trg_tri_o_1;
  wire [2:2]GPIO_Trg_tri_o_2;
  wire [3:3]GPIO_Trg_tri_o_3;
  wire [4:4]GPIO_Trg_tri_o_4;
  wire [5:5]GPIO_Trg_tri_o_5;
  wire [6:6]GPIO_Trg_tri_o_6;
  wire [7:7]GPIO_Trg_tri_o_7;
  wire [0:0]GPIO_Trg_tri_t_0;
  wire [1:1]GPIO_Trg_tri_t_1;
  wire [2:2]GPIO_Trg_tri_t_2;
  wire [3:3]GPIO_Trg_tri_t_3;
  wire [4:4]GPIO_Trg_tri_t_4;
  wire [5:5]GPIO_Trg_tri_t_5;
  wire [6:6]GPIO_Trg_tri_t_6;
  wire [7:7]GPIO_Trg_tri_t_7;
  wire TDI;
  wire [0:0]TDO;
  wire [3:0]dip_switches_4bits_tri_i;
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

  IOBUF GPIO_Trg_tri_iobuf_0
       (.I(GPIO_Trg_tri_o_0),
        .IO(GPIO_Trg_tri_io[0]),
        .O(GPIO_Trg_tri_i_0),
        .T(GPIO_Trg_tri_t_0));
  IOBUF GPIO_Trg_tri_iobuf_1
       (.I(GPIO_Trg_tri_o_1),
        .IO(GPIO_Trg_tri_io[1]),
        .O(GPIO_Trg_tri_i_1),
        .T(GPIO_Trg_tri_t_1));
  IOBUF GPIO_Trg_tri_iobuf_2
       (.I(GPIO_Trg_tri_o_2),
        .IO(GPIO_Trg_tri_io[2]),
        .O(GPIO_Trg_tri_i_2),
        .T(GPIO_Trg_tri_t_2));
  IOBUF GPIO_Trg_tri_iobuf_3
       (.I(GPIO_Trg_tri_o_3),
        .IO(GPIO_Trg_tri_io[3]),
        .O(GPIO_Trg_tri_i_3),
        .T(GPIO_Trg_tri_t_3));
  IOBUF GPIO_Trg_tri_iobuf_4
       (.I(GPIO_Trg_tri_o_4),
        .IO(GPIO_Trg_tri_io[4]),
        .O(GPIO_Trg_tri_i_4),
        .T(GPIO_Trg_tri_t_4));
  IOBUF GPIO_Trg_tri_iobuf_5
       (.I(GPIO_Trg_tri_o_5),
        .IO(GPIO_Trg_tri_io[5]),
        .O(GPIO_Trg_tri_i_5),
        .T(GPIO_Trg_tri_t_5));
  IOBUF GPIO_Trg_tri_iobuf_6
       (.I(GPIO_Trg_tri_o_6),
        .IO(GPIO_Trg_tri_io[6]),
        .O(GPIO_Trg_tri_i_6),
        .T(GPIO_Trg_tri_t_6));
  IOBUF GPIO_Trg_tri_iobuf_7
       (.I(GPIO_Trg_tri_o_7),
        .IO(GPIO_Trg_tri_io[7]),
        .O(GPIO_Trg_tri_i_7),
        .T(GPIO_Trg_tri_t_7));
  m3_for_arty_a7 m3_for_arty_a7_i
       (.DAPLink_tri_o(DAPLink_tri_o),
        .GPIO_Trg_tri_i({GPIO_Trg_tri_i_7,GPIO_Trg_tri_i_6,GPIO_Trg_tri_i_5,GPIO_Trg_tri_i_4,GPIO_Trg_tri_i_3,GPIO_Trg_tri_i_2,GPIO_Trg_tri_i_1,GPIO_Trg_tri_i_0}),
        .GPIO_Trg_tri_o({GPIO_Trg_tri_o_7,GPIO_Trg_tri_o_6,GPIO_Trg_tri_o_5,GPIO_Trg_tri_o_4,GPIO_Trg_tri_o_3,GPIO_Trg_tri_o_2,GPIO_Trg_tri_o_1,GPIO_Trg_tri_o_0}),
        .GPIO_Trg_tri_t({GPIO_Trg_tri_t_7,GPIO_Trg_tri_t_6,GPIO_Trg_tri_t_5,GPIO_Trg_tri_t_4,GPIO_Trg_tri_t_3,GPIO_Trg_tri_t_2,GPIO_Trg_tri_t_1,GPIO_Trg_tri_t_0}),
        .TDI(TDI),
        .TDO(TDO),
        .dip_switches_4bits_tri_i(dip_switches_4bits_tri_i),
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
