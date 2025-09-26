#! /c/Source/iverilog-install/bin/vvp
:ivl_version "12.0 (devel)" "(s20150603-1539-g2693dd32b)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision - 12;
:vpi_module "C:\iverilog\lib\ivl\system.vpi";
:vpi_module "C:\iverilog\lib\ivl\vhdl_sys.vpi";
:vpi_module "C:\iverilog\lib\ivl\vhdl_textio.vpi";
:vpi_module "C:\iverilog\lib\ivl\v2005_math.vpi";
:vpi_module "C:\iverilog\lib\ivl\va_math.vpi";
S_000001d743286170 .scope module, "ripple_carry_counter" "ripple_carry_counter" 2 4;
 .timescale -12 -12;
    .port_info 0 /OUTPUT 4 "q";
    .port_info 1 /INPUT 1 "clk";
    .port_info 2 /INPUT 1 "rst_n";
o000001d743286f98 .functor BUFZ 1, C4<z>; HiZ drive
v000001d7432d54a0_0 .net "clk", 0 0, o000001d743286f98;  0 drivers
v000001d7432d5220_0 .net "q", 3 0, L_000001d7432d6580;  1 drivers
o000001d743287028 .functor BUFZ 1, C4<z>; HiZ drive
v000001d7432d55e0_0 .net "rst_n", 0 0, o000001d743287028;  0 drivers
L_000001d7432d5720 .part L_000001d7432d6580, 0, 1;
L_000001d7432d6da0 .part L_000001d7432d6580, 1, 1;
L_000001d7432d6580 .concat8 [ 1 1 1 1], v000001d74327dc40_0, v000001d74327e0a0_0, v000001d74327d920_0, v000001d7432d5680_0;
L_000001d7432d5360 .part L_000001d7432d6580, 2, 1;
S_000001d743286300 .scope module, "tff0" "T_FF" 2 11, 2 19 0, S_000001d743286170;
 .timescale -12 -12;
    .port_info 0 /OUTPUT 1 "q";
    .port_info 1 /INPUT 1 "clk";
    .port_info 2 /INPUT 1 "rst_n";
L_000001d743253710 .functor NOT 1, v000001d74327dc40_0, C4<0>, C4<0>, C4<0>;
v000001d74327df60_0 .net "clk", 0 0, o000001d743286f98;  alias, 0 drivers
v000001d74327de20_0 .net "d", 0 0, L_000001d743253710;  1 drivers
v000001d74327dec0_0 .net "q", 0 0, v000001d74327dc40_0;  1 drivers
v000001d74327d560_0 .net "rst_n", 0 0, o000001d743287028;  alias, 0 drivers
S_000001d74323d070 .scope module, "dff" "D_FF" 2 28, 2 34 0, S_000001d743286300;
 .timescale -12 -12;
    .port_info 0 /OUTPUT 1 "q";
    .port_info 1 /INPUT 1 "d";
    .port_info 2 /INPUT 1 "clk";
    .port_info 3 /INPUT 1 "rst_n";
v000001d74327d380_0 .net "clk", 0 0, o000001d743286f98;  alias, 0 drivers
v000001d74327e000_0 .net "d", 0 0, L_000001d743253710;  alias, 1 drivers
v000001d74327dc40_0 .var "q", 0 0;
v000001d74327d4c0_0 .net "rst_n", 0 0, o000001d743287028;  alias, 0 drivers
E_000001d743275830/0 .event negedge, v000001d74327d4c0_0;
E_000001d743275830/1 .event posedge, v000001d74327d380_0;
E_000001d743275830 .event/or E_000001d743275830/0, E_000001d743275830/1;
S_000001d743284d10 .scope module, "tff1" "T_FF" 2 12, 2 19 0, S_000001d743286170;
 .timescale -12 -12;
    .port_info 0 /OUTPUT 1 "q";
    .port_info 1 /INPUT 1 "clk";
    .port_info 2 /INPUT 1 "rst_n";
L_000001d7432534f0 .functor NOT 1, v000001d74327e0a0_0, C4<0>, C4<0>, C4<0>;
v000001d74327d9c0_0 .net "clk", 0 0, L_000001d7432d5720;  1 drivers
v000001d74327d740_0 .net "d", 0 0, L_000001d7432534f0;  1 drivers
v000001d74327d880_0 .net "q", 0 0, v000001d74327e0a0_0;  1 drivers
v000001d74327e280_0 .net "rst_n", 0 0, o000001d743287028;  alias, 0 drivers
S_000001d74323d200 .scope module, "dff" "D_FF" 2 28, 2 34 0, S_000001d743284d10;
 .timescale -12 -12;
    .port_info 0 /OUTPUT 1 "q";
    .port_info 1 /INPUT 1 "d";
    .port_info 2 /INPUT 1 "clk";
    .port_info 3 /INPUT 1 "rst_n";
v000001d74327d7e0_0 .net "clk", 0 0, L_000001d7432d5720;  alias, 1 drivers
v000001d74327d600_0 .net "d", 0 0, L_000001d7432534f0;  alias, 1 drivers
v000001d74327e0a0_0 .var "q", 0 0;
v000001d74327d6a0_0 .net "rst_n", 0 0, o000001d743287028;  alias, 0 drivers
E_000001d743275af0/0 .event negedge, v000001d74327d4c0_0;
E_000001d743275af0/1 .event posedge, v000001d74327d7e0_0;
E_000001d743275af0 .event/or E_000001d743275af0/0, E_000001d743275af0/1;
S_000001d7432d4870 .scope module, "tff2" "T_FF" 2 13, 2 19 0, S_000001d743286170;
 .timescale -12 -12;
    .port_info 0 /OUTPUT 1 "q";
    .port_info 1 /INPUT 1 "clk";
    .port_info 2 /INPUT 1 "rst_n";
L_000001d74327cae0 .functor NOT 1, v000001d74327d920_0, C4<0>, C4<0>, C4<0>;
v000001d74327db00_0 .net "clk", 0 0, L_000001d7432d6da0;  1 drivers
v000001d74327dba0_0 .net "d", 0 0, L_000001d74327cae0;  1 drivers
v000001d74327dce0_0 .net "q", 0 0, v000001d74327d920_0;  1 drivers
v000001d74327dd80_0 .net "rst_n", 0 0, o000001d743287028;  alias, 0 drivers
S_000001d7432d4a00 .scope module, "dff" "D_FF" 2 28, 2 34 0, S_000001d7432d4870;
 .timescale -12 -12;
    .port_info 0 /OUTPUT 1 "q";
    .port_info 1 /INPUT 1 "d";
    .port_info 2 /INPUT 1 "clk";
    .port_info 3 /INPUT 1 "rst_n";
v000001d74327e140_0 .net "clk", 0 0, L_000001d7432d6da0;  alias, 1 drivers
v000001d74327e1e0_0 .net "d", 0 0, L_000001d74327cae0;  alias, 1 drivers
v000001d74327d920_0 .var "q", 0 0;
v000001d74327da60_0 .net "rst_n", 0 0, o000001d743287028;  alias, 0 drivers
E_000001d743275030/0 .event negedge, v000001d74327d4c0_0;
E_000001d743275030/1 .event posedge, v000001d74327e140_0;
E_000001d743275030 .event/or E_000001d743275030/0, E_000001d743275030/1;
S_000001d7432d4b90 .scope module, "tff3" "T_FF" 2 14, 2 19 0, S_000001d743286170;
 .timescale -12 -12;
    .port_info 0 /OUTPUT 1 "q";
    .port_info 1 /INPUT 1 "clk";
    .port_info 2 /INPUT 1 "rst_n";
L_000001d743253100 .functor NOT 1, v000001d7432d5680_0, C4<0>, C4<0>, C4<0>;
v000001d7432d6440_0 .net "clk", 0 0, L_000001d7432d5360;  1 drivers
v000001d7432d5180_0 .net "d", 0 0, L_000001d743253100;  1 drivers
v000001d7432d63a0_0 .net "q", 0 0, v000001d7432d5680_0;  1 drivers
v000001d7432d5540_0 .net "rst_n", 0 0, o000001d743287028;  alias, 0 drivers
S_000001d7432d4d20 .scope module, "dff" "D_FF" 2 28, 2 34 0, S_000001d7432d4b90;
 .timescale -12 -12;
    .port_info 0 /OUTPUT 1 "q";
    .port_info 1 /INPUT 1 "d";
    .port_info 2 /INPUT 1 "clk";
    .port_info 3 /INPUT 1 "rst_n";
v000001d7432d5040_0 .net "clk", 0 0, L_000001d7432d5360;  alias, 1 drivers
v000001d7432d5cc0_0 .net "d", 0 0, L_000001d743253100;  alias, 1 drivers
v000001d7432d5680_0 .var "q", 0 0;
v000001d7432d52c0_0 .net "rst_n", 0 0, o000001d743287028;  alias, 0 drivers
E_000001d743275230/0 .event negedge, v000001d74327d4c0_0;
E_000001d743275230/1 .event posedge, v000001d7432d5040_0;
E_000001d743275230 .event/or E_000001d743275230/0, E_000001d743275230/1;
    .scope S_000001d74323d070;
T_0 ;
    %wait E_000001d743275830;
    %load/vec4 v000001d74327d4c0_0;
    %nor/r;
    %flag_set/vec4 8;
    %jmp/0xz  T_0.0, 8;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v000001d74327dc40_0, 0;
    %jmp T_0.1;
T_0.0 ;
    %load/vec4 v000001d74327e000_0;
    %assign/vec4 v000001d74327dc40_0, 0;
T_0.1 ;
    %jmp T_0;
    .thread T_0;
    .scope S_000001d74323d200;
T_1 ;
    %wait E_000001d743275af0;
    %load/vec4 v000001d74327d6a0_0;
    %nor/r;
    %flag_set/vec4 8;
    %jmp/0xz  T_1.0, 8;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v000001d74327e0a0_0, 0;
    %jmp T_1.1;
T_1.0 ;
    %load/vec4 v000001d74327d600_0;
    %assign/vec4 v000001d74327e0a0_0, 0;
T_1.1 ;
    %jmp T_1;
    .thread T_1;
    .scope S_000001d7432d4a00;
T_2 ;
    %wait E_000001d743275030;
    %load/vec4 v000001d74327da60_0;
    %nor/r;
    %flag_set/vec4 8;
    %jmp/0xz  T_2.0, 8;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v000001d74327d920_0, 0;
    %jmp T_2.1;
T_2.0 ;
    %load/vec4 v000001d74327e1e0_0;
    %assign/vec4 v000001d74327d920_0, 0;
T_2.1 ;
    %jmp T_2;
    .thread T_2;
    .scope S_000001d7432d4d20;
T_3 ;
    %wait E_000001d743275230;
    %load/vec4 v000001d7432d52c0_0;
    %nor/r;
    %flag_set/vec4 8;
    %jmp/0xz  T_3.0, 8;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v000001d7432d5680_0, 0;
    %jmp T_3.1;
T_3.0 ;
    %load/vec4 v000001d7432d5cc0_0;
    %assign/vec4 v000001d7432d5680_0, 0;
T_3.1 ;
    %jmp T_3;
    .thread T_3;
# The file index is used to find the file name in the following table.
:file_names 3;
    "N/A";
    "<interactive>";
    "ripple_carry_counter.v";
