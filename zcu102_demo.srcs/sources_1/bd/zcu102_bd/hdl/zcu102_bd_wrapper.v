//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
//Date        : Sat Jun 13 11:24:00 2020
//Host        : knithappens running 64-bit Ubuntu 18.04.4 LTS
//Command     : generate_target zcu102_bd_wrapper.bd
//Design      : zcu102_bd_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module zcu102_bd_wrapper
   (led_8bits_tri_o);
  output [7:0]led_8bits_tri_o;

  wire [7:0]led_8bits_tri_o;

  zcu102_bd zcu102_bd_i
       (.led_8bits_tri_o(led_8bits_tri_o));
endmodule
