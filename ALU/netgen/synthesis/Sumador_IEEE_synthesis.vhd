--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.49d
--  \   \         Application: netgen
--  /   /         Filename: Sumador_IEEE_synthesis.vhd
-- /___/   /\     Timestamp: Fri Jan 08 10:40:38 2016
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm Sumador_IEEE -w -dir netgen/synthesis -ofmt vhdl -sim Sumador_IEEE.ngc Sumador_IEEE_synthesis.vhd 
-- Device	: xc3s100e-4-vq100
-- Input file	: Sumador_IEEE.ngc
-- Output file	: C:\FPGA\PracticoFinal\netgen\synthesis\Sumador_IEEE_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: Sumador_IEEE
-- Xilinx	: C:\Xilinx\14.4\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity Sumador_IEEE is
  port (
    Infinito : out STD_LOGIC; 
    NaN : out STD_LOGIC; 
    error_resta : out STD_LOGIC; 
    Exponente_resta : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    Mantisa_resta : out STD_LOGIC_VECTOR ( 22 downto 0 ); 
    Mantisa_suma : out STD_LOGIC_VECTOR ( 22 downto 0 ); 
    Exponente_suma : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    Operacion : in STD_LOGIC_VECTOR ( 1 downto 0 ); 
    Exponente_1 : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    Exponente_2 : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    Mantisa_1 : in STD_LOGIC_VECTOR ( 22 downto 0 ); 
    Mantisa_2 : in STD_LOGIC_VECTOR ( 22 downto 0 ) 
  );
end Sumador_IEEE;

architecture Structure of Sumador_IEEE is
  signal Exponente_1_0_IBUF_8 : STD_LOGIC; 
  signal Exponente_1_1_IBUF_9 : STD_LOGIC; 
  signal Exponente_1_2_IBUF_10 : STD_LOGIC; 
  signal Exponente_1_3_IBUF_11 : STD_LOGIC; 
  signal Exponente_1_4_IBUF_12 : STD_LOGIC; 
  signal Exponente_1_5_IBUF_13 : STD_LOGIC; 
  signal Exponente_1_6_IBUF_14 : STD_LOGIC; 
  signal Exponente_1_7_IBUF_15 : STD_LOGIC; 
  signal Exponente_2_0_IBUF_24 : STD_LOGIC; 
  signal Exponente_2_1_IBUF_25 : STD_LOGIC; 
  signal Exponente_2_2_IBUF_26 : STD_LOGIC; 
  signal Exponente_2_3_IBUF_27 : STD_LOGIC; 
  signal Exponente_2_4_IBUF_28 : STD_LOGIC; 
  signal Exponente_2_5_IBUF_29 : STD_LOGIC; 
  signal Exponente_2_6_IBUF_30 : STD_LOGIC; 
  signal Exponente_2_7_IBUF_31 : STD_LOGIC; 
  signal Exponente_resta_0_OBUF_40 : STD_LOGIC; 
  signal Exponente_resta_1_OBUF_41 : STD_LOGIC; 
  signal Exponente_resta_2_OBUF_42 : STD_LOGIC; 
  signal Exponente_resta_3_OBUF_43 : STD_LOGIC; 
  signal Exponente_resta_4_OBUF_44 : STD_LOGIC; 
  signal Exponente_resta_5_OBUF_45 : STD_LOGIC; 
  signal Exponente_resta_6_OBUF_46 : STD_LOGIC; 
  signal Exponente_resta_7_OBUF_47 : STD_LOGIC; 
  signal Exponente_suma_0_OBUF_56 : STD_LOGIC; 
  signal Exponente_suma_1_OBUF_57 : STD_LOGIC; 
  signal Exponente_suma_2_OBUF_58 : STD_LOGIC; 
  signal Exponente_suma_3_OBUF_59 : STD_LOGIC; 
  signal Exponente_suma_4_OBUF_60 : STD_LOGIC; 
  signal Exponente_suma_5_OBUF_61 : STD_LOGIC; 
  signal Exponente_suma_6_OBUF_62 : STD_LOGIC; 
  signal Exponente_suma_7_OBUF_63 : STD_LOGIC; 
  signal Mantisa_1_0_IBUF_88 : STD_LOGIC; 
  signal Mantisa_1_10_IBUF_89 : STD_LOGIC; 
  signal Mantisa_1_11_IBUF_90 : STD_LOGIC; 
  signal Mantisa_1_12_IBUF_91 : STD_LOGIC; 
  signal Mantisa_1_13_IBUF_92 : STD_LOGIC; 
  signal Mantisa_1_14_IBUF_93 : STD_LOGIC; 
  signal Mantisa_1_15_IBUF_94 : STD_LOGIC; 
  signal Mantisa_1_16_IBUF_95 : STD_LOGIC; 
  signal Mantisa_1_17_IBUF_96 : STD_LOGIC; 
  signal Mantisa_1_18_IBUF_97 : STD_LOGIC; 
  signal Mantisa_1_19_IBUF_98 : STD_LOGIC; 
  signal Mantisa_1_1_IBUF_99 : STD_LOGIC; 
  signal Mantisa_1_20_IBUF_100 : STD_LOGIC; 
  signal Mantisa_1_21_IBUF_101 : STD_LOGIC; 
  signal Mantisa_1_22_IBUF_102 : STD_LOGIC; 
  signal Mantisa_1_2_IBUF_103 : STD_LOGIC; 
  signal Mantisa_1_3_IBUF_104 : STD_LOGIC; 
  signal Mantisa_1_4_IBUF_105 : STD_LOGIC; 
  signal Mantisa_1_5_IBUF_106 : STD_LOGIC; 
  signal Mantisa_1_6_IBUF_107 : STD_LOGIC; 
  signal Mantisa_1_7_IBUF_108 : STD_LOGIC; 
  signal Mantisa_1_8_IBUF_109 : STD_LOGIC; 
  signal Mantisa_1_9_IBUF_110 : STD_LOGIC; 
  signal Mantisa_2_0_IBUF_134 : STD_LOGIC; 
  signal Mantisa_2_10_IBUF_135 : STD_LOGIC; 
  signal Mantisa_2_11_IBUF_136 : STD_LOGIC; 
  signal Mantisa_2_12_IBUF_137 : STD_LOGIC; 
  signal Mantisa_2_13_IBUF_138 : STD_LOGIC; 
  signal Mantisa_2_14_IBUF_139 : STD_LOGIC; 
  signal Mantisa_2_15_IBUF_140 : STD_LOGIC; 
  signal Mantisa_2_16_IBUF_141 : STD_LOGIC; 
  signal Mantisa_2_17_IBUF_142 : STD_LOGIC; 
  signal Mantisa_2_18_IBUF_143 : STD_LOGIC; 
  signal Mantisa_2_19_IBUF_144 : STD_LOGIC; 
  signal Mantisa_2_1_IBUF_145 : STD_LOGIC; 
  signal Mantisa_2_20_IBUF_146 : STD_LOGIC; 
  signal Mantisa_2_21_IBUF_147 : STD_LOGIC; 
  signal Mantisa_2_22_IBUF_148 : STD_LOGIC; 
  signal Mantisa_2_2_IBUF_149 : STD_LOGIC; 
  signal Mantisa_2_3_IBUF_150 : STD_LOGIC; 
  signal Mantisa_2_4_IBUF_151 : STD_LOGIC; 
  signal Mantisa_2_5_IBUF_152 : STD_LOGIC; 
  signal Mantisa_2_6_IBUF_153 : STD_LOGIC; 
  signal Mantisa_2_7_IBUF_154 : STD_LOGIC; 
  signal Mantisa_2_8_IBUF_155 : STD_LOGIC; 
  signal Mantisa_2_9_IBUF_156 : STD_LOGIC; 
  signal Mantisa_resta_0_OBUF_180 : STD_LOGIC; 
  signal Mantisa_resta_10_OBUF_181 : STD_LOGIC; 
  signal Mantisa_resta_11_OBUF_182 : STD_LOGIC; 
  signal Mantisa_resta_12_OBUF_183 : STD_LOGIC; 
  signal Mantisa_resta_13_OBUF_184 : STD_LOGIC; 
  signal Mantisa_resta_14_OBUF_185 : STD_LOGIC; 
  signal Mantisa_resta_15_OBUF_186 : STD_LOGIC; 
  signal Mantisa_resta_16_OBUF_187 : STD_LOGIC; 
  signal Mantisa_resta_17_OBUF_188 : STD_LOGIC; 
  signal Mantisa_resta_18_OBUF_189 : STD_LOGIC; 
  signal Mantisa_resta_19_OBUF_190 : STD_LOGIC; 
  signal Mantisa_resta_1_OBUF_191 : STD_LOGIC; 
  signal Mantisa_resta_20_OBUF_192 : STD_LOGIC; 
  signal Mantisa_resta_21_OBUF_193 : STD_LOGIC; 
  signal Mantisa_resta_22_OBUF_194 : STD_LOGIC; 
  signal Mantisa_resta_2_OBUF_195 : STD_LOGIC; 
  signal Mantisa_resta_3_OBUF_196 : STD_LOGIC; 
  signal Mantisa_resta_4_OBUF_197 : STD_LOGIC; 
  signal Mantisa_resta_5_OBUF_198 : STD_LOGIC; 
  signal Mantisa_resta_6_OBUF_199 : STD_LOGIC; 
  signal Mantisa_resta_7_OBUF_200 : STD_LOGIC; 
  signal Mantisa_resta_8_OBUF_201 : STD_LOGIC; 
  signal Mantisa_resta_9_OBUF_202 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal N104 : STD_LOGIC; 
  signal N106 : STD_LOGIC; 
  signal N108 : STD_LOGIC; 
  signal N13 : STD_LOGIC; 
  signal N151 : STD_LOGIC; 
  signal N152 : STD_LOGIC; 
  signal N160 : STD_LOGIC; 
  signal N164 : STD_LOGIC; 
  signal N168 : STD_LOGIC; 
  signal N169 : STD_LOGIC; 
  signal N171 : STD_LOGIC; 
  signal N173 : STD_LOGIC; 
  signal N174 : STD_LOGIC; 
  signal N176 : STD_LOGIC; 
  signal N183 : STD_LOGIC; 
  signal N186 : STD_LOGIC; 
  signal N188 : STD_LOGIC; 
  signal N192 : STD_LOGIC; 
  signal N194 : STD_LOGIC; 
  signal N196 : STD_LOGIC; 
  signal N197 : STD_LOGIC; 
  signal N202 : STD_LOGIC; 
  signal N206 : STD_LOGIC; 
  signal N208 : STD_LOGIC; 
  signal N21 : STD_LOGIC; 
  signal N210 : STD_LOGIC; 
  signal N218 : STD_LOGIC; 
  signal N219 : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal N220 : STD_LOGIC; 
  signal N221 : STD_LOGIC; 
  signal N222 : STD_LOGIC; 
  signal N223 : STD_LOGIC; 
  signal N224 : STD_LOGIC; 
  signal N225 : STD_LOGIC; 
  signal N226 : STD_LOGIC; 
  signal N227 : STD_LOGIC; 
  signal N228 : STD_LOGIC; 
  signal N229 : STD_LOGIC; 
  signal N230 : STD_LOGIC; 
  signal N231 : STD_LOGIC; 
  signal N232 : STD_LOGIC; 
  signal N233 : STD_LOGIC; 
  signal N234 : STD_LOGIC; 
  signal N235 : STD_LOGIC; 
  signal N236 : STD_LOGIC; 
  signal N237 : STD_LOGIC; 
  signal N238 : STD_LOGIC; 
  signal N239 : STD_LOGIC; 
  signal N240 : STD_LOGIC; 
  signal N241 : STD_LOGIC; 
  signal N242 : STD_LOGIC; 
  signal N243 : STD_LOGIC; 
  signal N244 : STD_LOGIC; 
  signal N245 : STD_LOGIC; 
  signal N246 : STD_LOGIC; 
  signal N247 : STD_LOGIC; 
  signal N248 : STD_LOGIC; 
  signal N249 : STD_LOGIC; 
  signal N25 : STD_LOGIC; 
  signal N250 : STD_LOGIC; 
  signal N251 : STD_LOGIC; 
  signal N252 : STD_LOGIC; 
  signal N253 : STD_LOGIC; 
  signal N254 : STD_LOGIC; 
  signal N255 : STD_LOGIC; 
  signal N256 : STD_LOGIC; 
  signal N257 : STD_LOGIC; 
  signal N258 : STD_LOGIC; 
  signal N259 : STD_LOGIC; 
  signal N260 : STD_LOGIC; 
  signal N261 : STD_LOGIC; 
  signal N262 : STD_LOGIC; 
  signal N263 : STD_LOGIC; 
  signal N264 : STD_LOGIC; 
  signal N265 : STD_LOGIC; 
  signal N268 : STD_LOGIC; 
  signal N27 : STD_LOGIC; 
  signal N270 : STD_LOGIC; 
  signal N272 : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal N302 : STD_LOGIC; 
  signal N304 : STD_LOGIC; 
  signal N306 : STD_LOGIC; 
  signal N308 : STD_LOGIC; 
  signal N31 : STD_LOGIC; 
  signal N310 : STD_LOGIC; 
  signal N312 : STD_LOGIC; 
  signal N316 : STD_LOGIC; 
  signal N318 : STD_LOGIC; 
  signal N320 : STD_LOGIC; 
  signal N322 : STD_LOGIC; 
  signal N324 : STD_LOGIC; 
  signal N326 : STD_LOGIC; 
  signal N332 : STD_LOGIC; 
  signal N336 : STD_LOGIC; 
  signal N338 : STD_LOGIC; 
  signal N340 : STD_LOGIC; 
  signal N342 : STD_LOGIC; 
  signal N346 : STD_LOGIC; 
  signal N350 : STD_LOGIC; 
  signal N356 : STD_LOGIC; 
  signal N358 : STD_LOGIC; 
  signal N360 : STD_LOGIC; 
  signal N362 : STD_LOGIC; 
  signal N364 : STD_LOGIC; 
  signal N366 : STD_LOGIC; 
  signal N370 : STD_LOGIC; 
  signal N374 : STD_LOGIC; 
  signal N376 : STD_LOGIC; 
  signal N378 : STD_LOGIC; 
  signal N380 : STD_LOGIC; 
  signal N382 : STD_LOGIC; 
  signal N384 : STD_LOGIC; 
  signal N386 : STD_LOGIC; 
  signal N388 : STD_LOGIC; 
  signal N39 : STD_LOGIC; 
  signal N392 : STD_LOGIC; 
  signal N394 : STD_LOGIC; 
  signal N396 : STD_LOGIC; 
  signal N397 : STD_LOGIC; 
  signal N398 : STD_LOGIC; 
  signal N399 : STD_LOGIC; 
  signal N400 : STD_LOGIC; 
  signal N401 : STD_LOGIC; 
  signal N402 : STD_LOGIC; 
  signal N403 : STD_LOGIC; 
  signal N404 : STD_LOGIC; 
  signal N405 : STD_LOGIC; 
  signal N406 : STD_LOGIC; 
  signal N407 : STD_LOGIC; 
  signal N408 : STD_LOGIC; 
  signal N409 : STD_LOGIC; 
  signal N410 : STD_LOGIC; 
  signal N411 : STD_LOGIC; 
  signal N412 : STD_LOGIC; 
  signal N413 : STD_LOGIC; 
  signal N414 : STD_LOGIC; 
  signal N415 : STD_LOGIC; 
  signal N416 : STD_LOGIC; 
  signal N417 : STD_LOGIC; 
  signal N418 : STD_LOGIC; 
  signal N419 : STD_LOGIC; 
  signal N420 : STD_LOGIC; 
  signal N421 : STD_LOGIC; 
  signal N422 : STD_LOGIC; 
  signal N423 : STD_LOGIC; 
  signal N424 : STD_LOGIC; 
  signal N425 : STD_LOGIC; 
  signal N426 : STD_LOGIC; 
  signal N427 : STD_LOGIC; 
  signal N428 : STD_LOGIC; 
  signal N429 : STD_LOGIC; 
  signal N430 : STD_LOGIC; 
  signal N431 : STD_LOGIC; 
  signal N432 : STD_LOGIC; 
  signal N433 : STD_LOGIC; 
  signal N434 : STD_LOGIC; 
  signal N47 : STD_LOGIC; 
  signal N49 : STD_LOGIC; 
  signal N51 : STD_LOGIC; 
  signal N52 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal N75 : STD_LOGIC; 
  signal N81 : STD_LOGIC; 
  signal Operacion_0_IBUF_396 : STD_LOGIC; 
  signal Operacion_1_IBUF_397 : STD_LOGIC; 
  signal c0_A_max_0_and0000 : STD_LOGIC; 
  signal c0_A_max_0_or0000 : STD_LOGIC; 
  signal c0_A_max_10_and0000 : STD_LOGIC; 
  signal c0_A_max_10_or0000 : STD_LOGIC; 
  signal c0_A_max_11_and0000 : STD_LOGIC; 
  signal c0_A_max_11_or0000 : STD_LOGIC; 
  signal c0_A_max_12_and0000 : STD_LOGIC; 
  signal c0_A_max_12_or0000 : STD_LOGIC; 
  signal c0_A_max_13_and0000 : STD_LOGIC; 
  signal c0_A_max_13_or0000 : STD_LOGIC; 
  signal c0_A_max_14_and0000 : STD_LOGIC; 
  signal c0_A_max_14_or0000 : STD_LOGIC; 
  signal c0_A_max_15_and0000 : STD_LOGIC; 
  signal c0_A_max_15_or0000 : STD_LOGIC; 
  signal c0_A_max_16_and0000 : STD_LOGIC; 
  signal c0_A_max_16_or0000 : STD_LOGIC; 
  signal c0_A_max_17_and0000 : STD_LOGIC; 
  signal c0_A_max_17_or0000 : STD_LOGIC; 
  signal c0_A_max_18_and0000 : STD_LOGIC; 
  signal c0_A_max_18_or0000 : STD_LOGIC; 
  signal c0_A_max_19_and0000 : STD_LOGIC; 
  signal c0_A_max_19_or0000 : STD_LOGIC; 
  signal c0_A_max_1_and0000 : STD_LOGIC; 
  signal c0_A_max_1_or0000 : STD_LOGIC; 
  signal c0_A_max_20_and0000 : STD_LOGIC; 
  signal c0_A_max_20_or0000 : STD_LOGIC; 
  signal c0_A_max_21_and0000 : STD_LOGIC; 
  signal c0_A_max_21_or0000 : STD_LOGIC; 
  signal c0_A_max_22_and0000 : STD_LOGIC; 
  signal c0_A_max_22_or0000 : STD_LOGIC; 
  signal c0_A_max_23_and0000 : STD_LOGIC; 
  signal c0_A_max_23_or0000 : STD_LOGIC; 
  signal c0_A_max_2_and0000 : STD_LOGIC; 
  signal c0_A_max_2_or0000 : STD_LOGIC; 
  signal c0_A_max_3_and0000 : STD_LOGIC; 
  signal c0_A_max_3_or0000 : STD_LOGIC; 
  signal c0_A_max_4_and0000 : STD_LOGIC; 
  signal c0_A_max_4_or0000 : STD_LOGIC; 
  signal c0_A_max_5_and0000 : STD_LOGIC; 
  signal c0_A_max_5_or0000 : STD_LOGIC; 
  signal c0_A_max_6_and0000 : STD_LOGIC; 
  signal c0_A_max_6_or0000 : STD_LOGIC; 
  signal c0_A_max_7_and0000 : STD_LOGIC; 
  signal c0_A_max_7_or0000 : STD_LOGIC; 
  signal c0_A_max_8_and0000 : STD_LOGIC; 
  signal c0_A_max_8_or0000 : STD_LOGIC; 
  signal c0_A_max_9_and0000 : STD_LOGIC; 
  signal c0_A_max_9_or0000 : STD_LOGIC; 
  signal c0_B_despl_0_and0000 : STD_LOGIC; 
  signal c0_B_despl_0_or0000 : STD_LOGIC; 
  signal c0_B_despl_10_and0000 : STD_LOGIC; 
  signal c0_B_despl_10_or0000 : STD_LOGIC; 
  signal c0_B_despl_11_and0000 : STD_LOGIC; 
  signal c0_B_despl_11_or0000 : STD_LOGIC; 
  signal c0_B_despl_12_and0000 : STD_LOGIC; 
  signal c0_B_despl_12_or0000 : STD_LOGIC; 
  signal c0_B_despl_13_and0000 : STD_LOGIC; 
  signal c0_B_despl_13_or0000 : STD_LOGIC; 
  signal c0_B_despl_14_and0000 : STD_LOGIC; 
  signal c0_B_despl_14_or0000 : STD_LOGIC; 
  signal c0_B_despl_15_and0000 : STD_LOGIC; 
  signal c0_B_despl_15_or0000 : STD_LOGIC; 
  signal c0_B_despl_16_and0000 : STD_LOGIC; 
  signal c0_B_despl_16_or0000 : STD_LOGIC; 
  signal c0_B_despl_17_and0000 : STD_LOGIC; 
  signal c0_B_despl_17_or0000 : STD_LOGIC; 
  signal c0_B_despl_18_and0000 : STD_LOGIC; 
  signal c0_B_despl_18_or0000 : STD_LOGIC; 
  signal c0_B_despl_19_and0000 : STD_LOGIC; 
  signal c0_B_despl_19_or0000 : STD_LOGIC; 
  signal c0_B_despl_1_and0000 : STD_LOGIC; 
  signal c0_B_despl_1_or0000 : STD_LOGIC; 
  signal c0_B_despl_20_and0000 : STD_LOGIC; 
  signal c0_B_despl_20_or0000 : STD_LOGIC; 
  signal c0_B_despl_21_and0000 : STD_LOGIC; 
  signal c0_B_despl_21_or0000 : STD_LOGIC; 
  signal c0_B_despl_22_and0000 : STD_LOGIC; 
  signal c0_B_despl_22_or0000 : STD_LOGIC; 
  signal c0_B_despl_2_and0000 : STD_LOGIC; 
  signal c0_B_despl_2_or0000 : STD_LOGIC; 
  signal c0_B_despl_3_and0000 : STD_LOGIC; 
  signal c0_B_despl_3_or0000 : STD_LOGIC; 
  signal c0_B_despl_4_and0000 : STD_LOGIC; 
  signal c0_B_despl_4_or0000 : STD_LOGIC; 
  signal c0_B_despl_5_and0000 : STD_LOGIC; 
  signal c0_B_despl_5_or0000 : STD_LOGIC; 
  signal c0_B_despl_6_and0000 : STD_LOGIC; 
  signal c0_B_despl_6_or0000 : STD_LOGIC; 
  signal c0_B_despl_7_and0000 : STD_LOGIC; 
  signal c0_B_despl_7_or0000 : STD_LOGIC; 
  signal c0_B_despl_8_and0000 : STD_LOGIC; 
  signal c0_B_despl_8_or0000 : STD_LOGIC; 
  signal c0_B_despl_9_and0000 : STD_LOGIC; 
  signal c0_B_despl_9_or0000 : STD_LOGIC; 
  signal c0_B_despl_and0000 : STD_LOGIC; 
  signal c0_B_despl_cmp_eq0000 : STD_LOGIC; 
  signal c0_B_despl_cmp_eq00001 : STD_LOGIC; 
  signal c0_B_despl_cmp_eq00008120_566 : STD_LOGIC; 
  signal c0_B_despl_cmp_eq0000826_567 : STD_LOGIC; 
  signal c0_B_despl_cmp_eq0000853_568 : STD_LOGIC; 
  signal c0_B_despl_cmp_eq0000893_569 : STD_LOGIC; 
  signal c0_B_despl_cmp_lt0000 : STD_LOGIC; 
  signal c0_B_despl_or0001 : STD_LOGIC; 
  signal c0_B_despl_or0003_595 : STD_LOGIC; 
  signal c0_B_despl_or0006 : STD_LOGIC; 
  signal c0_N1 : STD_LOGIC; 
  signal c0_N11 : STD_LOGIC; 
  signal c0_N14 : STD_LOGIC; 
  signal c0_N16 : STD_LOGIC; 
  signal c0_N17 : STD_LOGIC; 
  signal c0_N3 : STD_LOGIC; 
  signal c0_N5 : STD_LOGIC; 
  signal c0_N6 : STD_LOGIC; 
  signal c0_N7 : STD_LOGIC; 
  signal c0_N8 : STD_LOGIC; 
  signal c0_N9 : STD_LOGIC; 
  signal c0_e_dif_0_and0000 : STD_LOGIC; 
  signal c0_e_dif_0_or0000 : STD_LOGIC; 
  signal c0_e_dif_1_and0000 : STD_LOGIC; 
  signal c0_e_dif_1_or0000 : STD_LOGIC; 
  signal c0_e_dif_2_and0000 : STD_LOGIC; 
  signal c0_e_dif_2_or0000 : STD_LOGIC; 
  signal c0_e_dif_3_and0000 : STD_LOGIC; 
  signal c0_e_dif_3_or0000 : STD_LOGIC; 
  signal c0_e_dif_4_and0000 : STD_LOGIC; 
  signal c0_e_dif_4_or0000 : STD_LOGIC; 
  signal c0_e_dif_5_and0000 : STD_LOGIC; 
  signal c0_e_dif_5_or0000 : STD_LOGIC; 
  signal c0_e_dif_6_and0000 : STD_LOGIC; 
  signal c0_e_dif_6_or0000 : STD_LOGIC; 
  signal c0_e_dif_7_and0000 : STD_LOGIC; 
  signal c0_e_dif_7_or0000 : STD_LOGIC; 
  signal c0_e_dif_mux0009_0_1_726 : STD_LOGIC; 
  signal c0_e_dif_mux0009_0_2_727 : STD_LOGIC; 
  signal c0_e_dif_mux0009_1_1_729 : STD_LOGIC; 
  signal c0_e_dif_mux0009_1_2_730 : STD_LOGIC; 
  signal c0_e_dif_mux0009_2_1_732 : STD_LOGIC; 
  signal c0_e_dif_mux0009_2_2_733 : STD_LOGIC; 
  signal c0_e_dif_mux0009_3_1_735 : STD_LOGIC; 
  signal c0_e_dif_mux0009_3_2_736 : STD_LOGIC; 
  signal c0_e_dif_mux0009_4_1_738 : STD_LOGIC; 
  signal c0_e_dif_mux0009_4_2_739 : STD_LOGIC; 
  signal c0_e_dif_mux0009_5_1_741 : STD_LOGIC; 
  signal c0_e_dif_mux0009_5_2_742 : STD_LOGIC; 
  signal c0_e_dif_mux0009_6_1_744 : STD_LOGIC; 
  signal c0_e_dif_mux0009_6_2_745 : STD_LOGIC; 
  signal c0_e_dif_mux0009_7_1_747 : STD_LOGIC; 
  signal c0_e_dif_mux0009_7_2_748 : STD_LOGIC; 
  signal c0_e_dif_or0000_749 : STD_LOGIC; 
  signal c0_e_dif_or0000217 : STD_LOGIC; 
  signal c0_e_dif_or00002171_751 : STD_LOGIC; 
  signal c0_e_dif_or0000232_752 : STD_LOGIC; 
  signal c0_e_dif_or0001 : STD_LOGIC; 
  signal c0_e_max_0_and0000 : STD_LOGIC; 
  signal c0_e_max_0_or0000 : STD_LOGIC; 
  signal c0_e_max_1_and0000 : STD_LOGIC; 
  signal c0_e_max_1_or0000 : STD_LOGIC; 
  signal c0_e_max_2_and0000 : STD_LOGIC; 
  signal c0_e_max_2_or0000 : STD_LOGIC; 
  signal c0_e_max_3_and0000 : STD_LOGIC; 
  signal c0_e_max_3_or0000 : STD_LOGIC; 
  signal c0_e_max_4_and0000 : STD_LOGIC; 
  signal c0_e_max_4_or0000 : STD_LOGIC; 
  signal c0_e_max_5_and0000 : STD_LOGIC; 
  signal c0_e_max_5_or0000 : STD_LOGIC; 
  signal c0_e_max_6_and0000 : STD_LOGIC; 
  signal c0_e_max_6_or0000 : STD_LOGIC; 
  signal c0_e_max_7_and0000 : STD_LOGIC; 
  signal c0_e_max_7_or0000 : STD_LOGIC; 
  signal c0_e_max_or0000 : STD_LOGIC; 
  signal c0_e_max_or0001 : STD_LOGIC; 
  signal c0_mux0000_and0000 : STD_LOGIC; 
  signal c0_mux0000_and0001 : STD_LOGIC; 
  signal c0_mux0000_and000117 : STD_LOGIC; 
  signal c0_mux0000_and0001171_791 : STD_LOGIC; 
  signal c0_mux0000_and000132_792 : STD_LOGIC; 
  signal c0_mux0000_and0002112_793 : STD_LOGIC; 
  signal c0_mux0000_and0002125_794 : STD_LOGIC; 
  signal c0_mux0000_and0002149_795 : STD_LOGIC; 
  signal c0_mux0000_and0002153_796 : STD_LOGIC; 
  signal c0_mux0000_and0002212_797 : STD_LOGIC; 
  signal c0_mux0000_and0002225_798 : STD_LOGIC; 
  signal c0_mux0000_and0003 : STD_LOGIC; 
  signal c0_mux0000_and0003112_800 : STD_LOGIC; 
  signal c0_mux0000_and0003125_801 : STD_LOGIC; 
  signal c0_mux0000_and0003149_802 : STD_LOGIC; 
  signal c0_mux0000_and0003153_803 : STD_LOGIC; 
  signal c0_mux0000_and0003212_804 : STD_LOGIC; 
  signal c0_mux0000_and0003225_805 : STD_LOGIC; 
  signal c0_mux0000_and0004 : STD_LOGIC; 
  signal c0_mux0000_and000418 : STD_LOGIC; 
  signal c0_mux0000_and0004181_808 : STD_LOGIC; 
  signal c0_mux0000_and00044_809 : STD_LOGIC; 
  signal c0_mux0000_and0005 : STD_LOGIC; 
  signal c0_mux0000_and000518 : STD_LOGIC; 
  signal c0_mux0000_and0005181_812 : STD_LOGIC; 
  signal c0_mux0000_and00054_813 : STD_LOGIC; 
  signal c0_mux0000_cmp_eq0004 : STD_LOGIC; 
  signal c0_mux0000_cmp_eq00044_815 : STD_LOGIC; 
  signal c0_mux0000_cmp_eq00049_816 : STD_LOGIC; 
  signal c0_mux0000_cmp_eq0006 : STD_LOGIC; 
  signal c0_mux0000_cmp_eq00064_818 : STD_LOGIC; 
  signal c0_mux0000_cmp_eq00069_819 : STD_LOGIC; 
  signal c0_mux0000_or0001 : STD_LOGIC; 
  signal c1_N01 : STD_LOGIC; 
  signal c1_Sh10_837 : STD_LOGIC; 
  signal c1_Sh11_838 : STD_LOGIC; 
  signal c1_Sh12_839 : STD_LOGIC; 
  signal c1_Sh13_840 : STD_LOGIC; 
  signal c1_Sh14_841 : STD_LOGIC; 
  signal c1_Sh15_842 : STD_LOGIC; 
  signal c1_Sh16_843 : STD_LOGIC; 
  signal c1_Sh17_844 : STD_LOGIC; 
  signal c1_Sh18_845 : STD_LOGIC; 
  signal c1_Sh19_846 : STD_LOGIC; 
  signal c1_Sh20_847 : STD_LOGIC; 
  signal c1_Sh21_848 : STD_LOGIC; 
  signal c1_Sh22 : STD_LOGIC; 
  signal c1_Sh23 : STD_LOGIC; 
  signal c1_Sh4_851 : STD_LOGIC; 
  signal c1_Sh40 : STD_LOGIC; 
  signal c1_Sh41 : STD_LOGIC; 
  signal c1_Sh42 : STD_LOGIC; 
  signal c1_Sh43 : STD_LOGIC; 
  signal c1_Sh5_856 : STD_LOGIC; 
  signal c1_Sh6_857 : STD_LOGIC; 
  signal c1_Sh7_858 : STD_LOGIC; 
  signal c1_Sh8_859 : STD_LOGIC; 
  signal c1_Sh9_860 : STD_LOGIC; 
  signal c1_num_desp_aux_0_1_862 : STD_LOGIC; 
  signal c1_num_desp_aux_0_2_863 : STD_LOGIC; 
  signal c1_num_desp_aux_0_3_864 : STD_LOGIC; 
  signal c1_num_desp_aux_1_1_866 : STD_LOGIC; 
  signal c1_num_desp_aux_cmp_le0000 : STD_LOGIC; 
  signal c1_num_desp_aux_cmp_le00001 : STD_LOGIC; 
  signal c1_num_desp_aux_cmp_le000011_875 : STD_LOGIC; 
  signal c1_num_out_aux_or0000 : STD_LOGIC; 
  signal c1_num_out_aux_shift0001_0_120_902 : STD_LOGIC; 
  signal c1_num_out_aux_shift0001_0_27_903 : STD_LOGIC; 
  signal c1_num_out_aux_shift0001_0_42_904 : STD_LOGIC; 
  signal c1_num_out_aux_shift0001_0_74_905 : STD_LOGIC; 
  signal c1_num_out_aux_shift0001_0_8 : STD_LOGIC; 
  signal c1_num_out_aux_shift0001_10_43 : STD_LOGIC; 
  signal c1_num_out_aux_shift0001_13_20_912 : STD_LOGIC; 
  signal c1_num_out_aux_shift0001_13_5_913 : STD_LOGIC; 
  signal c1_num_out_aux_shift0001_1_27_921 : STD_LOGIC; 
  signal c1_num_out_aux_shift0001_1_42_922 : STD_LOGIC; 
  signal c1_num_out_aux_shift0001_2_27_928 : STD_LOGIC; 
  signal c1_num_out_aux_shift0001_2_42_929 : STD_LOGIC; 
  signal c1_num_out_aux_shift0001_3_27_931 : STD_LOGIC; 
  signal c1_num_out_aux_shift0001_3_42_932 : STD_LOGIC; 
  signal c1_num_out_aux_shift0001_4_59_934 : STD_LOGIC; 
  signal c1_num_out_aux_shift0001_5_59_936 : STD_LOGIC; 
  signal c1_num_out_aux_shift0001_6_12_938 : STD_LOGIC; 
  signal c1_num_out_aux_shift0001_6_59_939 : STD_LOGIC; 
  signal c1_num_out_aux_shift0001_7_12_941 : STD_LOGIC; 
  signal c1_num_out_aux_shift0001_7_59_942 : STD_LOGIC; 
  signal c2_Exp_max_rest_cmp_eq0000 : STD_LOGIC; 
  signal c2_Exp_max_rest_cmp_eq00001_954 : STD_LOGIC; 
  signal c2_Mantisa_desp_sum_not0001 : STD_LOGIC; 
  signal c2_Mantisa_desp_sum_not00011_1012 : STD_LOGIC; 
  signal c4_Exponente_final_0_20_1109 : STD_LOGIC; 
  signal c4_Exponente_final_0_28_1110 : STD_LOGIC; 
  signal c4_Exponente_final_0_38_1111 : STD_LOGIC; 
  signal c4_Exponente_final_0_43_1112 : STD_LOGIC; 
  signal c4_Exponente_final_0_48_1113 : STD_LOGIC; 
  signal c4_Exponente_final_0_6_1114 : STD_LOGIC; 
  signal c4_Exponente_final_0_64_1115 : STD_LOGIC; 
  signal c4_Exponente_final_0_81_1116 : STD_LOGIC; 
  signal c4_Exponente_final_0_95_1117 : STD_LOGIC; 
  signal c4_N01 : STD_LOGIC; 
  signal c4_N3 : STD_LOGIC; 
  signal c4_N5 : STD_LOGIC; 
  signal c6_Madd_contador_ceros_addsub0012_cy_0_Q : STD_LOGIC; 
  signal c6_Madd_contador_ceros_addsub0012_cy_2_Q : STD_LOGIC; 
  signal c6_Madd_contador_ceros_addsub0012_cy_2_1314_1176 : STD_LOGIC; 
  signal c6_Madd_contador_ceros_addsub0012_cy_2_1328 : STD_LOGIC; 
  signal c6_Madd_contador_ceros_addsub0012_cy_2_13281_1178 : STD_LOGIC; 
  signal c6_Madd_contador_ceros_addsub0012_cy_2_13282_1179 : STD_LOGIC; 
  signal c6_Madd_contador_ceros_addsub0014_cy_3_141_1181 : STD_LOGIC; 
  signal c6_Madd_contador_ceros_addsub0014_cy_3_169_1182 : STD_LOGIC; 
  signal c6_Madd_contador_ceros_addsub0015_cy_3_1133_1190 : STD_LOGIC; 
  signal c6_Madd_contador_ceros_addsub0015_cy_3_1136_1191 : STD_LOGIC; 
  signal c6_Madd_contador_ceros_addsub0015_cy_3_125_1192 : STD_LOGIC; 
  signal c6_Madd_contador_ceros_addsub0015_cy_3_191_1193 : STD_LOGIC; 
  signal c6_Madd_contador_ceros_addsub0016_cy_1_113_1197 : STD_LOGIC; 
  signal c6_Madd_contador_ceros_addsub0016_cy_1_151_1198 : STD_LOGIC; 
  signal c6_Madd_contador_ceros_addsub0018_cy_4_135_1207 : STD_LOGIC; 
  signal c6_Madd_contador_ceros_addsub0018_cy_4_165_1208 : STD_LOGIC; 
  signal c6_Madd_contador_ceros_addsub0018_cy_4_187_1209 : STD_LOGIC; 
  signal c6_Madd_contador_ceros_addsub0021_cy_5_135_1223 : STD_LOGIC; 
  signal c6_Madd_contador_ceros_addsub0021_cy_5_166_1224 : STD_LOGIC; 
  signal c6_Madd_contador_ceros_addsub0021_cy_5_195_1225 : STD_LOGIC; 
  signal c6_Mcompar_mantisa_aux_cmp_lt0000_cy_7_1 : STD_LOGIC; 
  signal c6_Mcompar_mantisa_aux_cmp_lt0000_lut_7_1_1264 : STD_LOGIC; 
  signal c6_N02 : STD_LOGIC; 
  signal c6_N10 : STD_LOGIC; 
  signal c6_N103 : STD_LOGIC; 
  signal c6_N104 : STD_LOGIC; 
  signal c6_N11 : STD_LOGIC; 
  signal c6_N110 : STD_LOGIC; 
  signal c6_N111 : STD_LOGIC; 
  signal c6_N113 : STD_LOGIC; 
  signal c6_N115 : STD_LOGIC; 
  signal c6_N12 : STD_LOGIC; 
  signal c6_N1210 : STD_LOGIC; 
  signal c6_N122 : STD_LOGIC; 
  signal c6_N123 : STD_LOGIC; 
  signal c6_N124 : STD_LOGIC; 
  signal c6_N126 : STD_LOGIC; 
  signal c6_N1281 : STD_LOGIC; 
  signal c6_N132 : STD_LOGIC; 
  signal c6_N135 : STD_LOGIC; 
  signal c6_N136 : STD_LOGIC; 
  signal c6_N137 : STD_LOGIC; 
  signal c6_N138 : STD_LOGIC; 
  signal c6_N139 : STD_LOGIC; 
  signal c6_N1391 : STD_LOGIC; 
  signal c6_N14 : STD_LOGIC; 
  signal c6_N141 : STD_LOGIC; 
  signal c6_N1431 : STD_LOGIC; 
  signal c6_N1481 : STD_LOGIC; 
  signal c6_N150 : STD_LOGIC; 
  signal c6_N151 : STD_LOGIC; 
  signal c6_N1511 : STD_LOGIC; 
  signal c6_N153 : STD_LOGIC; 
  signal c6_N155 : STD_LOGIC; 
  signal c6_N1551 : STD_LOGIC; 
  signal c6_N158 : STD_LOGIC; 
  signal c6_N1581 : STD_LOGIC; 
  signal c6_N160 : STD_LOGIC; 
  signal c6_N162 : STD_LOGIC; 
  signal c6_N163 : STD_LOGIC; 
  signal c6_N165 : STD_LOGIC; 
  signal c6_N17 : STD_LOGIC; 
  signal c6_N21 : STD_LOGIC; 
  signal c6_N23 : STD_LOGIC; 
  signal c6_N271 : STD_LOGIC; 
  signal c6_N28 : STD_LOGIC; 
  signal c6_N361 : STD_LOGIC; 
  signal c6_N37 : STD_LOGIC; 
  signal c6_N4 : STD_LOGIC; 
  signal c6_N40 : STD_LOGIC; 
  signal c6_N41 : STD_LOGIC; 
  signal c6_N42 : STD_LOGIC; 
  signal c6_N43 : STD_LOGIC; 
  signal c6_N44 : STD_LOGIC; 
  signal c6_N46 : STD_LOGIC; 
  signal c6_N47 : STD_LOGIC; 
  signal c6_N471 : STD_LOGIC; 
  signal c6_N49 : STD_LOGIC; 
  signal c6_N5 : STD_LOGIC; 
  signal c6_N52 : STD_LOGIC; 
  signal c6_N53 : STD_LOGIC; 
  signal c6_N54 : STD_LOGIC; 
  signal c6_N6 : STD_LOGIC; 
  signal c6_N63 : STD_LOGIC; 
  signal c6_N64 : STD_LOGIC; 
  signal c6_N661 : STD_LOGIC; 
  signal c6_N7 : STD_LOGIC; 
  signal c6_N73 : STD_LOGIC; 
  signal c6_N74 : STD_LOGIC; 
  signal c6_N75 : STD_LOGIC; 
  signal c6_N84 : STD_LOGIC; 
  signal c6_N87 : STD_LOGIC; 
  signal c6_N89 : STD_LOGIC; 
  signal c6_N90 : STD_LOGIC; 
  signal c6_N921 : STD_LOGIC; 
  signal c6_N96 : STD_LOGIC; 
  signal c6_Sh11 : STD_LOGIC; 
  signal c6_Sh111_1354 : STD_LOGIC; 
  signal c6_Sh112_1355 : STD_LOGIC; 
  signal c6_Sh4 : STD_LOGIC; 
  signal c6_Sh5 : STD_LOGIC; 
  signal c6_Sh6 : STD_LOGIC; 
  signal c6_Sh7 : STD_LOGIC; 
  signal c6_contador_ceros_mux0018_0_14_1360 : STD_LOGIC; 
  signal c6_contador_ceros_mux0018_0_2 : STD_LOGIC; 
  signal c6_contador_ceros_mux0018_0_23 : STD_LOGIC; 
  signal c6_contador_ceros_mux0018_1_9_1363 : STD_LOGIC; 
  signal c6_contador_ceros_mux0022_0_14_1364 : STD_LOGIC; 
  signal c6_contador_ceros_mux0022_0_33_1365 : STD_LOGIC; 
  signal c6_contador_ceros_mux0026_4_5 : STD_LOGIC; 
  signal c6_contador_ceros_mux0030_1_10_1367 : STD_LOGIC; 
  signal c6_contador_ceros_mux0030_1_25_1368 : STD_LOGIC; 
  signal c6_contador_ceros_mux0030_1_37_1369 : STD_LOGIC; 
  signal c6_contador_ceros_mux0030_1_80_1370 : STD_LOGIC; 
  signal c6_contador_ceros_mux0030_1_96_1371 : STD_LOGIC; 
  signal c6_contador_ceros_mux0030_2_1_1372 : STD_LOGIC; 
  signal c6_contador_ceros_mux0030_2_133_1373 : STD_LOGIC; 
  signal c6_contador_ceros_mux0030_2_14_1374 : STD_LOGIC; 
  signal c6_contador_ceros_mux0030_2_173_1375 : STD_LOGIC; 
  signal c6_contador_ceros_mux0030_2_189_1376 : STD_LOGIC; 
  signal c6_contador_ceros_mux0030_2_33_1377 : STD_LOGIC; 
  signal c6_contador_ceros_mux0030_2_74_1378 : STD_LOGIC; 
  signal c6_contador_ceros_mux0034_5_14_1380 : STD_LOGIC; 
  signal c6_contador_ceros_mux0036_1_20_1381 : STD_LOGIC; 
  signal c6_contador_ceros_mux0036_1_33_1382 : STD_LOGIC; 
  signal c6_contador_ceros_mux0036_1_5_1383 : STD_LOGIC; 
  signal c6_contador_ceros_mux0036_4_0 : STD_LOGIC; 
  signal c6_contador_ceros_mux0036_4_77_1385 : STD_LOGIC; 
  signal c6_contador_ceros_mux0038_5_4 : STD_LOGIC; 
  signal c6_contador_ceros_mux0038_6_21_1387 : STD_LOGIC; 
  signal c6_contador_ceros_mux0038_6_27_1388 : STD_LOGIC; 
  signal c6_contador_ceros_mux0038_6_54_1389 : STD_LOGIC; 
  signal c6_contador_ceros_mux0038_6_68_1390 : STD_LOGIC; 
  signal c6_contador_ceros_mux0046_0_1_1391 : STD_LOGIC; 
  signal c6_contador_ceros_mux0046_1_1 : STD_LOGIC; 
  signal c6_contador_ceros_mux0046_2_1 : STD_LOGIC; 
  signal c6_contador_ceros_mux0046_3_1 : STD_LOGIC; 
  signal c6_contador_ceros_mux0046_4_1 : STD_LOGIC; 
  signal c6_contador_ceros_mux0046_7_45_1399 : STD_LOGIC; 
  signal c6_flag_mux0013 : STD_LOGIC; 
  signal c6_mantisa_aux_cmp_lt0000 : STD_LOGIC; 
  signal c6_mantisa_aux_or0000 : STD_LOGIC; 
  signal c6_mantisa_aux_or0000103_1434 : STD_LOGIC; 
  signal c6_mantisa_aux_or000012_1435 : STD_LOGIC; 
  signal c6_mantisa_aux_or000022_1436 : STD_LOGIC; 
  signal c6_mantisa_aux_or000046_1437 : STD_LOGIC; 
  signal c6_mantisa_aux_or000071_1438 : STD_LOGIC; 
  signal c6_mantisa_aux_or000082 : STD_LOGIC; 
  signal c6_mantisa_aux_or0000821_1440 : STD_LOGIC; 
  signal c6_mantisa_aux_or0000822_1441 : STD_LOGIC; 
  signal c6_mantisa_aux_shift0001_12_1_1446 : STD_LOGIC; 
  signal c6_mantisa_aux_shift0001_12_11 : STD_LOGIC; 
  signal c6_mantisa_aux_shift0001_12_111_1448 : STD_LOGIC; 
  signal c6_mantisa_aux_shift0001_12_2_1449 : STD_LOGIC; 
  signal c6_mantisa_aux_shift0001_13_1 : STD_LOGIC; 
  signal c6_mantisa_aux_shift0001_13_11_1452 : STD_LOGIC; 
  signal c6_mantisa_aux_shift0001_14_1_1454 : STD_LOGIC; 
  signal c6_mantisa_aux_shift0001_14_11 : STD_LOGIC; 
  signal c6_mantisa_aux_shift0001_14_111_1456 : STD_LOGIC; 
  signal c6_mantisa_aux_shift0001_14_2_1457 : STD_LOGIC; 
  signal c6_mantisa_aux_shift0001_17_19_1461 : STD_LOGIC; 
  signal c6_mantisa_aux_shift0001_17_30_1462 : STD_LOGIC; 
  signal c6_mantisa_aux_shift0001_19_214_1465 : STD_LOGIC; 
  signal c6_mantisa_aux_shift0001_19_217_1466 : STD_LOGIC; 
  signal c6_mantisa_aux_shift0001_19_261 : STD_LOGIC; 
  signal c6_mantisa_aux_shift0001_19_2611_1468 : STD_LOGIC; 
  signal c6_mantisa_aux_shift0001_19_2612_1469 : STD_LOGIC; 
  signal c6_mantisa_aux_shift0001_19_85 : STD_LOGIC; 
  signal c6_mantisa_aux_shift0001_19_851_1471 : STD_LOGIC; 
  signal c6_mantisa_aux_shift0001_19_852_1472 : STD_LOGIC; 
  signal c6_mantisa_aux_shift0001_20_20_1475 : STD_LOGIC; 
  signal c6_mantisa_aux_shift0001_20_319 : STD_LOGIC; 
  signal c6_mantisa_aux_shift0001_20_328_1477 : STD_LOGIC; 
  signal c6_mantisa_aux_shift0001_20_373_1478 : STD_LOGIC; 
  signal c6_mantisa_aux_shift0001_20_42_1479 : STD_LOGIC; 
  signal c6_mantisa_aux_shift0001_21_2 : STD_LOGIC; 
  signal c6_mantisa_aux_shift0001_21_21_1482 : STD_LOGIC; 
  signal c6_mantisa_aux_shift0001_21_23 : STD_LOGIC; 
  signal c6_mantisa_aux_shift0001_21_231_1484 : STD_LOGIC; 
  signal c6_mantisa_aux_shift0001_21_232_1485 : STD_LOGIC; 
  signal c6_mantisa_aux_shift0001_21_3 : STD_LOGIC; 
  signal c6_mantisa_aux_shift0001_21_31_1487 : STD_LOGIC; 
  signal c6_mantisa_aux_shift0001_21_4 : STD_LOGIC; 
  signal c6_mantisa_aux_shift0001_21_41_1489 : STD_LOGIC; 
  signal c6_mantisa_aux_shift0001_21_6136_SW0 : STD_LOGIC; 
  signal c6_mantisa_aux_shift0001_21_6136_SW01_1491 : STD_LOGIC; 
  signal c6_mantisa_aux_shift0001_22_128 : STD_LOGIC; 
  signal c6_mantisa_aux_shift0001_22_1281_1494 : STD_LOGIC; 
  signal c6_mantisa_aux_shift0001_22_1282_1495 : STD_LOGIC; 
  signal c6_mantisa_aux_shift0001_22_28 : STD_LOGIC; 
  signal c6_mantisa_aux_shift0001_22_281_1497 : STD_LOGIC; 
  signal c6_mantisa_aux_shift0001_22_282_1498 : STD_LOGIC; 
  signal c6_mantisa_aux_shift0001_22_59 : STD_LOGIC; 
  signal c6_mantisa_aux_shift0001_22_591_1500 : STD_LOGIC; 
  signal c6_mantisa_aux_shift0001_22_592_1501 : STD_LOGIC; 
  signal c6_mantisa_aux_shift0001_22_77 : STD_LOGIC; 
  signal c6_mantisa_aux_shift0001_22_771_1503 : STD_LOGIC; 
  signal error_resta_OBUF_1537 : STD_LOGIC; 
  signal c0_A_max : STD_LOGIC_VECTOR ( 22 downto 0 ); 
  signal c0_A_max_mux0009 : STD_LOGIC_VECTOR ( 23 downto 0 ); 
  signal c0_B_despl : STD_LOGIC_VECTOR ( 23 downto 0 ); 
  signal c0_B_despl_mux0009 : STD_LOGIC_VECTOR ( 22 downto 0 ); 
  signal c0_Mcompar_B_despl_cmp_lt0000_cy : STD_LOGIC_VECTOR ( 22 downto 0 ); 
  signal c0_Mcompar_B_despl_cmp_lt0000_lut : STD_LOGIC_VECTOR ( 22 downto 0 ); 
  signal c0_Mcompar_mux0000_cmp_gt0000_cy : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal c0_Mcompar_mux0000_cmp_gt0000_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal c0_Mcompar_mux0000_cmp_lt0000_cy : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal c0_Mcompar_mux0000_cmp_lt0000_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal c0_Msub_mux0002_addsub0000_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal c0_Msub_mux0002_addsub0000_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal c0_e_dif : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal c0_e_dif_mux0009 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal c0_e_max : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal c0_e_max_mux0009 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal c0_mux0002_addsub0000 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal c0_mux0002_mux0000 : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal c1_num_desp_aux : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal c1_num_out_aux : STD_LOGIC_VECTOR ( 23 downto 0 ); 
  signal c1_num_out_aux_shift0001 : STD_LOGIC_VECTOR ( 23 downto 0 ); 
  signal c2_Exp_max_rest : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal c2_Exp_max_sum : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal c2_Mantisa_desp_rest : STD_LOGIC_VECTOR ( 23 downto 0 ); 
  signal c2_Mantisa_desp_sum : STD_LOGIC_VECTOR ( 23 downto 0 ); 
  signal c2_Mantisa_max_rest : STD_LOGIC_VECTOR ( 23 downto 0 ); 
  signal c2_Mantisa_max_sum : STD_LOGIC_VECTOR ( 23 downto 0 ); 
  signal c3_Madd_num_out_S_cy : STD_LOGIC_VECTOR ( 23 downto 0 ); 
  signal c3_Madd_num_out_S_lut : STD_LOGIC_VECTOR ( 23 downto 0 ); 
  signal c5_Msub_num_out_R_cy : STD_LOGIC_VECTOR ( 22 downto 0 ); 
  signal c5_Msub_num_out_R_lut : STD_LOGIC_VECTOR ( 23 downto 0 ); 
  signal c6_Madd_contador_ceros_addsub0007_cy : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal c6_Madd_contador_ceros_addsub0007_lut : STD_LOGIC_VECTOR ( 3 downto 1 ); 
  signal c6_Madd_contador_ceros_addsub0011_cy : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal c6_Madd_contador_ceros_addsub0014_cy : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal c6_Madd_contador_ceros_addsub0014_lut : STD_LOGIC_VECTOR ( 5 downto 1 ); 
  signal c6_Madd_contador_ceros_addsub0015_cy : STD_LOGIC_VECTOR ( 3 downto 2 ); 
  signal c6_Madd_contador_ceros_addsub0015_lut : STD_LOGIC_VECTOR ( 4 downto 3 ); 
  signal c6_Madd_contador_ceros_addsub0016_cy : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal c6_Madd_contador_ceros_addsub0016_lut : STD_LOGIC_VECTOR ( 3 downto 1 ); 
  signal c6_Madd_contador_ceros_addsub0017_cy : STD_LOGIC_VECTOR ( 4 downto 4 ); 
  signal c6_Madd_contador_ceros_addsub0017_lut : STD_LOGIC_VECTOR ( 7 downto 5 ); 
  signal c6_Madd_contador_ceros_addsub0018_cy : STD_LOGIC_VECTOR ( 4 downto 4 ); 
  signal c6_Madd_contador_ceros_addsub0018_lut : STD_LOGIC_VECTOR ( 5 downto 5 ); 
  signal c6_Madd_contador_ceros_addsub0019_cy : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal c6_Madd_contador_ceros_addsub0019_lut : STD_LOGIC_VECTOR ( 4 downto 1 ); 
  signal c6_Madd_contador_ceros_addsub0020_cy : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal c6_Madd_contador_ceros_addsub0020_lut : STD_LOGIC_VECTOR ( 4 downto 1 ); 
  signal c6_Madd_contador_ceros_addsub0021_cy : STD_LOGIC_VECTOR ( 5 downto 4 ); 
  signal c6_Madd_contador_ceros_addsub0021_lut : STD_LOGIC_VECTOR ( 7 downto 5 ); 
  signal c6_Madd_contador_ceros_addsub0022_cy : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal c6_Madd_contador_ceros_addsub0022_lut : STD_LOGIC_VECTOR ( 4 downto 4 ); 
  signal c6_Mcompar_error_cmp_gt0000_cy : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal c6_Mcompar_error_cmp_gt0000_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal c6_Mcompar_mantisa_aux_cmp_lt0000_cy : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal c6_Mcompar_mantisa_aux_cmp_lt0000_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal c6_Msub_exponente_out_addsub0000_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal c6_Msub_exponente_out_addsub0000_lut : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal c6_contador_ceros_mux0030 : STD_LOGIC_VECTOR ( 4 downto 4 ); 
  signal c6_contador_ceros_mux0046 : STD_LOGIC_VECTOR ( 7 downto 5 ); 
  signal c6_exponente_out_addsub0000 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal c6_mantisa_aux : STD_LOGIC_VECTOR ( 22 downto 0 ); 
  signal c6_mantisa_aux_shift0001 : STD_LOGIC_VECTOR ( 22 downto 0 ); 
  signal despl_mux_Mdesp : STD_LOGIC_VECTOR ( 23 downto 0 ); 
  signal rest_norm_M : STD_LOGIC_VECTOR ( 23 downto 0 ); 
  signal sum_resul_M : STD_LOGIC_VECTOR ( 23 downto 1 ); 
begin
  XST_GND : GND
    port map (
      G => N0
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  c5_Msub_num_out_R_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => c2_Mantisa_max_rest(0),
      I1 => c2_Mantisa_desp_rest(0),
      O => c5_Msub_num_out_R_lut(0)
    );
  c5_Msub_num_out_R_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => c2_Mantisa_max_rest(0),
      S => c5_Msub_num_out_R_lut(0),
      O => c5_Msub_num_out_R_cy(0)
    );
  c5_Msub_num_out_R_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => c5_Msub_num_out_R_lut(0),
      O => rest_norm_M(0)
    );
  c5_Msub_num_out_R_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => c2_Mantisa_max_rest(1),
      I1 => c2_Mantisa_desp_rest(1),
      O => c5_Msub_num_out_R_lut(1)
    );
  c5_Msub_num_out_R_cy_1_Q : MUXCY
    port map (
      CI => c5_Msub_num_out_R_cy(0),
      DI => c2_Mantisa_max_rest(1),
      S => c5_Msub_num_out_R_lut(1),
      O => c5_Msub_num_out_R_cy(1)
    );
  c5_Msub_num_out_R_xor_1_Q : XORCY
    port map (
      CI => c5_Msub_num_out_R_cy(0),
      LI => c5_Msub_num_out_R_lut(1),
      O => rest_norm_M(1)
    );
  c5_Msub_num_out_R_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => c2_Mantisa_max_rest(2),
      I1 => c2_Mantisa_desp_rest(2),
      O => c5_Msub_num_out_R_lut(2)
    );
  c5_Msub_num_out_R_cy_2_Q : MUXCY
    port map (
      CI => c5_Msub_num_out_R_cy(1),
      DI => c2_Mantisa_max_rest(2),
      S => c5_Msub_num_out_R_lut(2),
      O => c5_Msub_num_out_R_cy(2)
    );
  c5_Msub_num_out_R_xor_2_Q : XORCY
    port map (
      CI => c5_Msub_num_out_R_cy(1),
      LI => c5_Msub_num_out_R_lut(2),
      O => rest_norm_M(2)
    );
  c5_Msub_num_out_R_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => c2_Mantisa_max_rest(3),
      I1 => c2_Mantisa_desp_rest(3),
      O => c5_Msub_num_out_R_lut(3)
    );
  c5_Msub_num_out_R_cy_3_Q : MUXCY
    port map (
      CI => c5_Msub_num_out_R_cy(2),
      DI => c2_Mantisa_max_rest(3),
      S => c5_Msub_num_out_R_lut(3),
      O => c5_Msub_num_out_R_cy(3)
    );
  c5_Msub_num_out_R_xor_3_Q : XORCY
    port map (
      CI => c5_Msub_num_out_R_cy(2),
      LI => c5_Msub_num_out_R_lut(3),
      O => rest_norm_M(3)
    );
  c5_Msub_num_out_R_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => c2_Mantisa_max_rest(4),
      I1 => c2_Mantisa_desp_rest(4),
      O => c5_Msub_num_out_R_lut(4)
    );
  c5_Msub_num_out_R_cy_4_Q : MUXCY
    port map (
      CI => c5_Msub_num_out_R_cy(3),
      DI => c2_Mantisa_max_rest(4),
      S => c5_Msub_num_out_R_lut(4),
      O => c5_Msub_num_out_R_cy(4)
    );
  c5_Msub_num_out_R_xor_4_Q : XORCY
    port map (
      CI => c5_Msub_num_out_R_cy(3),
      LI => c5_Msub_num_out_R_lut(4),
      O => rest_norm_M(4)
    );
  c5_Msub_num_out_R_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => c2_Mantisa_max_rest(5),
      I1 => c2_Mantisa_desp_rest(5),
      O => c5_Msub_num_out_R_lut(5)
    );
  c5_Msub_num_out_R_cy_5_Q : MUXCY
    port map (
      CI => c5_Msub_num_out_R_cy(4),
      DI => c2_Mantisa_max_rest(5),
      S => c5_Msub_num_out_R_lut(5),
      O => c5_Msub_num_out_R_cy(5)
    );
  c5_Msub_num_out_R_xor_5_Q : XORCY
    port map (
      CI => c5_Msub_num_out_R_cy(4),
      LI => c5_Msub_num_out_R_lut(5),
      O => rest_norm_M(5)
    );
  c5_Msub_num_out_R_lut_6_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => c2_Mantisa_max_rest(6),
      I1 => c2_Mantisa_desp_rest(6),
      O => c5_Msub_num_out_R_lut(6)
    );
  c5_Msub_num_out_R_cy_6_Q : MUXCY
    port map (
      CI => c5_Msub_num_out_R_cy(5),
      DI => c2_Mantisa_max_rest(6),
      S => c5_Msub_num_out_R_lut(6),
      O => c5_Msub_num_out_R_cy(6)
    );
  c5_Msub_num_out_R_xor_6_Q : XORCY
    port map (
      CI => c5_Msub_num_out_R_cy(5),
      LI => c5_Msub_num_out_R_lut(6),
      O => rest_norm_M(6)
    );
  c5_Msub_num_out_R_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => c2_Mantisa_max_rest(7),
      I1 => c2_Mantisa_desp_rest(7),
      O => c5_Msub_num_out_R_lut(7)
    );
  c5_Msub_num_out_R_cy_7_Q : MUXCY
    port map (
      CI => c5_Msub_num_out_R_cy(6),
      DI => c2_Mantisa_max_rest(7),
      S => c5_Msub_num_out_R_lut(7),
      O => c5_Msub_num_out_R_cy(7)
    );
  c5_Msub_num_out_R_xor_7_Q : XORCY
    port map (
      CI => c5_Msub_num_out_R_cy(6),
      LI => c5_Msub_num_out_R_lut(7),
      O => rest_norm_M(7)
    );
  c5_Msub_num_out_R_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => c2_Mantisa_max_rest(8),
      I1 => c2_Mantisa_desp_rest(8),
      O => c5_Msub_num_out_R_lut(8)
    );
  c5_Msub_num_out_R_cy_8_Q : MUXCY
    port map (
      CI => c5_Msub_num_out_R_cy(7),
      DI => c2_Mantisa_max_rest(8),
      S => c5_Msub_num_out_R_lut(8),
      O => c5_Msub_num_out_R_cy(8)
    );
  c5_Msub_num_out_R_xor_8_Q : XORCY
    port map (
      CI => c5_Msub_num_out_R_cy(7),
      LI => c5_Msub_num_out_R_lut(8),
      O => rest_norm_M(8)
    );
  c5_Msub_num_out_R_lut_9_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => c2_Mantisa_max_rest(9),
      I1 => c2_Mantisa_desp_rest(9),
      O => c5_Msub_num_out_R_lut(9)
    );
  c5_Msub_num_out_R_cy_9_Q : MUXCY
    port map (
      CI => c5_Msub_num_out_R_cy(8),
      DI => c2_Mantisa_max_rest(9),
      S => c5_Msub_num_out_R_lut(9),
      O => c5_Msub_num_out_R_cy(9)
    );
  c5_Msub_num_out_R_xor_9_Q : XORCY
    port map (
      CI => c5_Msub_num_out_R_cy(8),
      LI => c5_Msub_num_out_R_lut(9),
      O => rest_norm_M(9)
    );
  c5_Msub_num_out_R_lut_10_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => c2_Mantisa_max_rest(10),
      I1 => c2_Mantisa_desp_rest(10),
      O => c5_Msub_num_out_R_lut(10)
    );
  c5_Msub_num_out_R_cy_10_Q : MUXCY
    port map (
      CI => c5_Msub_num_out_R_cy(9),
      DI => c2_Mantisa_max_rest(10),
      S => c5_Msub_num_out_R_lut(10),
      O => c5_Msub_num_out_R_cy(10)
    );
  c5_Msub_num_out_R_xor_10_Q : XORCY
    port map (
      CI => c5_Msub_num_out_R_cy(9),
      LI => c5_Msub_num_out_R_lut(10),
      O => rest_norm_M(10)
    );
  c5_Msub_num_out_R_lut_11_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => c2_Mantisa_max_rest(11),
      I1 => c2_Mantisa_desp_rest(11),
      O => c5_Msub_num_out_R_lut(11)
    );
  c5_Msub_num_out_R_cy_11_Q : MUXCY
    port map (
      CI => c5_Msub_num_out_R_cy(10),
      DI => c2_Mantisa_max_rest(11),
      S => c5_Msub_num_out_R_lut(11),
      O => c5_Msub_num_out_R_cy(11)
    );
  c5_Msub_num_out_R_xor_11_Q : XORCY
    port map (
      CI => c5_Msub_num_out_R_cy(10),
      LI => c5_Msub_num_out_R_lut(11),
      O => rest_norm_M(11)
    );
  c5_Msub_num_out_R_lut_12_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => c2_Mantisa_max_rest(12),
      I1 => c2_Mantisa_desp_rest(12),
      O => c5_Msub_num_out_R_lut(12)
    );
  c5_Msub_num_out_R_cy_12_Q : MUXCY
    port map (
      CI => c5_Msub_num_out_R_cy(11),
      DI => c2_Mantisa_max_rest(12),
      S => c5_Msub_num_out_R_lut(12),
      O => c5_Msub_num_out_R_cy(12)
    );
  c5_Msub_num_out_R_xor_12_Q : XORCY
    port map (
      CI => c5_Msub_num_out_R_cy(11),
      LI => c5_Msub_num_out_R_lut(12),
      O => rest_norm_M(12)
    );
  c5_Msub_num_out_R_lut_13_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => c2_Mantisa_max_rest(13),
      I1 => c2_Mantisa_desp_rest(13),
      O => c5_Msub_num_out_R_lut(13)
    );
  c5_Msub_num_out_R_cy_13_Q : MUXCY
    port map (
      CI => c5_Msub_num_out_R_cy(12),
      DI => c2_Mantisa_max_rest(13),
      S => c5_Msub_num_out_R_lut(13),
      O => c5_Msub_num_out_R_cy(13)
    );
  c5_Msub_num_out_R_xor_13_Q : XORCY
    port map (
      CI => c5_Msub_num_out_R_cy(12),
      LI => c5_Msub_num_out_R_lut(13),
      O => rest_norm_M(13)
    );
  c5_Msub_num_out_R_lut_14_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => c2_Mantisa_max_rest(14),
      I1 => c2_Mantisa_desp_rest(14),
      O => c5_Msub_num_out_R_lut(14)
    );
  c5_Msub_num_out_R_cy_14_Q : MUXCY
    port map (
      CI => c5_Msub_num_out_R_cy(13),
      DI => c2_Mantisa_max_rest(14),
      S => c5_Msub_num_out_R_lut(14),
      O => c5_Msub_num_out_R_cy(14)
    );
  c5_Msub_num_out_R_xor_14_Q : XORCY
    port map (
      CI => c5_Msub_num_out_R_cy(13),
      LI => c5_Msub_num_out_R_lut(14),
      O => rest_norm_M(14)
    );
  c5_Msub_num_out_R_lut_15_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => c2_Mantisa_max_rest(15),
      I1 => c2_Mantisa_desp_rest(15),
      O => c5_Msub_num_out_R_lut(15)
    );
  c5_Msub_num_out_R_cy_15_Q : MUXCY
    port map (
      CI => c5_Msub_num_out_R_cy(14),
      DI => c2_Mantisa_max_rest(15),
      S => c5_Msub_num_out_R_lut(15),
      O => c5_Msub_num_out_R_cy(15)
    );
  c5_Msub_num_out_R_xor_15_Q : XORCY
    port map (
      CI => c5_Msub_num_out_R_cy(14),
      LI => c5_Msub_num_out_R_lut(15),
      O => rest_norm_M(15)
    );
  c5_Msub_num_out_R_lut_16_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => c2_Mantisa_max_rest(16),
      I1 => c2_Mantisa_desp_rest(16),
      O => c5_Msub_num_out_R_lut(16)
    );
  c5_Msub_num_out_R_cy_16_Q : MUXCY
    port map (
      CI => c5_Msub_num_out_R_cy(15),
      DI => c2_Mantisa_max_rest(16),
      S => c5_Msub_num_out_R_lut(16),
      O => c5_Msub_num_out_R_cy(16)
    );
  c5_Msub_num_out_R_xor_16_Q : XORCY
    port map (
      CI => c5_Msub_num_out_R_cy(15),
      LI => c5_Msub_num_out_R_lut(16),
      O => rest_norm_M(16)
    );
  c5_Msub_num_out_R_lut_17_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => c2_Mantisa_max_rest(17),
      I1 => c2_Mantisa_desp_rest(17),
      O => c5_Msub_num_out_R_lut(17)
    );
  c5_Msub_num_out_R_cy_17_Q : MUXCY
    port map (
      CI => c5_Msub_num_out_R_cy(16),
      DI => c2_Mantisa_max_rest(17),
      S => c5_Msub_num_out_R_lut(17),
      O => c5_Msub_num_out_R_cy(17)
    );
  c5_Msub_num_out_R_xor_17_Q : XORCY
    port map (
      CI => c5_Msub_num_out_R_cy(16),
      LI => c5_Msub_num_out_R_lut(17),
      O => rest_norm_M(17)
    );
  c5_Msub_num_out_R_lut_18_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => c2_Mantisa_max_rest(18),
      I1 => c2_Mantisa_desp_rest(18),
      O => c5_Msub_num_out_R_lut(18)
    );
  c5_Msub_num_out_R_cy_18_Q : MUXCY
    port map (
      CI => c5_Msub_num_out_R_cy(17),
      DI => c2_Mantisa_max_rest(18),
      S => c5_Msub_num_out_R_lut(18),
      O => c5_Msub_num_out_R_cy(18)
    );
  c5_Msub_num_out_R_xor_18_Q : XORCY
    port map (
      CI => c5_Msub_num_out_R_cy(17),
      LI => c5_Msub_num_out_R_lut(18),
      O => rest_norm_M(18)
    );
  c5_Msub_num_out_R_lut_19_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => c2_Mantisa_max_rest(19),
      I1 => c2_Mantisa_desp_rest(19),
      O => c5_Msub_num_out_R_lut(19)
    );
  c5_Msub_num_out_R_cy_19_Q : MUXCY
    port map (
      CI => c5_Msub_num_out_R_cy(18),
      DI => c2_Mantisa_max_rest(19),
      S => c5_Msub_num_out_R_lut(19),
      O => c5_Msub_num_out_R_cy(19)
    );
  c5_Msub_num_out_R_xor_19_Q : XORCY
    port map (
      CI => c5_Msub_num_out_R_cy(18),
      LI => c5_Msub_num_out_R_lut(19),
      O => rest_norm_M(19)
    );
  c5_Msub_num_out_R_lut_20_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => c2_Mantisa_max_rest(20),
      I1 => c2_Mantisa_desp_rest(20),
      O => c5_Msub_num_out_R_lut(20)
    );
  c5_Msub_num_out_R_cy_20_Q : MUXCY
    port map (
      CI => c5_Msub_num_out_R_cy(19),
      DI => c2_Mantisa_max_rest(20),
      S => c5_Msub_num_out_R_lut(20),
      O => c5_Msub_num_out_R_cy(20)
    );
  c5_Msub_num_out_R_xor_20_Q : XORCY
    port map (
      CI => c5_Msub_num_out_R_cy(19),
      LI => c5_Msub_num_out_R_lut(20),
      O => rest_norm_M(20)
    );
  c5_Msub_num_out_R_lut_21_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => c2_Mantisa_max_rest(21),
      I1 => c2_Mantisa_desp_rest(21),
      O => c5_Msub_num_out_R_lut(21)
    );
  c5_Msub_num_out_R_cy_21_Q : MUXCY
    port map (
      CI => c5_Msub_num_out_R_cy(20),
      DI => c2_Mantisa_max_rest(21),
      S => c5_Msub_num_out_R_lut(21),
      O => c5_Msub_num_out_R_cy(21)
    );
  c5_Msub_num_out_R_xor_21_Q : XORCY
    port map (
      CI => c5_Msub_num_out_R_cy(20),
      LI => c5_Msub_num_out_R_lut(21),
      O => rest_norm_M(21)
    );
  c5_Msub_num_out_R_lut_22_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => c2_Mantisa_max_rest(22),
      I1 => c2_Mantisa_desp_rest(22),
      O => c5_Msub_num_out_R_lut(22)
    );
  c5_Msub_num_out_R_cy_22_Q : MUXCY
    port map (
      CI => c5_Msub_num_out_R_cy(21),
      DI => c2_Mantisa_max_rest(22),
      S => c5_Msub_num_out_R_lut(22),
      O => c5_Msub_num_out_R_cy(22)
    );
  c5_Msub_num_out_R_xor_22_Q : XORCY
    port map (
      CI => c5_Msub_num_out_R_cy(21),
      LI => c5_Msub_num_out_R_lut(22),
      O => rest_norm_M(22)
    );
  c5_Msub_num_out_R_lut_23_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => c2_Mantisa_max_rest(23),
      I1 => c2_Mantisa_desp_rest(23),
      O => c5_Msub_num_out_R_lut(23)
    );
  c5_Msub_num_out_R_xor_23_Q : XORCY
    port map (
      CI => c5_Msub_num_out_R_cy(22),
      LI => c5_Msub_num_out_R_lut(23),
      O => rest_norm_M(23)
    );
  c3_Madd_num_out_S_lut_0_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => c2_Mantisa_desp_sum(0),
      I1 => c2_Mantisa_max_sum(0),
      O => c3_Madd_num_out_S_lut(0)
    );
  c3_Madd_num_out_S_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => c2_Mantisa_desp_sum(0),
      S => c3_Madd_num_out_S_lut(0),
      O => c3_Madd_num_out_S_cy(0)
    );
  c3_Madd_num_out_S_lut_1_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => c2_Mantisa_desp_sum(1),
      I1 => c2_Mantisa_max_sum(1),
      O => c3_Madd_num_out_S_lut(1)
    );
  c3_Madd_num_out_S_cy_1_Q : MUXCY
    port map (
      CI => c3_Madd_num_out_S_cy(0),
      DI => c2_Mantisa_desp_sum(1),
      S => c3_Madd_num_out_S_lut(1),
      O => c3_Madd_num_out_S_cy(1)
    );
  c3_Madd_num_out_S_xor_1_Q : XORCY
    port map (
      CI => c3_Madd_num_out_S_cy(0),
      LI => c3_Madd_num_out_S_lut(1),
      O => sum_resul_M(1)
    );
  c3_Madd_num_out_S_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => c2_Mantisa_desp_sum(2),
      I1 => c2_Mantisa_max_sum(2),
      O => c3_Madd_num_out_S_lut(2)
    );
  c3_Madd_num_out_S_cy_2_Q : MUXCY
    port map (
      CI => c3_Madd_num_out_S_cy(1),
      DI => c2_Mantisa_desp_sum(2),
      S => c3_Madd_num_out_S_lut(2),
      O => c3_Madd_num_out_S_cy(2)
    );
  c3_Madd_num_out_S_xor_2_Q : XORCY
    port map (
      CI => c3_Madd_num_out_S_cy(1),
      LI => c3_Madd_num_out_S_lut(2),
      O => sum_resul_M(2)
    );
  c3_Madd_num_out_S_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => c2_Mantisa_desp_sum(3),
      I1 => c2_Mantisa_max_sum(3),
      O => c3_Madd_num_out_S_lut(3)
    );
  c3_Madd_num_out_S_cy_3_Q : MUXCY
    port map (
      CI => c3_Madd_num_out_S_cy(2),
      DI => c2_Mantisa_desp_sum(3),
      S => c3_Madd_num_out_S_lut(3),
      O => c3_Madd_num_out_S_cy(3)
    );
  c3_Madd_num_out_S_xor_3_Q : XORCY
    port map (
      CI => c3_Madd_num_out_S_cy(2),
      LI => c3_Madd_num_out_S_lut(3),
      O => sum_resul_M(3)
    );
  c3_Madd_num_out_S_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => c2_Mantisa_desp_sum(4),
      I1 => c2_Mantisa_max_sum(4),
      O => c3_Madd_num_out_S_lut(4)
    );
  c3_Madd_num_out_S_cy_4_Q : MUXCY
    port map (
      CI => c3_Madd_num_out_S_cy(3),
      DI => c2_Mantisa_desp_sum(4),
      S => c3_Madd_num_out_S_lut(4),
      O => c3_Madd_num_out_S_cy(4)
    );
  c3_Madd_num_out_S_xor_4_Q : XORCY
    port map (
      CI => c3_Madd_num_out_S_cy(3),
      LI => c3_Madd_num_out_S_lut(4),
      O => sum_resul_M(4)
    );
  c3_Madd_num_out_S_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => c2_Mantisa_desp_sum(5),
      I1 => c2_Mantisa_max_sum(5),
      O => c3_Madd_num_out_S_lut(5)
    );
  c3_Madd_num_out_S_cy_5_Q : MUXCY
    port map (
      CI => c3_Madd_num_out_S_cy(4),
      DI => c2_Mantisa_desp_sum(5),
      S => c3_Madd_num_out_S_lut(5),
      O => c3_Madd_num_out_S_cy(5)
    );
  c3_Madd_num_out_S_xor_5_Q : XORCY
    port map (
      CI => c3_Madd_num_out_S_cy(4),
      LI => c3_Madd_num_out_S_lut(5),
      O => sum_resul_M(5)
    );
  c3_Madd_num_out_S_lut_6_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => c2_Mantisa_desp_sum(6),
      I1 => c2_Mantisa_max_sum(6),
      O => c3_Madd_num_out_S_lut(6)
    );
  c3_Madd_num_out_S_cy_6_Q : MUXCY
    port map (
      CI => c3_Madd_num_out_S_cy(5),
      DI => c2_Mantisa_desp_sum(6),
      S => c3_Madd_num_out_S_lut(6),
      O => c3_Madd_num_out_S_cy(6)
    );
  c3_Madd_num_out_S_xor_6_Q : XORCY
    port map (
      CI => c3_Madd_num_out_S_cy(5),
      LI => c3_Madd_num_out_S_lut(6),
      O => sum_resul_M(6)
    );
  c3_Madd_num_out_S_lut_7_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => c2_Mantisa_desp_sum(7),
      I1 => c2_Mantisa_max_sum(7),
      O => c3_Madd_num_out_S_lut(7)
    );
  c3_Madd_num_out_S_cy_7_Q : MUXCY
    port map (
      CI => c3_Madd_num_out_S_cy(6),
      DI => c2_Mantisa_desp_sum(7),
      S => c3_Madd_num_out_S_lut(7),
      O => c3_Madd_num_out_S_cy(7)
    );
  c3_Madd_num_out_S_xor_7_Q : XORCY
    port map (
      CI => c3_Madd_num_out_S_cy(6),
      LI => c3_Madd_num_out_S_lut(7),
      O => sum_resul_M(7)
    );
  c3_Madd_num_out_S_lut_8_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => c2_Mantisa_desp_sum(8),
      I1 => c2_Mantisa_max_sum(8),
      O => c3_Madd_num_out_S_lut(8)
    );
  c3_Madd_num_out_S_cy_8_Q : MUXCY
    port map (
      CI => c3_Madd_num_out_S_cy(7),
      DI => c2_Mantisa_desp_sum(8),
      S => c3_Madd_num_out_S_lut(8),
      O => c3_Madd_num_out_S_cy(8)
    );
  c3_Madd_num_out_S_xor_8_Q : XORCY
    port map (
      CI => c3_Madd_num_out_S_cy(7),
      LI => c3_Madd_num_out_S_lut(8),
      O => sum_resul_M(8)
    );
  c3_Madd_num_out_S_lut_9_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => c2_Mantisa_desp_sum(9),
      I1 => c2_Mantisa_max_sum(9),
      O => c3_Madd_num_out_S_lut(9)
    );
  c3_Madd_num_out_S_cy_9_Q : MUXCY
    port map (
      CI => c3_Madd_num_out_S_cy(8),
      DI => c2_Mantisa_desp_sum(9),
      S => c3_Madd_num_out_S_lut(9),
      O => c3_Madd_num_out_S_cy(9)
    );
  c3_Madd_num_out_S_xor_9_Q : XORCY
    port map (
      CI => c3_Madd_num_out_S_cy(8),
      LI => c3_Madd_num_out_S_lut(9),
      O => sum_resul_M(9)
    );
  c3_Madd_num_out_S_lut_10_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => c2_Mantisa_desp_sum(10),
      I1 => c2_Mantisa_max_sum(10),
      O => c3_Madd_num_out_S_lut(10)
    );
  c3_Madd_num_out_S_cy_10_Q : MUXCY
    port map (
      CI => c3_Madd_num_out_S_cy(9),
      DI => c2_Mantisa_desp_sum(10),
      S => c3_Madd_num_out_S_lut(10),
      O => c3_Madd_num_out_S_cy(10)
    );
  c3_Madd_num_out_S_xor_10_Q : XORCY
    port map (
      CI => c3_Madd_num_out_S_cy(9),
      LI => c3_Madd_num_out_S_lut(10),
      O => sum_resul_M(10)
    );
  c3_Madd_num_out_S_lut_11_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => c2_Mantisa_desp_sum(11),
      I1 => c2_Mantisa_max_sum(11),
      O => c3_Madd_num_out_S_lut(11)
    );
  c3_Madd_num_out_S_cy_11_Q : MUXCY
    port map (
      CI => c3_Madd_num_out_S_cy(10),
      DI => c2_Mantisa_desp_sum(11),
      S => c3_Madd_num_out_S_lut(11),
      O => c3_Madd_num_out_S_cy(11)
    );
  c3_Madd_num_out_S_xor_11_Q : XORCY
    port map (
      CI => c3_Madd_num_out_S_cy(10),
      LI => c3_Madd_num_out_S_lut(11),
      O => sum_resul_M(11)
    );
  c3_Madd_num_out_S_lut_12_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => c2_Mantisa_desp_sum(12),
      I1 => c2_Mantisa_max_sum(12),
      O => c3_Madd_num_out_S_lut(12)
    );
  c3_Madd_num_out_S_cy_12_Q : MUXCY
    port map (
      CI => c3_Madd_num_out_S_cy(11),
      DI => c2_Mantisa_desp_sum(12),
      S => c3_Madd_num_out_S_lut(12),
      O => c3_Madd_num_out_S_cy(12)
    );
  c3_Madd_num_out_S_xor_12_Q : XORCY
    port map (
      CI => c3_Madd_num_out_S_cy(11),
      LI => c3_Madd_num_out_S_lut(12),
      O => sum_resul_M(12)
    );
  c3_Madd_num_out_S_lut_13_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => c2_Mantisa_desp_sum(13),
      I1 => c2_Mantisa_max_sum(13),
      O => c3_Madd_num_out_S_lut(13)
    );
  c3_Madd_num_out_S_cy_13_Q : MUXCY
    port map (
      CI => c3_Madd_num_out_S_cy(12),
      DI => c2_Mantisa_desp_sum(13),
      S => c3_Madd_num_out_S_lut(13),
      O => c3_Madd_num_out_S_cy(13)
    );
  c3_Madd_num_out_S_xor_13_Q : XORCY
    port map (
      CI => c3_Madd_num_out_S_cy(12),
      LI => c3_Madd_num_out_S_lut(13),
      O => sum_resul_M(13)
    );
  c3_Madd_num_out_S_lut_14_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => c2_Mantisa_desp_sum(14),
      I1 => c2_Mantisa_max_sum(14),
      O => c3_Madd_num_out_S_lut(14)
    );
  c3_Madd_num_out_S_cy_14_Q : MUXCY
    port map (
      CI => c3_Madd_num_out_S_cy(13),
      DI => c2_Mantisa_desp_sum(14),
      S => c3_Madd_num_out_S_lut(14),
      O => c3_Madd_num_out_S_cy(14)
    );
  c3_Madd_num_out_S_xor_14_Q : XORCY
    port map (
      CI => c3_Madd_num_out_S_cy(13),
      LI => c3_Madd_num_out_S_lut(14),
      O => sum_resul_M(14)
    );
  c3_Madd_num_out_S_lut_15_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => c2_Mantisa_desp_sum(15),
      I1 => c2_Mantisa_max_sum(15),
      O => c3_Madd_num_out_S_lut(15)
    );
  c3_Madd_num_out_S_cy_15_Q : MUXCY
    port map (
      CI => c3_Madd_num_out_S_cy(14),
      DI => c2_Mantisa_desp_sum(15),
      S => c3_Madd_num_out_S_lut(15),
      O => c3_Madd_num_out_S_cy(15)
    );
  c3_Madd_num_out_S_xor_15_Q : XORCY
    port map (
      CI => c3_Madd_num_out_S_cy(14),
      LI => c3_Madd_num_out_S_lut(15),
      O => sum_resul_M(15)
    );
  c3_Madd_num_out_S_lut_16_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => c2_Mantisa_desp_sum(16),
      I1 => c2_Mantisa_max_sum(16),
      O => c3_Madd_num_out_S_lut(16)
    );
  c3_Madd_num_out_S_cy_16_Q : MUXCY
    port map (
      CI => c3_Madd_num_out_S_cy(15),
      DI => c2_Mantisa_desp_sum(16),
      S => c3_Madd_num_out_S_lut(16),
      O => c3_Madd_num_out_S_cy(16)
    );
  c3_Madd_num_out_S_xor_16_Q : XORCY
    port map (
      CI => c3_Madd_num_out_S_cy(15),
      LI => c3_Madd_num_out_S_lut(16),
      O => sum_resul_M(16)
    );
  c3_Madd_num_out_S_lut_17_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => c2_Mantisa_desp_sum(17),
      I1 => c2_Mantisa_max_sum(17),
      O => c3_Madd_num_out_S_lut(17)
    );
  c3_Madd_num_out_S_cy_17_Q : MUXCY
    port map (
      CI => c3_Madd_num_out_S_cy(16),
      DI => c2_Mantisa_desp_sum(17),
      S => c3_Madd_num_out_S_lut(17),
      O => c3_Madd_num_out_S_cy(17)
    );
  c3_Madd_num_out_S_xor_17_Q : XORCY
    port map (
      CI => c3_Madd_num_out_S_cy(16),
      LI => c3_Madd_num_out_S_lut(17),
      O => sum_resul_M(17)
    );
  c3_Madd_num_out_S_lut_18_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => c2_Mantisa_desp_sum(18),
      I1 => c2_Mantisa_max_sum(18),
      O => c3_Madd_num_out_S_lut(18)
    );
  c3_Madd_num_out_S_cy_18_Q : MUXCY
    port map (
      CI => c3_Madd_num_out_S_cy(17),
      DI => c2_Mantisa_desp_sum(18),
      S => c3_Madd_num_out_S_lut(18),
      O => c3_Madd_num_out_S_cy(18)
    );
  c3_Madd_num_out_S_xor_18_Q : XORCY
    port map (
      CI => c3_Madd_num_out_S_cy(17),
      LI => c3_Madd_num_out_S_lut(18),
      O => sum_resul_M(18)
    );
  c3_Madd_num_out_S_lut_19_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => c2_Mantisa_desp_sum(19),
      I1 => c2_Mantisa_max_sum(19),
      O => c3_Madd_num_out_S_lut(19)
    );
  c3_Madd_num_out_S_cy_19_Q : MUXCY
    port map (
      CI => c3_Madd_num_out_S_cy(18),
      DI => c2_Mantisa_desp_sum(19),
      S => c3_Madd_num_out_S_lut(19),
      O => c3_Madd_num_out_S_cy(19)
    );
  c3_Madd_num_out_S_xor_19_Q : XORCY
    port map (
      CI => c3_Madd_num_out_S_cy(18),
      LI => c3_Madd_num_out_S_lut(19),
      O => sum_resul_M(19)
    );
  c3_Madd_num_out_S_lut_20_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => c2_Mantisa_desp_sum(20),
      I1 => c2_Mantisa_max_sum(20),
      O => c3_Madd_num_out_S_lut(20)
    );
  c3_Madd_num_out_S_cy_20_Q : MUXCY
    port map (
      CI => c3_Madd_num_out_S_cy(19),
      DI => c2_Mantisa_desp_sum(20),
      S => c3_Madd_num_out_S_lut(20),
      O => c3_Madd_num_out_S_cy(20)
    );
  c3_Madd_num_out_S_xor_20_Q : XORCY
    port map (
      CI => c3_Madd_num_out_S_cy(19),
      LI => c3_Madd_num_out_S_lut(20),
      O => sum_resul_M(20)
    );
  c3_Madd_num_out_S_lut_21_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => c2_Mantisa_desp_sum(21),
      I1 => c2_Mantisa_max_sum(21),
      O => c3_Madd_num_out_S_lut(21)
    );
  c3_Madd_num_out_S_cy_21_Q : MUXCY
    port map (
      CI => c3_Madd_num_out_S_cy(20),
      DI => c2_Mantisa_desp_sum(21),
      S => c3_Madd_num_out_S_lut(21),
      O => c3_Madd_num_out_S_cy(21)
    );
  c3_Madd_num_out_S_xor_21_Q : XORCY
    port map (
      CI => c3_Madd_num_out_S_cy(20),
      LI => c3_Madd_num_out_S_lut(21),
      O => sum_resul_M(21)
    );
  c3_Madd_num_out_S_lut_22_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => c2_Mantisa_desp_sum(22),
      I1 => c2_Mantisa_max_sum(22),
      O => c3_Madd_num_out_S_lut(22)
    );
  c3_Madd_num_out_S_cy_22_Q : MUXCY
    port map (
      CI => c3_Madd_num_out_S_cy(21),
      DI => c2_Mantisa_desp_sum(22),
      S => c3_Madd_num_out_S_lut(22),
      O => c3_Madd_num_out_S_cy(22)
    );
  c3_Madd_num_out_S_xor_22_Q : XORCY
    port map (
      CI => c3_Madd_num_out_S_cy(21),
      LI => c3_Madd_num_out_S_lut(22),
      O => sum_resul_M(22)
    );
  c3_Madd_num_out_S_lut_23_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => c2_Mantisa_desp_sum(23),
      I1 => c2_Mantisa_max_sum(23),
      O => c3_Madd_num_out_S_lut(23)
    );
  c3_Madd_num_out_S_cy_23_Q : MUXCY
    port map (
      CI => c3_Madd_num_out_S_cy(22),
      DI => c2_Mantisa_desp_sum(23),
      S => c3_Madd_num_out_S_lut(23),
      O => c3_Madd_num_out_S_cy(23)
    );
  c3_Madd_num_out_S_xor_23_Q : XORCY
    port map (
      CI => c3_Madd_num_out_S_cy(22),
      LI => c3_Madd_num_out_S_lut(23),
      O => sum_resul_M(23)
    );
  c0_B_despl_23 : LDCPE
    port map (
      CLR => c0_A_max_23_or0000,
      D => c0_A_max_mux0009(23),
      G => c0_B_despl_cmp_eq0000,
      GE => c0_B_despl_cmp_lt0000,
      PRE => c0_A_max_23_and0000,
      Q => c0_B_despl(23)
    );
  c0_B_despl_22 : LDCPE
    port map (
      CLR => c0_B_despl_22_or0000,
      D => c0_B_despl_mux0009(22),
      G => c0_B_despl_cmp_eq0000,
      GE => c0_B_despl_cmp_lt0000,
      PRE => c0_B_despl_22_and0000,
      Q => c0_B_despl(22)
    );
  c0_B_despl_21 : LDCPE
    port map (
      CLR => c0_B_despl_21_or0000,
      D => c0_B_despl_mux0009(21),
      G => c0_B_despl_cmp_eq0000,
      GE => c0_B_despl_cmp_lt0000,
      PRE => c0_B_despl_21_and0000,
      Q => c0_B_despl(21)
    );
  c0_B_despl_20 : LDCPE
    port map (
      CLR => c0_B_despl_20_or0000,
      D => c0_B_despl_mux0009(20),
      G => c0_B_despl_cmp_eq0000,
      GE => c0_B_despl_cmp_lt0000,
      PRE => c0_B_despl_20_and0000,
      Q => c0_B_despl(20)
    );
  c0_B_despl_19 : LDCPE
    port map (
      CLR => c0_B_despl_19_or0000,
      D => c0_B_despl_mux0009(19),
      G => c0_B_despl_cmp_eq0000,
      GE => c0_B_despl_cmp_lt0000,
      PRE => c0_B_despl_19_and0000,
      Q => c0_B_despl(19)
    );
  c0_B_despl_18 : LDCPE
    port map (
      CLR => c0_B_despl_18_or0000,
      D => c0_B_despl_mux0009(18),
      G => c0_B_despl_cmp_eq0000,
      GE => c0_B_despl_cmp_lt0000,
      PRE => c0_B_despl_18_and0000,
      Q => c0_B_despl(18)
    );
  c0_B_despl_17 : LDCPE
    port map (
      CLR => c0_B_despl_17_or0000,
      D => c0_B_despl_mux0009(17),
      G => c0_B_despl_cmp_eq0000,
      GE => c0_B_despl_cmp_lt0000,
      PRE => c0_B_despl_17_and0000,
      Q => c0_B_despl(17)
    );
  c0_B_despl_16 : LDCPE
    port map (
      CLR => c0_B_despl_16_or0000,
      D => c0_B_despl_mux0009(16),
      G => c0_B_despl_cmp_eq0000,
      GE => c0_B_despl_cmp_lt0000,
      PRE => c0_B_despl_16_and0000,
      Q => c0_B_despl(16)
    );
  c0_B_despl_15 : LDCPE
    port map (
      CLR => c0_B_despl_15_or0000,
      D => c0_B_despl_mux0009(15),
      G => c0_B_despl_cmp_eq0000,
      GE => c0_B_despl_cmp_lt0000,
      PRE => c0_B_despl_15_and0000,
      Q => c0_B_despl(15)
    );
  c0_B_despl_14 : LDCPE
    port map (
      CLR => c0_B_despl_14_or0000,
      D => c0_B_despl_mux0009(14),
      G => c0_B_despl_cmp_eq0000,
      GE => c0_B_despl_cmp_lt0000,
      PRE => c0_B_despl_14_and0000,
      Q => c0_B_despl(14)
    );
  c0_B_despl_13 : LDCPE
    port map (
      CLR => c0_B_despl_13_or0000,
      D => c0_B_despl_mux0009(13),
      G => c0_B_despl_cmp_eq0000,
      GE => c0_B_despl_cmp_lt0000,
      PRE => c0_B_despl_13_and0000,
      Q => c0_B_despl(13)
    );
  c0_B_despl_12 : LDCPE
    port map (
      CLR => c0_B_despl_12_or0000,
      D => c0_B_despl_mux0009(12),
      G => c0_B_despl_cmp_eq0000,
      GE => c0_B_despl_cmp_lt0000,
      PRE => c0_B_despl_12_and0000,
      Q => c0_B_despl(12)
    );
  c0_B_despl_11 : LDCPE
    port map (
      CLR => c0_B_despl_11_or0000,
      D => c0_B_despl_mux0009(11),
      G => c0_B_despl_cmp_eq0000,
      GE => c0_B_despl_cmp_lt0000,
      PRE => c0_B_despl_11_and0000,
      Q => c0_B_despl(11)
    );
  c0_B_despl_10 : LDCPE
    port map (
      CLR => c0_B_despl_10_or0000,
      D => c0_B_despl_mux0009(10),
      G => c0_B_despl_cmp_eq0000,
      GE => c0_B_despl_cmp_lt0000,
      PRE => c0_B_despl_10_and0000,
      Q => c0_B_despl(10)
    );
  c0_B_despl_9 : LDCPE
    port map (
      CLR => c0_B_despl_9_or0000,
      D => c0_B_despl_mux0009(9),
      G => c0_B_despl_cmp_eq0000,
      GE => c0_B_despl_cmp_lt0000,
      PRE => c0_B_despl_9_and0000,
      Q => c0_B_despl(9)
    );
  c0_B_despl_8 : LDCPE
    port map (
      CLR => c0_B_despl_8_or0000,
      D => c0_B_despl_mux0009(8),
      G => c0_B_despl_cmp_eq0000,
      GE => c0_B_despl_cmp_lt0000,
      PRE => c0_B_despl_8_and0000,
      Q => c0_B_despl(8)
    );
  c0_B_despl_7 : LDCPE
    port map (
      CLR => c0_B_despl_7_or0000,
      D => c0_B_despl_mux0009(7),
      G => c0_B_despl_cmp_eq0000,
      GE => c0_B_despl_cmp_lt0000,
      PRE => c0_B_despl_7_and0000,
      Q => c0_B_despl(7)
    );
  c0_B_despl_6 : LDCPE
    port map (
      CLR => c0_B_despl_6_or0000,
      D => c0_B_despl_mux0009(6),
      G => c0_B_despl_cmp_eq0000,
      GE => c0_B_despl_cmp_lt0000,
      PRE => c0_B_despl_6_and0000,
      Q => c0_B_despl(6)
    );
  c0_B_despl_5 : LDCPE
    port map (
      CLR => c0_B_despl_5_or0000,
      D => c0_B_despl_mux0009(5),
      G => c0_B_despl_cmp_eq0000,
      GE => c0_B_despl_cmp_lt0000,
      PRE => c0_B_despl_5_and0000,
      Q => c0_B_despl(5)
    );
  c0_B_despl_4 : LDCPE
    port map (
      CLR => c0_B_despl_4_or0000,
      D => c0_B_despl_mux0009(4),
      G => c0_B_despl_cmp_eq0000,
      GE => c0_B_despl_cmp_lt0000,
      PRE => c0_B_despl_4_and0000,
      Q => c0_B_despl(4)
    );
  c0_B_despl_3 : LDCPE
    port map (
      CLR => c0_B_despl_3_or0000,
      D => c0_B_despl_mux0009(3),
      G => c0_B_despl_cmp_eq0000,
      GE => c0_B_despl_cmp_lt0000,
      PRE => c0_B_despl_3_and0000,
      Q => c0_B_despl(3)
    );
  c0_B_despl_2 : LDCPE
    port map (
      CLR => c0_B_despl_2_or0000,
      D => c0_B_despl_mux0009(2),
      G => c0_B_despl_cmp_eq0000,
      GE => c0_B_despl_cmp_lt0000,
      PRE => c0_B_despl_2_and0000,
      Q => c0_B_despl(2)
    );
  c0_B_despl_1 : LDCPE
    port map (
      CLR => c0_B_despl_1_or0000,
      D => c0_B_despl_mux0009(1),
      G => c0_B_despl_cmp_eq0000,
      GE => c0_B_despl_cmp_lt0000,
      PRE => c0_B_despl_1_and0000,
      Q => c0_B_despl(1)
    );
  c0_B_despl_0 : LDCPE
    port map (
      CLR => c0_B_despl_0_or0000,
      D => c0_B_despl_mux0009(0),
      G => c0_B_despl_cmp_eq0000,
      GE => c0_B_despl_cmp_lt0000,
      PRE => c0_B_despl_0_and0000,
      Q => c0_B_despl(0)
    );
  c0_A_max_22 : LDCPE
    port map (
      CLR => c0_A_max_22_or0000,
      D => c0_A_max_mux0009(22),
      G => c0_B_despl_cmp_eq0000,
      GE => c0_B_despl_cmp_lt0000,
      PRE => c0_A_max_22_and0000,
      Q => c0_A_max(22)
    );
  c0_A_max_21 : LDCPE
    port map (
      CLR => c0_A_max_21_or0000,
      D => c0_A_max_mux0009(21),
      G => c0_B_despl_cmp_eq0000,
      GE => c0_B_despl_cmp_lt0000,
      PRE => c0_A_max_21_and0000,
      Q => c0_A_max(21)
    );
  c0_A_max_20 : LDCPE
    port map (
      CLR => c0_A_max_20_or0000,
      D => c0_A_max_mux0009(20),
      G => c0_B_despl_cmp_eq0000,
      GE => c0_B_despl_cmp_lt0000,
      PRE => c0_A_max_20_and0000,
      Q => c0_A_max(20)
    );
  c0_A_max_19 : LDCPE
    port map (
      CLR => c0_A_max_19_or0000,
      D => c0_A_max_mux0009(19),
      G => c0_B_despl_cmp_eq0000,
      GE => c0_B_despl_cmp_lt0000,
      PRE => c0_A_max_19_and0000,
      Q => c0_A_max(19)
    );
  c0_A_max_18 : LDCPE
    port map (
      CLR => c0_A_max_18_or0000,
      D => c0_A_max_mux0009(18),
      G => c0_B_despl_cmp_eq0000,
      GE => c0_B_despl_cmp_lt0000,
      PRE => c0_A_max_18_and0000,
      Q => c0_A_max(18)
    );
  c0_A_max_17 : LDCPE
    port map (
      CLR => c0_A_max_17_or0000,
      D => c0_A_max_mux0009(17),
      G => c0_B_despl_cmp_eq0000,
      GE => c0_B_despl_cmp_lt0000,
      PRE => c0_A_max_17_and0000,
      Q => c0_A_max(17)
    );
  c0_A_max_16 : LDCPE
    port map (
      CLR => c0_A_max_16_or0000,
      D => c0_A_max_mux0009(16),
      G => c0_B_despl_cmp_eq0000,
      GE => c0_B_despl_cmp_lt0000,
      PRE => c0_A_max_16_and0000,
      Q => c0_A_max(16)
    );
  c0_A_max_15 : LDCPE
    port map (
      CLR => c0_A_max_15_or0000,
      D => c0_A_max_mux0009(15),
      G => c0_B_despl_cmp_eq0000,
      GE => c0_B_despl_cmp_lt0000,
      PRE => c0_A_max_15_and0000,
      Q => c0_A_max(15)
    );
  c0_A_max_14 : LDCPE
    port map (
      CLR => c0_A_max_14_or0000,
      D => c0_A_max_mux0009(14),
      G => c0_B_despl_cmp_eq0000,
      GE => c0_B_despl_cmp_lt0000,
      PRE => c0_A_max_14_and0000,
      Q => c0_A_max(14)
    );
  c0_A_max_13 : LDCPE
    port map (
      CLR => c0_A_max_13_or0000,
      D => c0_A_max_mux0009(13),
      G => c0_B_despl_cmp_eq0000,
      GE => c0_B_despl_cmp_lt0000,
      PRE => c0_A_max_13_and0000,
      Q => c0_A_max(13)
    );
  c0_A_max_12 : LDCPE
    port map (
      CLR => c0_A_max_12_or0000,
      D => c0_A_max_mux0009(12),
      G => c0_B_despl_cmp_eq0000,
      GE => c0_B_despl_cmp_lt0000,
      PRE => c0_A_max_12_and0000,
      Q => c0_A_max(12)
    );
  c0_A_max_11 : LDCPE
    port map (
      CLR => c0_A_max_11_or0000,
      D => c0_A_max_mux0009(11),
      G => c0_B_despl_cmp_eq0000,
      GE => c0_B_despl_cmp_lt0000,
      PRE => c0_A_max_11_and0000,
      Q => c0_A_max(11)
    );
  c0_A_max_10 : LDCPE
    port map (
      CLR => c0_A_max_10_or0000,
      D => c0_A_max_mux0009(10),
      G => c0_B_despl_cmp_eq0000,
      GE => c0_B_despl_cmp_lt0000,
      PRE => c0_A_max_10_and0000,
      Q => c0_A_max(10)
    );
  c0_A_max_9 : LDCPE
    port map (
      CLR => c0_A_max_9_or0000,
      D => c0_A_max_mux0009(9),
      G => c0_B_despl_cmp_eq0000,
      GE => c0_B_despl_cmp_lt0000,
      PRE => c0_A_max_9_and0000,
      Q => c0_A_max(9)
    );
  c0_A_max_8 : LDCPE
    port map (
      CLR => c0_A_max_8_or0000,
      D => c0_A_max_mux0009(8),
      G => c0_B_despl_cmp_eq0000,
      GE => c0_B_despl_cmp_lt0000,
      PRE => c0_A_max_8_and0000,
      Q => c0_A_max(8)
    );
  c0_A_max_7 : LDCPE
    port map (
      CLR => c0_A_max_7_or0000,
      D => c0_A_max_mux0009(7),
      G => c0_B_despl_cmp_eq0000,
      GE => c0_B_despl_cmp_lt0000,
      PRE => c0_A_max_7_and0000,
      Q => c0_A_max(7)
    );
  c0_A_max_6 : LDCPE
    port map (
      CLR => c0_A_max_6_or0000,
      D => c0_A_max_mux0009(6),
      G => c0_B_despl_cmp_eq0000,
      GE => c0_B_despl_cmp_lt0000,
      PRE => c0_A_max_6_and0000,
      Q => c0_A_max(6)
    );
  c0_A_max_5 : LDCPE
    port map (
      CLR => c0_A_max_5_or0000,
      D => c0_A_max_mux0009(5),
      G => c0_B_despl_cmp_eq0000,
      GE => c0_B_despl_cmp_lt0000,
      PRE => c0_A_max_5_and0000,
      Q => c0_A_max(5)
    );
  c0_A_max_4 : LDCPE
    port map (
      CLR => c0_A_max_4_or0000,
      D => c0_A_max_mux0009(4),
      G => c0_B_despl_cmp_eq0000,
      GE => c0_B_despl_cmp_lt0000,
      PRE => c0_A_max_4_and0000,
      Q => c0_A_max(4)
    );
  c0_A_max_3 : LDCPE
    port map (
      CLR => c0_A_max_3_or0000,
      D => c0_A_max_mux0009(3),
      G => c0_B_despl_cmp_eq0000,
      GE => c0_B_despl_cmp_lt0000,
      PRE => c0_A_max_3_and0000,
      Q => c0_A_max(3)
    );
  c0_A_max_2 : LDCPE
    port map (
      CLR => c0_A_max_2_or0000,
      D => c0_A_max_mux0009(2),
      G => c0_B_despl_cmp_eq0000,
      GE => c0_B_despl_cmp_lt0000,
      PRE => c0_A_max_2_and0000,
      Q => c0_A_max(2)
    );
  c0_A_max_1 : LDCPE
    port map (
      CLR => c0_A_max_1_or0000,
      D => c0_A_max_mux0009(1),
      G => c0_B_despl_cmp_eq0000,
      GE => c0_B_despl_cmp_lt0000,
      PRE => c0_A_max_1_and0000,
      Q => c0_A_max(1)
    );
  c0_A_max_0 : LDCPE
    port map (
      CLR => c0_A_max_0_or0000,
      D => c0_A_max_mux0009(0),
      G => c0_B_despl_cmp_eq0000,
      GE => c0_B_despl_cmp_lt0000,
      PRE => c0_A_max_0_and0000,
      Q => c0_A_max(0)
    );
  c0_e_dif_7 : LDCPE
    port map (
      CLR => c0_e_dif_7_or0000,
      D => c0_e_dif_mux0009(7),
      G => c0_B_despl_cmp_eq0000,
      GE => c0_B_despl_cmp_lt0000,
      PRE => c0_e_dif_7_and0000,
      Q => c0_e_dif(7)
    );
  c0_e_dif_6 : LDCPE
    port map (
      CLR => c0_e_dif_6_or0000,
      D => c0_e_dif_mux0009(6),
      G => c0_B_despl_cmp_eq0000,
      GE => c0_B_despl_cmp_lt0000,
      PRE => c0_e_dif_6_and0000,
      Q => c0_e_dif(6)
    );
  c0_e_dif_5 : LDCPE
    port map (
      CLR => c0_e_dif_5_or0000,
      D => c0_e_dif_mux0009(5),
      G => c0_B_despl_cmp_eq0000,
      GE => c0_B_despl_cmp_lt0000,
      PRE => c0_e_dif_5_and0000,
      Q => c0_e_dif(5)
    );
  c0_e_dif_4 : LDCPE
    port map (
      CLR => c0_e_dif_4_or0000,
      D => c0_e_dif_mux0009(4),
      G => c0_B_despl_cmp_eq0000,
      GE => c0_B_despl_cmp_lt0000,
      PRE => c0_e_dif_4_and0000,
      Q => c0_e_dif(4)
    );
  c0_e_dif_3 : LDCPE
    port map (
      CLR => c0_e_dif_3_or0000,
      D => c0_e_dif_mux0009(3),
      G => c0_B_despl_cmp_eq0000,
      GE => c0_B_despl_cmp_lt0000,
      PRE => c0_e_dif_3_and0000,
      Q => c0_e_dif(3)
    );
  c0_e_dif_2 : LDCPE
    port map (
      CLR => c0_e_dif_2_or0000,
      D => c0_e_dif_mux0009(2),
      G => c0_B_despl_cmp_eq0000,
      GE => c0_B_despl_cmp_lt0000,
      PRE => c0_e_dif_2_and0000,
      Q => c0_e_dif(2)
    );
  c0_e_dif_1 : LDCPE
    port map (
      CLR => c0_e_dif_1_or0000,
      D => c0_e_dif_mux0009(1),
      G => c0_B_despl_cmp_eq0000,
      GE => c0_B_despl_cmp_lt0000,
      PRE => c0_e_dif_1_and0000,
      Q => c0_e_dif(1)
    );
  c0_e_dif_0 : LDCPE
    port map (
      CLR => c0_e_dif_0_or0000,
      D => c0_e_dif_mux0009(0),
      G => c0_B_despl_cmp_eq0000,
      GE => c0_B_despl_cmp_lt0000,
      PRE => c0_e_dif_0_and0000,
      Q => c0_e_dif(0)
    );
  c0_e_max_7 : LDCPE
    port map (
      CLR => c0_e_max_7_or0000,
      D => c0_e_max_mux0009(7),
      G => c0_B_despl_cmp_eq0000,
      GE => c0_B_despl_cmp_lt0000,
      PRE => c0_e_max_7_and0000,
      Q => c0_e_max(7)
    );
  c0_e_max_6 : LDCPE
    port map (
      CLR => c0_e_max_6_or0000,
      D => c0_e_max_mux0009(6),
      G => c0_B_despl_cmp_eq0000,
      GE => c0_B_despl_cmp_lt0000,
      PRE => c0_e_max_6_and0000,
      Q => c0_e_max(6)
    );
  c0_e_max_5 : LDCPE
    port map (
      CLR => c0_e_max_5_or0000,
      D => c0_e_max_mux0009(5),
      G => c0_B_despl_cmp_eq0000,
      GE => c0_B_despl_cmp_lt0000,
      PRE => c0_e_max_5_and0000,
      Q => c0_e_max(5)
    );
  c0_e_max_4 : LDCPE
    port map (
      CLR => c0_e_max_4_or0000,
      D => c0_e_max_mux0009(4),
      G => c0_B_despl_cmp_eq0000,
      GE => c0_B_despl_cmp_lt0000,
      PRE => c0_e_max_4_and0000,
      Q => c0_e_max(4)
    );
  c0_e_max_3 : LDCPE
    port map (
      CLR => c0_e_max_3_or0000,
      D => c0_e_max_mux0009(3),
      G => c0_B_despl_cmp_eq0000,
      GE => c0_B_despl_cmp_lt0000,
      PRE => c0_e_max_3_and0000,
      Q => c0_e_max(3)
    );
  c0_e_max_2 : LDCPE
    port map (
      CLR => c0_e_max_2_or0000,
      D => c0_e_max_mux0009(2),
      G => c0_B_despl_cmp_eq0000,
      GE => c0_B_despl_cmp_lt0000,
      PRE => c0_e_max_2_and0000,
      Q => c0_e_max(2)
    );
  c0_e_max_1 : LDCPE
    port map (
      CLR => c0_e_max_1_or0000,
      D => c0_e_max_mux0009(1),
      G => c0_B_despl_cmp_eq0000,
      GE => c0_B_despl_cmp_lt0000,
      PRE => c0_e_max_1_and0000,
      Q => c0_e_max(1)
    );
  c0_e_max_0 : LDCPE
    port map (
      CLR => c0_e_max_0_or0000,
      D => c0_e_max_mux0009(0),
      G => c0_B_despl_cmp_eq0000,
      GE => c0_B_despl_cmp_lt0000,
      PRE => c0_e_max_0_and0000,
      Q => c0_e_max(0)
    );
  c0_Mcompar_mux0000_cmp_lt0000_cy_7_Q : MUXCY
    port map (
      CI => c0_Mcompar_mux0000_cmp_lt0000_cy(6),
      DI => Exponente_1_7_IBUF_15,
      S => c0_Mcompar_mux0000_cmp_lt0000_lut(7),
      O => c0_Mcompar_mux0000_cmp_lt0000_cy(7)
    );
  c0_Mcompar_mux0000_cmp_lt0000_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Exponente_1_7_IBUF_15,
      I1 => Exponente_2_7_IBUF_31,
      O => c0_Mcompar_mux0000_cmp_lt0000_lut(7)
    );
  c0_Mcompar_mux0000_cmp_lt0000_cy_6_Q : MUXCY
    port map (
      CI => c0_Mcompar_mux0000_cmp_lt0000_cy(5),
      DI => Exponente_1_6_IBUF_14,
      S => c0_Mcompar_mux0000_cmp_lt0000_lut(6),
      O => c0_Mcompar_mux0000_cmp_lt0000_cy(6)
    );
  c0_Mcompar_mux0000_cmp_lt0000_lut_6_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Exponente_1_6_IBUF_14,
      I1 => Exponente_2_6_IBUF_30,
      O => c0_Mcompar_mux0000_cmp_lt0000_lut(6)
    );
  c0_Mcompar_mux0000_cmp_lt0000_cy_5_Q : MUXCY
    port map (
      CI => c0_Mcompar_mux0000_cmp_lt0000_cy(4),
      DI => Exponente_1_5_IBUF_13,
      S => c0_Mcompar_mux0000_cmp_lt0000_lut(5),
      O => c0_Mcompar_mux0000_cmp_lt0000_cy(5)
    );
  c0_Mcompar_mux0000_cmp_lt0000_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Exponente_1_5_IBUF_13,
      I1 => Exponente_2_5_IBUF_29,
      O => c0_Mcompar_mux0000_cmp_lt0000_lut(5)
    );
  c0_Mcompar_mux0000_cmp_lt0000_cy_4_Q : MUXCY
    port map (
      CI => c0_Mcompar_mux0000_cmp_lt0000_cy(3),
      DI => Exponente_1_4_IBUF_12,
      S => c0_Mcompar_mux0000_cmp_lt0000_lut(4),
      O => c0_Mcompar_mux0000_cmp_lt0000_cy(4)
    );
  c0_Mcompar_mux0000_cmp_lt0000_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Exponente_1_4_IBUF_12,
      I1 => Exponente_2_4_IBUF_28,
      O => c0_Mcompar_mux0000_cmp_lt0000_lut(4)
    );
  c0_Mcompar_mux0000_cmp_lt0000_cy_3_Q : MUXCY
    port map (
      CI => c0_Mcompar_mux0000_cmp_lt0000_cy(2),
      DI => Exponente_1_3_IBUF_11,
      S => c0_Mcompar_mux0000_cmp_lt0000_lut(3),
      O => c0_Mcompar_mux0000_cmp_lt0000_cy(3)
    );
  c0_Mcompar_mux0000_cmp_lt0000_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Exponente_1_3_IBUF_11,
      I1 => Exponente_2_3_IBUF_27,
      O => c0_Mcompar_mux0000_cmp_lt0000_lut(3)
    );
  c0_Mcompar_mux0000_cmp_lt0000_cy_2_Q : MUXCY
    port map (
      CI => c0_Mcompar_mux0000_cmp_lt0000_cy(1),
      DI => Exponente_1_2_IBUF_10,
      S => c0_Mcompar_mux0000_cmp_lt0000_lut(2),
      O => c0_Mcompar_mux0000_cmp_lt0000_cy(2)
    );
  c0_Mcompar_mux0000_cmp_lt0000_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Exponente_1_2_IBUF_10,
      I1 => Exponente_2_2_IBUF_26,
      O => c0_Mcompar_mux0000_cmp_lt0000_lut(2)
    );
  c0_Mcompar_mux0000_cmp_lt0000_cy_1_Q : MUXCY
    port map (
      CI => c0_Mcompar_mux0000_cmp_lt0000_cy(0),
      DI => Exponente_1_1_IBUF_9,
      S => c0_Mcompar_mux0000_cmp_lt0000_lut(1),
      O => c0_Mcompar_mux0000_cmp_lt0000_cy(1)
    );
  c0_Mcompar_mux0000_cmp_lt0000_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Exponente_1_1_IBUF_9,
      I1 => Exponente_2_1_IBUF_25,
      O => c0_Mcompar_mux0000_cmp_lt0000_lut(1)
    );
  c0_Mcompar_mux0000_cmp_lt0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => Exponente_1_0_IBUF_8,
      S => c0_Mcompar_mux0000_cmp_lt0000_lut(0),
      O => c0_Mcompar_mux0000_cmp_lt0000_cy(0)
    );
  c0_Mcompar_mux0000_cmp_lt0000_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Exponente_1_0_IBUF_8,
      I1 => Exponente_2_0_IBUF_24,
      O => c0_Mcompar_mux0000_cmp_lt0000_lut(0)
    );
  c0_Mcompar_mux0000_cmp_gt0000_cy_7_Q : MUXCY
    port map (
      CI => c0_Mcompar_mux0000_cmp_gt0000_cy(6),
      DI => Exponente_2_7_IBUF_31,
      S => c0_Mcompar_mux0000_cmp_gt0000_lut(7),
      O => c0_Mcompar_mux0000_cmp_gt0000_cy(7)
    );
  c0_Mcompar_mux0000_cmp_gt0000_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Exponente_2_7_IBUF_31,
      I1 => Exponente_1_7_IBUF_15,
      O => c0_Mcompar_mux0000_cmp_gt0000_lut(7)
    );
  c0_Mcompar_mux0000_cmp_gt0000_cy_6_Q : MUXCY
    port map (
      CI => c0_Mcompar_mux0000_cmp_gt0000_cy(5),
      DI => Exponente_2_6_IBUF_30,
      S => c0_Mcompar_mux0000_cmp_gt0000_lut(6),
      O => c0_Mcompar_mux0000_cmp_gt0000_cy(6)
    );
  c0_Mcompar_mux0000_cmp_gt0000_lut_6_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Exponente_2_6_IBUF_30,
      I1 => Exponente_1_6_IBUF_14,
      O => c0_Mcompar_mux0000_cmp_gt0000_lut(6)
    );
  c0_Mcompar_mux0000_cmp_gt0000_cy_5_Q : MUXCY
    port map (
      CI => c0_Mcompar_mux0000_cmp_gt0000_cy(4),
      DI => Exponente_2_5_IBUF_29,
      S => c0_Mcompar_mux0000_cmp_gt0000_lut(5),
      O => c0_Mcompar_mux0000_cmp_gt0000_cy(5)
    );
  c0_Mcompar_mux0000_cmp_gt0000_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Exponente_2_5_IBUF_29,
      I1 => Exponente_1_5_IBUF_13,
      O => c0_Mcompar_mux0000_cmp_gt0000_lut(5)
    );
  c0_Mcompar_mux0000_cmp_gt0000_cy_4_Q : MUXCY
    port map (
      CI => c0_Mcompar_mux0000_cmp_gt0000_cy(3),
      DI => Exponente_2_4_IBUF_28,
      S => c0_Mcompar_mux0000_cmp_gt0000_lut(4),
      O => c0_Mcompar_mux0000_cmp_gt0000_cy(4)
    );
  c0_Mcompar_mux0000_cmp_gt0000_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Exponente_2_4_IBUF_28,
      I1 => Exponente_1_4_IBUF_12,
      O => c0_Mcompar_mux0000_cmp_gt0000_lut(4)
    );
  c0_Mcompar_mux0000_cmp_gt0000_cy_3_Q : MUXCY
    port map (
      CI => c0_Mcompar_mux0000_cmp_gt0000_cy(2),
      DI => Exponente_2_3_IBUF_27,
      S => c0_Mcompar_mux0000_cmp_gt0000_lut(3),
      O => c0_Mcompar_mux0000_cmp_gt0000_cy(3)
    );
  c0_Mcompar_mux0000_cmp_gt0000_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Exponente_2_3_IBUF_27,
      I1 => Exponente_1_3_IBUF_11,
      O => c0_Mcompar_mux0000_cmp_gt0000_lut(3)
    );
  c0_Mcompar_mux0000_cmp_gt0000_cy_2_Q : MUXCY
    port map (
      CI => c0_Mcompar_mux0000_cmp_gt0000_cy(1),
      DI => Exponente_2_2_IBUF_26,
      S => c0_Mcompar_mux0000_cmp_gt0000_lut(2),
      O => c0_Mcompar_mux0000_cmp_gt0000_cy(2)
    );
  c0_Mcompar_mux0000_cmp_gt0000_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Exponente_2_2_IBUF_26,
      I1 => Exponente_1_2_IBUF_10,
      O => c0_Mcompar_mux0000_cmp_gt0000_lut(2)
    );
  c0_Mcompar_mux0000_cmp_gt0000_cy_1_Q : MUXCY
    port map (
      CI => c0_Mcompar_mux0000_cmp_gt0000_cy(0),
      DI => Exponente_2_1_IBUF_25,
      S => c0_Mcompar_mux0000_cmp_gt0000_lut(1),
      O => c0_Mcompar_mux0000_cmp_gt0000_cy(1)
    );
  c0_Mcompar_mux0000_cmp_gt0000_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Exponente_2_1_IBUF_25,
      I1 => Exponente_1_1_IBUF_9,
      O => c0_Mcompar_mux0000_cmp_gt0000_lut(1)
    );
  c0_Mcompar_mux0000_cmp_gt0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => Exponente_2_0_IBUF_24,
      S => c0_Mcompar_mux0000_cmp_gt0000_lut(0),
      O => c0_Mcompar_mux0000_cmp_gt0000_cy(0)
    );
  c0_Mcompar_mux0000_cmp_gt0000_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Exponente_2_0_IBUF_24,
      I1 => Exponente_1_0_IBUF_8,
      O => c0_Mcompar_mux0000_cmp_gt0000_lut(0)
    );
  c0_Mcompar_B_despl_cmp_lt0000_cy_22_Q : MUXCY
    port map (
      CI => c0_Mcompar_B_despl_cmp_lt0000_cy(21),
      DI => Mantisa_1_22_IBUF_102,
      S => c0_Mcompar_B_despl_cmp_lt0000_lut(22),
      O => c0_Mcompar_B_despl_cmp_lt0000_cy(22)
    );
  c0_Mcompar_B_despl_cmp_lt0000_lut_22_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Mantisa_1_22_IBUF_102,
      I1 => Mantisa_2_22_IBUF_148,
      O => c0_Mcompar_B_despl_cmp_lt0000_lut(22)
    );
  c0_Mcompar_B_despl_cmp_lt0000_cy_21_Q : MUXCY
    port map (
      CI => c0_Mcompar_B_despl_cmp_lt0000_cy(20),
      DI => Mantisa_1_21_IBUF_101,
      S => c0_Mcompar_B_despl_cmp_lt0000_lut(21),
      O => c0_Mcompar_B_despl_cmp_lt0000_cy(21)
    );
  c0_Mcompar_B_despl_cmp_lt0000_lut_21_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Mantisa_1_21_IBUF_101,
      I1 => Mantisa_2_21_IBUF_147,
      O => c0_Mcompar_B_despl_cmp_lt0000_lut(21)
    );
  c0_Mcompar_B_despl_cmp_lt0000_cy_20_Q : MUXCY
    port map (
      CI => c0_Mcompar_B_despl_cmp_lt0000_cy(19),
      DI => Mantisa_1_20_IBUF_100,
      S => c0_Mcompar_B_despl_cmp_lt0000_lut(20),
      O => c0_Mcompar_B_despl_cmp_lt0000_cy(20)
    );
  c0_Mcompar_B_despl_cmp_lt0000_lut_20_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Mantisa_1_20_IBUF_100,
      I1 => Mantisa_2_20_IBUF_146,
      O => c0_Mcompar_B_despl_cmp_lt0000_lut(20)
    );
  c0_Mcompar_B_despl_cmp_lt0000_cy_19_Q : MUXCY
    port map (
      CI => c0_Mcompar_B_despl_cmp_lt0000_cy(18),
      DI => Mantisa_1_19_IBUF_98,
      S => c0_Mcompar_B_despl_cmp_lt0000_lut(19),
      O => c0_Mcompar_B_despl_cmp_lt0000_cy(19)
    );
  c0_Mcompar_B_despl_cmp_lt0000_lut_19_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Mantisa_1_19_IBUF_98,
      I1 => Mantisa_2_19_IBUF_144,
      O => c0_Mcompar_B_despl_cmp_lt0000_lut(19)
    );
  c0_Mcompar_B_despl_cmp_lt0000_cy_18_Q : MUXCY
    port map (
      CI => c0_Mcompar_B_despl_cmp_lt0000_cy(17),
      DI => Mantisa_1_18_IBUF_97,
      S => c0_Mcompar_B_despl_cmp_lt0000_lut(18),
      O => c0_Mcompar_B_despl_cmp_lt0000_cy(18)
    );
  c0_Mcompar_B_despl_cmp_lt0000_lut_18_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Mantisa_1_18_IBUF_97,
      I1 => Mantisa_2_18_IBUF_143,
      O => c0_Mcompar_B_despl_cmp_lt0000_lut(18)
    );
  c0_Mcompar_B_despl_cmp_lt0000_cy_17_Q : MUXCY
    port map (
      CI => c0_Mcompar_B_despl_cmp_lt0000_cy(16),
      DI => Mantisa_1_17_IBUF_96,
      S => c0_Mcompar_B_despl_cmp_lt0000_lut(17),
      O => c0_Mcompar_B_despl_cmp_lt0000_cy(17)
    );
  c0_Mcompar_B_despl_cmp_lt0000_lut_17_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Mantisa_1_17_IBUF_96,
      I1 => Mantisa_2_17_IBUF_142,
      O => c0_Mcompar_B_despl_cmp_lt0000_lut(17)
    );
  c0_Mcompar_B_despl_cmp_lt0000_cy_16_Q : MUXCY
    port map (
      CI => c0_Mcompar_B_despl_cmp_lt0000_cy(15),
      DI => Mantisa_1_16_IBUF_95,
      S => c0_Mcompar_B_despl_cmp_lt0000_lut(16),
      O => c0_Mcompar_B_despl_cmp_lt0000_cy(16)
    );
  c0_Mcompar_B_despl_cmp_lt0000_lut_16_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Mantisa_1_16_IBUF_95,
      I1 => Mantisa_2_16_IBUF_141,
      O => c0_Mcompar_B_despl_cmp_lt0000_lut(16)
    );
  c0_Mcompar_B_despl_cmp_lt0000_cy_15_Q : MUXCY
    port map (
      CI => c0_Mcompar_B_despl_cmp_lt0000_cy(14),
      DI => Mantisa_1_15_IBUF_94,
      S => c0_Mcompar_B_despl_cmp_lt0000_lut(15),
      O => c0_Mcompar_B_despl_cmp_lt0000_cy(15)
    );
  c0_Mcompar_B_despl_cmp_lt0000_lut_15_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Mantisa_1_15_IBUF_94,
      I1 => Mantisa_2_15_IBUF_140,
      O => c0_Mcompar_B_despl_cmp_lt0000_lut(15)
    );
  c0_Mcompar_B_despl_cmp_lt0000_cy_14_Q : MUXCY
    port map (
      CI => c0_Mcompar_B_despl_cmp_lt0000_cy(13),
      DI => Mantisa_1_14_IBUF_93,
      S => c0_Mcompar_B_despl_cmp_lt0000_lut(14),
      O => c0_Mcompar_B_despl_cmp_lt0000_cy(14)
    );
  c0_Mcompar_B_despl_cmp_lt0000_lut_14_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Mantisa_1_14_IBUF_93,
      I1 => Mantisa_2_14_IBUF_139,
      O => c0_Mcompar_B_despl_cmp_lt0000_lut(14)
    );
  c0_Mcompar_B_despl_cmp_lt0000_cy_13_Q : MUXCY
    port map (
      CI => c0_Mcompar_B_despl_cmp_lt0000_cy(12),
      DI => Mantisa_1_13_IBUF_92,
      S => c0_Mcompar_B_despl_cmp_lt0000_lut(13),
      O => c0_Mcompar_B_despl_cmp_lt0000_cy(13)
    );
  c0_Mcompar_B_despl_cmp_lt0000_lut_13_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Mantisa_1_13_IBUF_92,
      I1 => Mantisa_2_13_IBUF_138,
      O => c0_Mcompar_B_despl_cmp_lt0000_lut(13)
    );
  c0_Mcompar_B_despl_cmp_lt0000_cy_12_Q : MUXCY
    port map (
      CI => c0_Mcompar_B_despl_cmp_lt0000_cy(11),
      DI => Mantisa_1_12_IBUF_91,
      S => c0_Mcompar_B_despl_cmp_lt0000_lut(12),
      O => c0_Mcompar_B_despl_cmp_lt0000_cy(12)
    );
  c0_Mcompar_B_despl_cmp_lt0000_lut_12_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Mantisa_1_12_IBUF_91,
      I1 => Mantisa_2_12_IBUF_137,
      O => c0_Mcompar_B_despl_cmp_lt0000_lut(12)
    );
  c0_Mcompar_B_despl_cmp_lt0000_cy_11_Q : MUXCY
    port map (
      CI => c0_Mcompar_B_despl_cmp_lt0000_cy(10),
      DI => Mantisa_1_11_IBUF_90,
      S => c0_Mcompar_B_despl_cmp_lt0000_lut(11),
      O => c0_Mcompar_B_despl_cmp_lt0000_cy(11)
    );
  c0_Mcompar_B_despl_cmp_lt0000_lut_11_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Mantisa_1_11_IBUF_90,
      I1 => Mantisa_2_11_IBUF_136,
      O => c0_Mcompar_B_despl_cmp_lt0000_lut(11)
    );
  c0_Mcompar_B_despl_cmp_lt0000_cy_10_Q : MUXCY
    port map (
      CI => c0_Mcompar_B_despl_cmp_lt0000_cy(9),
      DI => Mantisa_1_10_IBUF_89,
      S => c0_Mcompar_B_despl_cmp_lt0000_lut(10),
      O => c0_Mcompar_B_despl_cmp_lt0000_cy(10)
    );
  c0_Mcompar_B_despl_cmp_lt0000_lut_10_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Mantisa_1_10_IBUF_89,
      I1 => Mantisa_2_10_IBUF_135,
      O => c0_Mcompar_B_despl_cmp_lt0000_lut(10)
    );
  c0_Mcompar_B_despl_cmp_lt0000_cy_9_Q : MUXCY
    port map (
      CI => c0_Mcompar_B_despl_cmp_lt0000_cy(8),
      DI => Mantisa_1_9_IBUF_110,
      S => c0_Mcompar_B_despl_cmp_lt0000_lut(9),
      O => c0_Mcompar_B_despl_cmp_lt0000_cy(9)
    );
  c0_Mcompar_B_despl_cmp_lt0000_lut_9_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Mantisa_1_9_IBUF_110,
      I1 => Mantisa_2_9_IBUF_156,
      O => c0_Mcompar_B_despl_cmp_lt0000_lut(9)
    );
  c0_Mcompar_B_despl_cmp_lt0000_cy_8_Q : MUXCY
    port map (
      CI => c0_Mcompar_B_despl_cmp_lt0000_cy(7),
      DI => Mantisa_1_8_IBUF_109,
      S => c0_Mcompar_B_despl_cmp_lt0000_lut(8),
      O => c0_Mcompar_B_despl_cmp_lt0000_cy(8)
    );
  c0_Mcompar_B_despl_cmp_lt0000_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Mantisa_1_8_IBUF_109,
      I1 => Mantisa_2_8_IBUF_155,
      O => c0_Mcompar_B_despl_cmp_lt0000_lut(8)
    );
  c0_Mcompar_B_despl_cmp_lt0000_cy_7_Q : MUXCY
    port map (
      CI => c0_Mcompar_B_despl_cmp_lt0000_cy(6),
      DI => Mantisa_1_7_IBUF_108,
      S => c0_Mcompar_B_despl_cmp_lt0000_lut(7),
      O => c0_Mcompar_B_despl_cmp_lt0000_cy(7)
    );
  c0_Mcompar_B_despl_cmp_lt0000_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Mantisa_1_7_IBUF_108,
      I1 => Mantisa_2_7_IBUF_154,
      O => c0_Mcompar_B_despl_cmp_lt0000_lut(7)
    );
  c0_Mcompar_B_despl_cmp_lt0000_cy_6_Q : MUXCY
    port map (
      CI => c0_Mcompar_B_despl_cmp_lt0000_cy(5),
      DI => Mantisa_1_6_IBUF_107,
      S => c0_Mcompar_B_despl_cmp_lt0000_lut(6),
      O => c0_Mcompar_B_despl_cmp_lt0000_cy(6)
    );
  c0_Mcompar_B_despl_cmp_lt0000_lut_6_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Mantisa_1_6_IBUF_107,
      I1 => Mantisa_2_6_IBUF_153,
      O => c0_Mcompar_B_despl_cmp_lt0000_lut(6)
    );
  c0_Mcompar_B_despl_cmp_lt0000_cy_5_Q : MUXCY
    port map (
      CI => c0_Mcompar_B_despl_cmp_lt0000_cy(4),
      DI => Mantisa_1_5_IBUF_106,
      S => c0_Mcompar_B_despl_cmp_lt0000_lut(5),
      O => c0_Mcompar_B_despl_cmp_lt0000_cy(5)
    );
  c0_Mcompar_B_despl_cmp_lt0000_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Mantisa_1_5_IBUF_106,
      I1 => Mantisa_2_5_IBUF_152,
      O => c0_Mcompar_B_despl_cmp_lt0000_lut(5)
    );
  c0_Mcompar_B_despl_cmp_lt0000_cy_4_Q : MUXCY
    port map (
      CI => c0_Mcompar_B_despl_cmp_lt0000_cy(3),
      DI => Mantisa_1_4_IBUF_105,
      S => c0_Mcompar_B_despl_cmp_lt0000_lut(4),
      O => c0_Mcompar_B_despl_cmp_lt0000_cy(4)
    );
  c0_Mcompar_B_despl_cmp_lt0000_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Mantisa_1_4_IBUF_105,
      I1 => Mantisa_2_4_IBUF_151,
      O => c0_Mcompar_B_despl_cmp_lt0000_lut(4)
    );
  c0_Mcompar_B_despl_cmp_lt0000_cy_3_Q : MUXCY
    port map (
      CI => c0_Mcompar_B_despl_cmp_lt0000_cy(2),
      DI => Mantisa_1_3_IBUF_104,
      S => c0_Mcompar_B_despl_cmp_lt0000_lut(3),
      O => c0_Mcompar_B_despl_cmp_lt0000_cy(3)
    );
  c0_Mcompar_B_despl_cmp_lt0000_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Mantisa_1_3_IBUF_104,
      I1 => Mantisa_2_3_IBUF_150,
      O => c0_Mcompar_B_despl_cmp_lt0000_lut(3)
    );
  c0_Mcompar_B_despl_cmp_lt0000_cy_2_Q : MUXCY
    port map (
      CI => c0_Mcompar_B_despl_cmp_lt0000_cy(1),
      DI => Mantisa_1_2_IBUF_103,
      S => c0_Mcompar_B_despl_cmp_lt0000_lut(2),
      O => c0_Mcompar_B_despl_cmp_lt0000_cy(2)
    );
  c0_Mcompar_B_despl_cmp_lt0000_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Mantisa_1_2_IBUF_103,
      I1 => Mantisa_2_2_IBUF_149,
      O => c0_Mcompar_B_despl_cmp_lt0000_lut(2)
    );
  c0_Mcompar_B_despl_cmp_lt0000_cy_1_Q : MUXCY
    port map (
      CI => c0_Mcompar_B_despl_cmp_lt0000_cy(0),
      DI => Mantisa_1_1_IBUF_99,
      S => c0_Mcompar_B_despl_cmp_lt0000_lut(1),
      O => c0_Mcompar_B_despl_cmp_lt0000_cy(1)
    );
  c0_Mcompar_B_despl_cmp_lt0000_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Mantisa_1_1_IBUF_99,
      I1 => Mantisa_2_1_IBUF_145,
      O => c0_Mcompar_B_despl_cmp_lt0000_lut(1)
    );
  c0_Mcompar_B_despl_cmp_lt0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => Mantisa_1_0_IBUF_88,
      S => c0_Mcompar_B_despl_cmp_lt0000_lut(0),
      O => c0_Mcompar_B_despl_cmp_lt0000_cy(0)
    );
  c0_Mcompar_B_despl_cmp_lt0000_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Mantisa_1_0_IBUF_88,
      I1 => Mantisa_2_0_IBUF_134,
      O => c0_Mcompar_B_despl_cmp_lt0000_lut(0)
    );
  c0_Msub_mux0002_addsub0000_xor_7_Q : XORCY
    port map (
      CI => c0_Msub_mux0002_addsub0000_cy(6),
      LI => c0_Msub_mux0002_addsub0000_lut(7),
      O => c0_mux0002_addsub0000(7)
    );
  c0_Msub_mux0002_addsub0000_xor_6_Q : XORCY
    port map (
      CI => c0_Msub_mux0002_addsub0000_cy(5),
      LI => c0_Msub_mux0002_addsub0000_lut(6),
      O => c0_mux0002_addsub0000(6)
    );
  c0_Msub_mux0002_addsub0000_cy_6_Q : MUXCY
    port map (
      CI => c0_Msub_mux0002_addsub0000_cy(5),
      DI => c0_mux0002_mux0000(6),
      S => c0_Msub_mux0002_addsub0000_lut(6),
      O => c0_Msub_mux0002_addsub0000_cy(6)
    );
  c0_Msub_mux0002_addsub0000_xor_5_Q : XORCY
    port map (
      CI => c0_Msub_mux0002_addsub0000_cy(4),
      LI => c0_Msub_mux0002_addsub0000_lut(5),
      O => c0_mux0002_addsub0000(5)
    );
  c0_Msub_mux0002_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => c0_Msub_mux0002_addsub0000_cy(4),
      DI => c0_mux0002_mux0000(5),
      S => c0_Msub_mux0002_addsub0000_lut(5),
      O => c0_Msub_mux0002_addsub0000_cy(5)
    );
  c0_Msub_mux0002_addsub0000_xor_4_Q : XORCY
    port map (
      CI => c0_Msub_mux0002_addsub0000_cy(3),
      LI => c0_Msub_mux0002_addsub0000_lut(4),
      O => c0_mux0002_addsub0000(4)
    );
  c0_Msub_mux0002_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => c0_Msub_mux0002_addsub0000_cy(3),
      DI => c0_mux0002_mux0000(4),
      S => c0_Msub_mux0002_addsub0000_lut(4),
      O => c0_Msub_mux0002_addsub0000_cy(4)
    );
  c0_Msub_mux0002_addsub0000_xor_3_Q : XORCY
    port map (
      CI => c0_Msub_mux0002_addsub0000_cy(2),
      LI => c0_Msub_mux0002_addsub0000_lut(3),
      O => c0_mux0002_addsub0000(3)
    );
  c0_Msub_mux0002_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => c0_Msub_mux0002_addsub0000_cy(2),
      DI => c0_mux0002_mux0000(3),
      S => c0_Msub_mux0002_addsub0000_lut(3),
      O => c0_Msub_mux0002_addsub0000_cy(3)
    );
  c0_Msub_mux0002_addsub0000_xor_2_Q : XORCY
    port map (
      CI => c0_Msub_mux0002_addsub0000_cy(1),
      LI => c0_Msub_mux0002_addsub0000_lut(2),
      O => c0_mux0002_addsub0000(2)
    );
  c0_Msub_mux0002_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => c0_Msub_mux0002_addsub0000_cy(1),
      DI => c0_mux0002_mux0000(2),
      S => c0_Msub_mux0002_addsub0000_lut(2),
      O => c0_Msub_mux0002_addsub0000_cy(2)
    );
  c0_Msub_mux0002_addsub0000_xor_1_Q : XORCY
    port map (
      CI => c0_Msub_mux0002_addsub0000_cy(0),
      LI => c0_Msub_mux0002_addsub0000_lut(1),
      O => c0_mux0002_addsub0000(1)
    );
  c0_Msub_mux0002_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => c0_Msub_mux0002_addsub0000_cy(0),
      DI => c0_mux0002_mux0000(1),
      S => c0_Msub_mux0002_addsub0000_lut(1),
      O => c0_Msub_mux0002_addsub0000_cy(1)
    );
  c0_Msub_mux0002_addsub0000_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => c0_Msub_mux0002_addsub0000_lut(0),
      O => c0_mux0002_addsub0000(0)
    );
  c0_Msub_mux0002_addsub0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => c0_mux0002_mux0000(0),
      S => c0_Msub_mux0002_addsub0000_lut(0),
      O => c0_Msub_mux0002_addsub0000_cy(0)
    );
  c1_num_desp_aux_7 : LD
    port map (
      D => c0_e_dif(7),
      G => c1_num_desp_aux_cmp_le0000,
      Q => c1_num_desp_aux(7)
    );
  c1_num_desp_aux_6 : LD
    port map (
      D => c0_e_dif(6),
      G => c1_num_desp_aux_cmp_le0000,
      Q => c1_num_desp_aux(6)
    );
  c1_num_desp_aux_5 : LD
    port map (
      D => c0_e_dif(5),
      G => c1_num_desp_aux_cmp_le0000,
      Q => c1_num_desp_aux(5)
    );
  c1_num_desp_aux_4 : LD
    port map (
      D => c0_e_dif(4),
      G => c1_num_desp_aux_cmp_le0000,
      Q => c1_num_desp_aux(4)
    );
  c1_num_desp_aux_3 : LD
    port map (
      D => c0_e_dif(3),
      G => c1_num_desp_aux_cmp_le0000,
      Q => c1_num_desp_aux(3)
    );
  c1_num_desp_aux_2 : LD
    port map (
      D => c0_e_dif(2),
      G => c1_num_desp_aux_cmp_le0000,
      Q => c1_num_desp_aux(2)
    );
  c1_num_desp_aux_1 : LD
    port map (
      D => c0_e_dif(1),
      G => c1_num_desp_aux_cmp_le0000,
      Q => c1_num_desp_aux(1)
    );
  c1_num_desp_aux_0 : LD
    port map (
      D => c0_e_dif(0),
      G => c1_num_desp_aux_cmp_le0000,
      Q => c1_num_desp_aux(0)
    );
  c1_num_out_aux_23 : LD
    port map (
      D => c1_num_out_aux_shift0001(23),
      G => c1_num_desp_aux_cmp_le0000,
      Q => c1_num_out_aux(23)
    );
  c1_num_out_aux_22 : LD
    port map (
      D => c1_num_out_aux_shift0001(22),
      G => c1_num_desp_aux_cmp_le0000,
      Q => c1_num_out_aux(22)
    );
  c1_num_out_aux_21 : LD
    port map (
      D => c1_num_out_aux_shift0001(21),
      G => c1_num_desp_aux_cmp_le0000,
      Q => c1_num_out_aux(21)
    );
  c1_num_out_aux_20 : LD
    port map (
      D => c1_num_out_aux_shift0001(20),
      G => c1_num_desp_aux_cmp_le0000,
      Q => c1_num_out_aux(20)
    );
  c1_num_out_aux_19 : LD
    port map (
      D => c1_num_out_aux_shift0001(19),
      G => c1_num_desp_aux_cmp_le0000,
      Q => c1_num_out_aux(19)
    );
  c1_num_out_aux_18 : LD
    port map (
      D => c1_num_out_aux_shift0001(18),
      G => c1_num_desp_aux_cmp_le0000,
      Q => c1_num_out_aux(18)
    );
  c1_num_out_aux_17 : LD
    port map (
      D => c1_num_out_aux_shift0001(17),
      G => c1_num_desp_aux_cmp_le0000,
      Q => c1_num_out_aux(17)
    );
  c1_num_out_aux_16 : LD
    port map (
      D => c1_num_out_aux_shift0001(16),
      G => c1_num_desp_aux_cmp_le0000,
      Q => c1_num_out_aux(16)
    );
  c1_num_out_aux_15 : LD
    port map (
      D => c1_num_out_aux_shift0001(15),
      G => c1_num_desp_aux_cmp_le0000,
      Q => c1_num_out_aux(15)
    );
  c1_num_out_aux_14 : LD
    port map (
      D => c1_num_out_aux_shift0001(14),
      G => c1_num_desp_aux_cmp_le0000,
      Q => c1_num_out_aux(14)
    );
  c1_num_out_aux_13 : LD
    port map (
      D => c1_num_out_aux_shift0001(13),
      G => c1_num_desp_aux_cmp_le0000,
      Q => c1_num_out_aux(13)
    );
  c1_num_out_aux_12 : LD
    port map (
      D => c1_num_out_aux_shift0001(12),
      G => c1_num_desp_aux_cmp_le0000,
      Q => c1_num_out_aux(12)
    );
  c1_num_out_aux_11 : LD
    port map (
      D => c1_num_out_aux_shift0001(11),
      G => c1_num_desp_aux_cmp_le0000,
      Q => c1_num_out_aux(11)
    );
  c1_num_out_aux_10 : LD
    port map (
      D => c1_num_out_aux_shift0001(10),
      G => c1_num_desp_aux_cmp_le0000,
      Q => c1_num_out_aux(10)
    );
  c1_num_out_aux_9 : LD
    port map (
      D => c1_num_out_aux_shift0001(9),
      G => c1_num_desp_aux_cmp_le0000,
      Q => c1_num_out_aux(9)
    );
  c1_num_out_aux_8 : LD
    port map (
      D => c1_num_out_aux_shift0001(8),
      G => c1_num_desp_aux_cmp_le0000,
      Q => c1_num_out_aux(8)
    );
  c1_num_out_aux_7 : LD
    port map (
      D => c1_num_out_aux_shift0001(7),
      G => c1_num_desp_aux_cmp_le0000,
      Q => c1_num_out_aux(7)
    );
  c1_num_out_aux_6 : LD
    port map (
      D => c1_num_out_aux_shift0001(6),
      G => c1_num_desp_aux_cmp_le0000,
      Q => c1_num_out_aux(6)
    );
  c1_num_out_aux_5 : LD
    port map (
      D => c1_num_out_aux_shift0001(5),
      G => c1_num_desp_aux_cmp_le0000,
      Q => c1_num_out_aux(5)
    );
  c1_num_out_aux_4 : LD
    port map (
      D => c1_num_out_aux_shift0001(4),
      G => c1_num_desp_aux_cmp_le0000,
      Q => c1_num_out_aux(4)
    );
  c1_num_out_aux_3 : LD
    port map (
      D => c1_num_out_aux_shift0001(3),
      G => c1_num_desp_aux_cmp_le0000,
      Q => c1_num_out_aux(3)
    );
  c1_num_out_aux_2 : LD
    port map (
      D => c1_num_out_aux_shift0001(2),
      G => c1_num_desp_aux_cmp_le0000,
      Q => c1_num_out_aux(2)
    );
  c1_num_out_aux_1 : LD
    port map (
      D => c1_num_out_aux_shift0001(1),
      G => c1_num_desp_aux_cmp_le0000,
      Q => c1_num_out_aux(1)
    );
  c1_num_out_aux_0 : LD
    port map (
      D => c1_num_out_aux_shift0001(0),
      G => c1_num_desp_aux_cmp_le0000,
      Q => c1_num_out_aux(0)
    );
  c2_Exp_max_rest_7 : LD
    port map (
      D => c0_e_max(7),
      G => c2_Exp_max_rest_cmp_eq0000,
      Q => c2_Exp_max_rest(7)
    );
  c2_Exp_max_rest_6 : LD
    port map (
      D => c0_e_max(6),
      G => c2_Exp_max_rest_cmp_eq0000,
      Q => c2_Exp_max_rest(6)
    );
  c2_Exp_max_rest_5 : LD
    port map (
      D => c0_e_max(5),
      G => c2_Exp_max_rest_cmp_eq0000,
      Q => c2_Exp_max_rest(5)
    );
  c2_Exp_max_rest_4 : LD
    port map (
      D => c0_e_max(4),
      G => c2_Exp_max_rest_cmp_eq0000,
      Q => c2_Exp_max_rest(4)
    );
  c2_Exp_max_rest_3 : LD
    port map (
      D => c0_e_max(3),
      G => c2_Exp_max_rest_cmp_eq0000,
      Q => c2_Exp_max_rest(3)
    );
  c2_Exp_max_rest_2 : LD
    port map (
      D => c0_e_max(2),
      G => c2_Exp_max_rest_cmp_eq0000,
      Q => c2_Exp_max_rest(2)
    );
  c2_Exp_max_rest_1 : LD
    port map (
      D => c0_e_max(1),
      G => c2_Exp_max_rest_cmp_eq0000,
      Q => c2_Exp_max_rest(1)
    );
  c2_Exp_max_rest_0 : LD
    port map (
      D => c0_e_max(0),
      G => c2_Exp_max_rest_cmp_eq0000,
      Q => c2_Exp_max_rest(0)
    );
  c2_Mantisa_max_rest_23 : LD
    port map (
      D => c0_B_despl(23),
      G => c2_Exp_max_rest_cmp_eq0000,
      Q => c2_Mantisa_max_rest(23)
    );
  c2_Mantisa_max_rest_22 : LD
    port map (
      D => c0_A_max(22),
      G => c2_Exp_max_rest_cmp_eq0000,
      Q => c2_Mantisa_max_rest(22)
    );
  c2_Mantisa_max_rest_21 : LD
    port map (
      D => c0_A_max(21),
      G => c2_Exp_max_rest_cmp_eq0000,
      Q => c2_Mantisa_max_rest(21)
    );
  c2_Mantisa_max_rest_20 : LD
    port map (
      D => c0_A_max(20),
      G => c2_Exp_max_rest_cmp_eq0000,
      Q => c2_Mantisa_max_rest(20)
    );
  c2_Mantisa_max_rest_19 : LD
    port map (
      D => c0_A_max(19),
      G => c2_Exp_max_rest_cmp_eq0000,
      Q => c2_Mantisa_max_rest(19)
    );
  c2_Mantisa_max_rest_18 : LD
    port map (
      D => c0_A_max(18),
      G => c2_Exp_max_rest_cmp_eq0000,
      Q => c2_Mantisa_max_rest(18)
    );
  c2_Mantisa_max_rest_17 : LD
    port map (
      D => c0_A_max(17),
      G => c2_Exp_max_rest_cmp_eq0000,
      Q => c2_Mantisa_max_rest(17)
    );
  c2_Mantisa_max_rest_16 : LD
    port map (
      D => c0_A_max(16),
      G => c2_Exp_max_rest_cmp_eq0000,
      Q => c2_Mantisa_max_rest(16)
    );
  c2_Mantisa_max_rest_15 : LD
    port map (
      D => c0_A_max(15),
      G => c2_Exp_max_rest_cmp_eq0000,
      Q => c2_Mantisa_max_rest(15)
    );
  c2_Mantisa_max_rest_14 : LD
    port map (
      D => c0_A_max(14),
      G => c2_Exp_max_rest_cmp_eq0000,
      Q => c2_Mantisa_max_rest(14)
    );
  c2_Mantisa_max_rest_13 : LD
    port map (
      D => c0_A_max(13),
      G => c2_Exp_max_rest_cmp_eq0000,
      Q => c2_Mantisa_max_rest(13)
    );
  c2_Mantisa_max_rest_12 : LD
    port map (
      D => c0_A_max(12),
      G => c2_Exp_max_rest_cmp_eq0000,
      Q => c2_Mantisa_max_rest(12)
    );
  c2_Mantisa_max_rest_11 : LD
    port map (
      D => c0_A_max(11),
      G => c2_Exp_max_rest_cmp_eq0000,
      Q => c2_Mantisa_max_rest(11)
    );
  c2_Mantisa_max_rest_10 : LD
    port map (
      D => c0_A_max(10),
      G => c2_Exp_max_rest_cmp_eq0000,
      Q => c2_Mantisa_max_rest(10)
    );
  c2_Mantisa_max_rest_9 : LD
    port map (
      D => c0_A_max(9),
      G => c2_Exp_max_rest_cmp_eq0000,
      Q => c2_Mantisa_max_rest(9)
    );
  c2_Mantisa_max_rest_8 : LD
    port map (
      D => c0_A_max(8),
      G => c2_Exp_max_rest_cmp_eq0000,
      Q => c2_Mantisa_max_rest(8)
    );
  c2_Mantisa_max_rest_7 : LD
    port map (
      D => c0_A_max(7),
      G => c2_Exp_max_rest_cmp_eq0000,
      Q => c2_Mantisa_max_rest(7)
    );
  c2_Mantisa_max_rest_6 : LD
    port map (
      D => c0_A_max(6),
      G => c2_Exp_max_rest_cmp_eq0000,
      Q => c2_Mantisa_max_rest(6)
    );
  c2_Mantisa_max_rest_5 : LD
    port map (
      D => c0_A_max(5),
      G => c2_Exp_max_rest_cmp_eq0000,
      Q => c2_Mantisa_max_rest(5)
    );
  c2_Mantisa_max_rest_4 : LD
    port map (
      D => c0_A_max(4),
      G => c2_Exp_max_rest_cmp_eq0000,
      Q => c2_Mantisa_max_rest(4)
    );
  c2_Mantisa_max_rest_3 : LD
    port map (
      D => c0_A_max(3),
      G => c2_Exp_max_rest_cmp_eq0000,
      Q => c2_Mantisa_max_rest(3)
    );
  c2_Mantisa_max_rest_2 : LD
    port map (
      D => c0_A_max(2),
      G => c2_Exp_max_rest_cmp_eq0000,
      Q => c2_Mantisa_max_rest(2)
    );
  c2_Mantisa_max_rest_1 : LD
    port map (
      D => c0_A_max(1),
      G => c2_Exp_max_rest_cmp_eq0000,
      Q => c2_Mantisa_max_rest(1)
    );
  c2_Mantisa_max_rest_0 : LD
    port map (
      D => c0_A_max(0),
      G => c2_Exp_max_rest_cmp_eq0000,
      Q => c2_Mantisa_max_rest(0)
    );
  c2_Mantisa_desp_rest_23 : LD
    port map (
      D => despl_mux_Mdesp(23),
      G => c2_Exp_max_rest_cmp_eq0000,
      Q => c2_Mantisa_desp_rest(23)
    );
  c2_Mantisa_desp_rest_22 : LD
    port map (
      D => despl_mux_Mdesp(22),
      G => c2_Exp_max_rest_cmp_eq0000,
      Q => c2_Mantisa_desp_rest(22)
    );
  c2_Mantisa_desp_rest_21 : LD
    port map (
      D => despl_mux_Mdesp(21),
      G => c2_Exp_max_rest_cmp_eq0000,
      Q => c2_Mantisa_desp_rest(21)
    );
  c2_Mantisa_desp_rest_20 : LD
    port map (
      D => despl_mux_Mdesp(20),
      G => c2_Exp_max_rest_cmp_eq0000,
      Q => c2_Mantisa_desp_rest(20)
    );
  c2_Mantisa_desp_rest_19 : LD
    port map (
      D => despl_mux_Mdesp(19),
      G => c2_Exp_max_rest_cmp_eq0000,
      Q => c2_Mantisa_desp_rest(19)
    );
  c2_Mantisa_desp_rest_18 : LD
    port map (
      D => despl_mux_Mdesp(18),
      G => c2_Exp_max_rest_cmp_eq0000,
      Q => c2_Mantisa_desp_rest(18)
    );
  c2_Mantisa_desp_rest_17 : LD
    port map (
      D => despl_mux_Mdesp(17),
      G => c2_Exp_max_rest_cmp_eq0000,
      Q => c2_Mantisa_desp_rest(17)
    );
  c2_Mantisa_desp_rest_16 : LD
    port map (
      D => despl_mux_Mdesp(16),
      G => c2_Exp_max_rest_cmp_eq0000,
      Q => c2_Mantisa_desp_rest(16)
    );
  c2_Mantisa_desp_rest_15 : LD
    port map (
      D => despl_mux_Mdesp(15),
      G => c2_Exp_max_rest_cmp_eq0000,
      Q => c2_Mantisa_desp_rest(15)
    );
  c2_Mantisa_desp_rest_14 : LD
    port map (
      D => despl_mux_Mdesp(14),
      G => c2_Exp_max_rest_cmp_eq0000,
      Q => c2_Mantisa_desp_rest(14)
    );
  c2_Mantisa_desp_rest_13 : LD
    port map (
      D => despl_mux_Mdesp(13),
      G => c2_Exp_max_rest_cmp_eq0000,
      Q => c2_Mantisa_desp_rest(13)
    );
  c2_Mantisa_desp_rest_12 : LD
    port map (
      D => despl_mux_Mdesp(12),
      G => c2_Exp_max_rest_cmp_eq0000,
      Q => c2_Mantisa_desp_rest(12)
    );
  c2_Mantisa_desp_rest_11 : LD
    port map (
      D => despl_mux_Mdesp(11),
      G => c2_Exp_max_rest_cmp_eq0000,
      Q => c2_Mantisa_desp_rest(11)
    );
  c2_Mantisa_desp_rest_10 : LD
    port map (
      D => despl_mux_Mdesp(10),
      G => c2_Exp_max_rest_cmp_eq0000,
      Q => c2_Mantisa_desp_rest(10)
    );
  c2_Mantisa_desp_rest_9 : LD
    port map (
      D => despl_mux_Mdesp(9),
      G => c2_Exp_max_rest_cmp_eq0000,
      Q => c2_Mantisa_desp_rest(9)
    );
  c2_Mantisa_desp_rest_8 : LD
    port map (
      D => despl_mux_Mdesp(8),
      G => c2_Exp_max_rest_cmp_eq0000,
      Q => c2_Mantisa_desp_rest(8)
    );
  c2_Mantisa_desp_rest_7 : LD
    port map (
      D => despl_mux_Mdesp(7),
      G => c2_Exp_max_rest_cmp_eq0000,
      Q => c2_Mantisa_desp_rest(7)
    );
  c2_Mantisa_desp_rest_6 : LD
    port map (
      D => despl_mux_Mdesp(6),
      G => c2_Exp_max_rest_cmp_eq0000,
      Q => c2_Mantisa_desp_rest(6)
    );
  c2_Mantisa_desp_rest_5 : LD
    port map (
      D => despl_mux_Mdesp(5),
      G => c2_Exp_max_rest_cmp_eq0000,
      Q => c2_Mantisa_desp_rest(5)
    );
  c2_Mantisa_desp_rest_4 : LD
    port map (
      D => despl_mux_Mdesp(4),
      G => c2_Exp_max_rest_cmp_eq0000,
      Q => c2_Mantisa_desp_rest(4)
    );
  c2_Mantisa_desp_rest_3 : LD
    port map (
      D => despl_mux_Mdesp(3),
      G => c2_Exp_max_rest_cmp_eq0000,
      Q => c2_Mantisa_desp_rest(3)
    );
  c2_Mantisa_desp_rest_2 : LD
    port map (
      D => despl_mux_Mdesp(2),
      G => c2_Exp_max_rest_cmp_eq0000,
      Q => c2_Mantisa_desp_rest(2)
    );
  c2_Mantisa_desp_rest_1 : LD
    port map (
      D => despl_mux_Mdesp(1),
      G => c2_Exp_max_rest_cmp_eq0000,
      Q => c2_Mantisa_desp_rest(1)
    );
  c2_Mantisa_desp_rest_0 : LD
    port map (
      D => despl_mux_Mdesp(0),
      G => c2_Exp_max_rest_cmp_eq0000,
      Q => c2_Mantisa_desp_rest(0)
    );
  c2_Mantisa_desp_sum_23 : LD_1
    port map (
      D => despl_mux_Mdesp(23),
      G => c2_Mantisa_desp_sum_not0001,
      Q => c2_Mantisa_desp_sum(23)
    );
  c2_Mantisa_desp_sum_22 : LD_1
    port map (
      D => despl_mux_Mdesp(22),
      G => c2_Mantisa_desp_sum_not0001,
      Q => c2_Mantisa_desp_sum(22)
    );
  c2_Mantisa_desp_sum_21 : LD_1
    port map (
      D => despl_mux_Mdesp(21),
      G => c2_Mantisa_desp_sum_not0001,
      Q => c2_Mantisa_desp_sum(21)
    );
  c2_Mantisa_desp_sum_20 : LD_1
    port map (
      D => despl_mux_Mdesp(20),
      G => c2_Mantisa_desp_sum_not0001,
      Q => c2_Mantisa_desp_sum(20)
    );
  c2_Mantisa_desp_sum_19 : LD_1
    port map (
      D => despl_mux_Mdesp(19),
      G => c2_Mantisa_desp_sum_not0001,
      Q => c2_Mantisa_desp_sum(19)
    );
  c2_Mantisa_desp_sum_18 : LD_1
    port map (
      D => despl_mux_Mdesp(18),
      G => c2_Mantisa_desp_sum_not0001,
      Q => c2_Mantisa_desp_sum(18)
    );
  c2_Mantisa_desp_sum_17 : LD_1
    port map (
      D => despl_mux_Mdesp(17),
      G => c2_Mantisa_desp_sum_not0001,
      Q => c2_Mantisa_desp_sum(17)
    );
  c2_Mantisa_desp_sum_16 : LD_1
    port map (
      D => despl_mux_Mdesp(16),
      G => c2_Mantisa_desp_sum_not0001,
      Q => c2_Mantisa_desp_sum(16)
    );
  c2_Mantisa_desp_sum_15 : LD_1
    port map (
      D => despl_mux_Mdesp(15),
      G => c2_Mantisa_desp_sum_not0001,
      Q => c2_Mantisa_desp_sum(15)
    );
  c2_Mantisa_desp_sum_14 : LD_1
    port map (
      D => despl_mux_Mdesp(14),
      G => c2_Mantisa_desp_sum_not0001,
      Q => c2_Mantisa_desp_sum(14)
    );
  c2_Mantisa_desp_sum_13 : LD_1
    port map (
      D => despl_mux_Mdesp(13),
      G => c2_Mantisa_desp_sum_not0001,
      Q => c2_Mantisa_desp_sum(13)
    );
  c2_Mantisa_desp_sum_12 : LD_1
    port map (
      D => despl_mux_Mdesp(12),
      G => c2_Mantisa_desp_sum_not0001,
      Q => c2_Mantisa_desp_sum(12)
    );
  c2_Mantisa_desp_sum_11 : LD_1
    port map (
      D => despl_mux_Mdesp(11),
      G => c2_Mantisa_desp_sum_not0001,
      Q => c2_Mantisa_desp_sum(11)
    );
  c2_Mantisa_desp_sum_10 : LD_1
    port map (
      D => despl_mux_Mdesp(10),
      G => c2_Mantisa_desp_sum_not0001,
      Q => c2_Mantisa_desp_sum(10)
    );
  c2_Mantisa_desp_sum_9 : LD_1
    port map (
      D => despl_mux_Mdesp(9),
      G => c2_Mantisa_desp_sum_not0001,
      Q => c2_Mantisa_desp_sum(9)
    );
  c2_Mantisa_desp_sum_8 : LD_1
    port map (
      D => despl_mux_Mdesp(8),
      G => c2_Mantisa_desp_sum_not0001,
      Q => c2_Mantisa_desp_sum(8)
    );
  c2_Mantisa_desp_sum_7 : LD_1
    port map (
      D => despl_mux_Mdesp(7),
      G => c2_Mantisa_desp_sum_not0001,
      Q => c2_Mantisa_desp_sum(7)
    );
  c2_Mantisa_desp_sum_6 : LD_1
    port map (
      D => despl_mux_Mdesp(6),
      G => c2_Mantisa_desp_sum_not0001,
      Q => c2_Mantisa_desp_sum(6)
    );
  c2_Mantisa_desp_sum_5 : LD_1
    port map (
      D => despl_mux_Mdesp(5),
      G => c2_Mantisa_desp_sum_not0001,
      Q => c2_Mantisa_desp_sum(5)
    );
  c2_Mantisa_desp_sum_4 : LD_1
    port map (
      D => despl_mux_Mdesp(4),
      G => c2_Mantisa_desp_sum_not0001,
      Q => c2_Mantisa_desp_sum(4)
    );
  c2_Mantisa_desp_sum_3 : LD_1
    port map (
      D => despl_mux_Mdesp(3),
      G => c2_Mantisa_desp_sum_not0001,
      Q => c2_Mantisa_desp_sum(3)
    );
  c2_Mantisa_desp_sum_2 : LD_1
    port map (
      D => despl_mux_Mdesp(2),
      G => c2_Mantisa_desp_sum_not0001,
      Q => c2_Mantisa_desp_sum(2)
    );
  c2_Mantisa_desp_sum_1 : LD_1
    port map (
      D => despl_mux_Mdesp(1),
      G => c2_Mantisa_desp_sum_not0001,
      Q => c2_Mantisa_desp_sum(1)
    );
  c2_Mantisa_desp_sum_0 : LD_1
    port map (
      D => despl_mux_Mdesp(0),
      G => c2_Mantisa_desp_sum_not0001,
      Q => c2_Mantisa_desp_sum(0)
    );
  c2_Mantisa_max_sum_23 : LD_1
    port map (
      D => c0_B_despl(23),
      G => c2_Mantisa_desp_sum_not0001,
      Q => c2_Mantisa_max_sum(23)
    );
  c2_Mantisa_max_sum_22 : LD_1
    port map (
      D => c0_A_max(22),
      G => c2_Mantisa_desp_sum_not0001,
      Q => c2_Mantisa_max_sum(22)
    );
  c2_Mantisa_max_sum_21 : LD_1
    port map (
      D => c0_A_max(21),
      G => c2_Mantisa_desp_sum_not0001,
      Q => c2_Mantisa_max_sum(21)
    );
  c2_Mantisa_max_sum_20 : LD_1
    port map (
      D => c0_A_max(20),
      G => c2_Mantisa_desp_sum_not0001,
      Q => c2_Mantisa_max_sum(20)
    );
  c2_Mantisa_max_sum_19 : LD_1
    port map (
      D => c0_A_max(19),
      G => c2_Mantisa_desp_sum_not0001,
      Q => c2_Mantisa_max_sum(19)
    );
  c2_Mantisa_max_sum_18 : LD_1
    port map (
      D => c0_A_max(18),
      G => c2_Mantisa_desp_sum_not0001,
      Q => c2_Mantisa_max_sum(18)
    );
  c2_Mantisa_max_sum_17 : LD_1
    port map (
      D => c0_A_max(17),
      G => c2_Mantisa_desp_sum_not0001,
      Q => c2_Mantisa_max_sum(17)
    );
  c2_Mantisa_max_sum_16 : LD_1
    port map (
      D => c0_A_max(16),
      G => c2_Mantisa_desp_sum_not0001,
      Q => c2_Mantisa_max_sum(16)
    );
  c2_Mantisa_max_sum_15 : LD_1
    port map (
      D => c0_A_max(15),
      G => c2_Mantisa_desp_sum_not0001,
      Q => c2_Mantisa_max_sum(15)
    );
  c2_Mantisa_max_sum_14 : LD_1
    port map (
      D => c0_A_max(14),
      G => c2_Mantisa_desp_sum_not0001,
      Q => c2_Mantisa_max_sum(14)
    );
  c2_Mantisa_max_sum_13 : LD_1
    port map (
      D => c0_A_max(13),
      G => c2_Mantisa_desp_sum_not0001,
      Q => c2_Mantisa_max_sum(13)
    );
  c2_Mantisa_max_sum_12 : LD_1
    port map (
      D => c0_A_max(12),
      G => c2_Mantisa_desp_sum_not0001,
      Q => c2_Mantisa_max_sum(12)
    );
  c2_Mantisa_max_sum_11 : LD_1
    port map (
      D => c0_A_max(11),
      G => c2_Mantisa_desp_sum_not0001,
      Q => c2_Mantisa_max_sum(11)
    );
  c2_Mantisa_max_sum_10 : LD_1
    port map (
      D => c0_A_max(10),
      G => c2_Mantisa_desp_sum_not0001,
      Q => c2_Mantisa_max_sum(10)
    );
  c2_Mantisa_max_sum_9 : LD_1
    port map (
      D => c0_A_max(9),
      G => c2_Mantisa_desp_sum_not0001,
      Q => c2_Mantisa_max_sum(9)
    );
  c2_Mantisa_max_sum_8 : LD_1
    port map (
      D => c0_A_max(8),
      G => c2_Mantisa_desp_sum_not0001,
      Q => c2_Mantisa_max_sum(8)
    );
  c2_Mantisa_max_sum_7 : LD_1
    port map (
      D => c0_A_max(7),
      G => c2_Mantisa_desp_sum_not0001,
      Q => c2_Mantisa_max_sum(7)
    );
  c2_Mantisa_max_sum_6 : LD_1
    port map (
      D => c0_A_max(6),
      G => c2_Mantisa_desp_sum_not0001,
      Q => c2_Mantisa_max_sum(6)
    );
  c2_Mantisa_max_sum_5 : LD_1
    port map (
      D => c0_A_max(5),
      G => c2_Mantisa_desp_sum_not0001,
      Q => c2_Mantisa_max_sum(5)
    );
  c2_Mantisa_max_sum_4 : LD_1
    port map (
      D => c0_A_max(4),
      G => c2_Mantisa_desp_sum_not0001,
      Q => c2_Mantisa_max_sum(4)
    );
  c2_Mantisa_max_sum_3 : LD_1
    port map (
      D => c0_A_max(3),
      G => c2_Mantisa_desp_sum_not0001,
      Q => c2_Mantisa_max_sum(3)
    );
  c2_Mantisa_max_sum_2 : LD_1
    port map (
      D => c0_A_max(2),
      G => c2_Mantisa_desp_sum_not0001,
      Q => c2_Mantisa_max_sum(2)
    );
  c2_Mantisa_max_sum_1 : LD_1
    port map (
      D => c0_A_max(1),
      G => c2_Mantisa_desp_sum_not0001,
      Q => c2_Mantisa_max_sum(1)
    );
  c2_Mantisa_max_sum_0 : LD_1
    port map (
      D => c0_A_max(0),
      G => c2_Mantisa_desp_sum_not0001,
      Q => c2_Mantisa_max_sum(0)
    );
  c2_Exp_max_sum_7 : LD_1
    port map (
      D => c0_e_max(7),
      G => c2_Mantisa_desp_sum_not0001,
      Q => c2_Exp_max_sum(7)
    );
  c2_Exp_max_sum_6 : LD_1
    port map (
      D => c0_e_max(6),
      G => c2_Mantisa_desp_sum_not0001,
      Q => c2_Exp_max_sum(6)
    );
  c2_Exp_max_sum_5 : LD_1
    port map (
      D => c0_e_max(5),
      G => c2_Mantisa_desp_sum_not0001,
      Q => c2_Exp_max_sum(5)
    );
  c2_Exp_max_sum_4 : LD_1
    port map (
      D => c0_e_max(4),
      G => c2_Mantisa_desp_sum_not0001,
      Q => c2_Exp_max_sum(4)
    );
  c2_Exp_max_sum_3 : LD_1
    port map (
      D => c0_e_max(3),
      G => c2_Mantisa_desp_sum_not0001,
      Q => c2_Exp_max_sum(3)
    );
  c2_Exp_max_sum_2 : LD_1
    port map (
      D => c0_e_max(2),
      G => c2_Mantisa_desp_sum_not0001,
      Q => c2_Exp_max_sum(2)
    );
  c2_Exp_max_sum_1 : LD_1
    port map (
      D => c0_e_max(1),
      G => c2_Mantisa_desp_sum_not0001,
      Q => c2_Exp_max_sum(1)
    );
  c2_Exp_max_sum_0 : LD_1
    port map (
      D => c0_e_max(0),
      G => c2_Mantisa_desp_sum_not0001,
      Q => c2_Exp_max_sum(0)
    );
  c6_mantisa_aux_22 : LD
    port map (
      D => c6_mantisa_aux_shift0001(22),
      G => c6_mantisa_aux_cmp_lt0000,
      Q => c6_mantisa_aux(22)
    );
  c6_mantisa_aux_21 : LD
    port map (
      D => c6_mantisa_aux_shift0001(21),
      G => c6_mantisa_aux_cmp_lt0000,
      Q => c6_mantisa_aux(21)
    );
  c6_mantisa_aux_20 : LD
    port map (
      D => c6_mantisa_aux_shift0001(20),
      G => c6_mantisa_aux_cmp_lt0000,
      Q => c6_mantisa_aux(20)
    );
  c6_mantisa_aux_19 : LD
    port map (
      D => c6_mantisa_aux_shift0001(19),
      G => c6_mantisa_aux_cmp_lt0000,
      Q => c6_mantisa_aux(19)
    );
  c6_mantisa_aux_18 : LD
    port map (
      D => c6_mantisa_aux_shift0001(18),
      G => c6_mantisa_aux_cmp_lt0000,
      Q => c6_mantisa_aux(18)
    );
  c6_mantisa_aux_17 : LD
    port map (
      D => c6_mantisa_aux_shift0001(17),
      G => c6_mantisa_aux_cmp_lt0000,
      Q => c6_mantisa_aux(17)
    );
  c6_mantisa_aux_16 : LD
    port map (
      D => c6_mantisa_aux_shift0001(16),
      G => c6_mantisa_aux_cmp_lt0000,
      Q => c6_mantisa_aux(16)
    );
  c6_mantisa_aux_15 : LD
    port map (
      D => c6_mantisa_aux_shift0001(15),
      G => c6_mantisa_aux_cmp_lt0000,
      Q => c6_mantisa_aux(15)
    );
  c6_mantisa_aux_14 : LD
    port map (
      D => c6_mantisa_aux_shift0001(14),
      G => c6_mantisa_aux_cmp_lt0000,
      Q => c6_mantisa_aux(14)
    );
  c6_mantisa_aux_13 : LD
    port map (
      D => c6_mantisa_aux_shift0001(13),
      G => c6_mantisa_aux_cmp_lt0000,
      Q => c6_mantisa_aux(13)
    );
  c6_mantisa_aux_12 : LD
    port map (
      D => c6_mantisa_aux_shift0001(12),
      G => c6_mantisa_aux_cmp_lt0000,
      Q => c6_mantisa_aux(12)
    );
  c6_mantisa_aux_11 : LD
    port map (
      D => c6_mantisa_aux_shift0001(11),
      G => c6_mantisa_aux_cmp_lt0000,
      Q => c6_mantisa_aux(11)
    );
  c6_mantisa_aux_10 : LD
    port map (
      D => c6_mantisa_aux_shift0001(10),
      G => c6_mantisa_aux_cmp_lt0000,
      Q => c6_mantisa_aux(10)
    );
  c6_mantisa_aux_9 : LD
    port map (
      D => c6_mantisa_aux_shift0001(9),
      G => c6_mantisa_aux_cmp_lt0000,
      Q => c6_mantisa_aux(9)
    );
  c6_mantisa_aux_8 : LD
    port map (
      D => c6_mantisa_aux_shift0001(8),
      G => c6_mantisa_aux_cmp_lt0000,
      Q => c6_mantisa_aux(8)
    );
  c6_mantisa_aux_7 : LD
    port map (
      D => c6_mantisa_aux_shift0001(7),
      G => c6_mantisa_aux_cmp_lt0000,
      Q => c6_mantisa_aux(7)
    );
  c6_mantisa_aux_6 : LD
    port map (
      D => c6_mantisa_aux_shift0001(6),
      G => c6_mantisa_aux_cmp_lt0000,
      Q => c6_mantisa_aux(6)
    );
  c6_mantisa_aux_5 : LD
    port map (
      D => c6_mantisa_aux_shift0001(5),
      G => c6_mantisa_aux_cmp_lt0000,
      Q => c6_mantisa_aux(5)
    );
  c6_mantisa_aux_4 : LD
    port map (
      D => c6_mantisa_aux_shift0001(4),
      G => c6_mantisa_aux_cmp_lt0000,
      Q => c6_mantisa_aux(4)
    );
  c6_mantisa_aux_3 : LD
    port map (
      D => c6_mantisa_aux_shift0001(3),
      G => c6_mantisa_aux_cmp_lt0000,
      Q => c6_mantisa_aux(3)
    );
  c6_mantisa_aux_2 : LD
    port map (
      D => c6_mantisa_aux_shift0001(2),
      G => c6_mantisa_aux_cmp_lt0000,
      Q => c6_mantisa_aux(2)
    );
  c6_mantisa_aux_1 : LD
    port map (
      D => c6_mantisa_aux_shift0001(1),
      G => c6_mantisa_aux_cmp_lt0000,
      Q => c6_mantisa_aux(1)
    );
  c6_mantisa_aux_0 : LD
    port map (
      D => c6_mantisa_aux_shift0001(0),
      G => c6_mantisa_aux_cmp_lt0000,
      Q => c6_mantisa_aux(0)
    );
  c6_Mcompar_mantisa_aux_cmp_lt0000_cy_7_Q : MUXCY
    port map (
      CI => c6_Mcompar_mantisa_aux_cmp_lt0000_cy(6),
      DI => c6_contador_ceros_mux0046(7),
      S => c6_Mcompar_mantisa_aux_cmp_lt0000_lut(7),
      O => c6_Mcompar_mantisa_aux_cmp_lt0000_cy_7_1
    );
  c6_Mcompar_mantisa_aux_cmp_lt0000_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => c6_contador_ceros_mux0046(7),
      I1 => c2_Exp_max_rest(7),
      O => c6_Mcompar_mantisa_aux_cmp_lt0000_lut(7)
    );
  c6_Mcompar_mantisa_aux_cmp_lt0000_cy_6_Q : MUXCY
    port map (
      CI => c6_Mcompar_mantisa_aux_cmp_lt0000_cy(5),
      DI => c6_contador_ceros_mux0046(6),
      S => c6_Mcompar_mantisa_aux_cmp_lt0000_lut(6),
      O => c6_Mcompar_mantisa_aux_cmp_lt0000_cy(6)
    );
  c6_Mcompar_mantisa_aux_cmp_lt0000_lut_6_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => c6_contador_ceros_mux0046(6),
      I1 => c2_Exp_max_rest(6),
      O => c6_Mcompar_mantisa_aux_cmp_lt0000_lut(6)
    );
  c6_Mcompar_mantisa_aux_cmp_lt0000_cy_5_Q : MUXCY
    port map (
      CI => c6_Mcompar_mantisa_aux_cmp_lt0000_cy(4),
      DI => c6_contador_ceros_mux0046(5),
      S => c6_Mcompar_mantisa_aux_cmp_lt0000_lut(5),
      O => c6_Mcompar_mantisa_aux_cmp_lt0000_cy(5)
    );
  c6_Mcompar_mantisa_aux_cmp_lt0000_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => c6_contador_ceros_mux0046(5),
      I1 => c2_Exp_max_rest(5),
      O => c6_Mcompar_mantisa_aux_cmp_lt0000_lut(5)
    );
  c6_Mcompar_mantisa_aux_cmp_lt0000_cy_4_Q : MUXCY
    port map (
      CI => c6_Mcompar_mantisa_aux_cmp_lt0000_cy(3),
      DI => c6_contador_ceros_mux0046_4_1,
      S => c6_Mcompar_mantisa_aux_cmp_lt0000_lut(4),
      O => c6_Mcompar_mantisa_aux_cmp_lt0000_cy(4)
    );
  c6_Mcompar_mantisa_aux_cmp_lt0000_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => c6_contador_ceros_mux0046_4_1,
      I1 => c2_Exp_max_rest(4),
      O => c6_Mcompar_mantisa_aux_cmp_lt0000_lut(4)
    );
  c6_Mcompar_mantisa_aux_cmp_lt0000_cy_3_Q : MUXCY
    port map (
      CI => c6_Mcompar_mantisa_aux_cmp_lt0000_cy(2),
      DI => c6_contador_ceros_mux0046_3_1,
      S => c6_Mcompar_mantisa_aux_cmp_lt0000_lut(3),
      O => c6_Mcompar_mantisa_aux_cmp_lt0000_cy(3)
    );
  c6_Mcompar_mantisa_aux_cmp_lt0000_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => c6_contador_ceros_mux0046_3_1,
      I1 => c2_Exp_max_rest(3),
      O => c6_Mcompar_mantisa_aux_cmp_lt0000_lut(3)
    );
  c6_Mcompar_mantisa_aux_cmp_lt0000_cy_2_Q : MUXCY
    port map (
      CI => c6_Mcompar_mantisa_aux_cmp_lt0000_cy(1),
      DI => c6_contador_ceros_mux0046_2_1,
      S => c6_Mcompar_mantisa_aux_cmp_lt0000_lut(2),
      O => c6_Mcompar_mantisa_aux_cmp_lt0000_cy(2)
    );
  c6_Mcompar_mantisa_aux_cmp_lt0000_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => c6_contador_ceros_mux0046_2_1,
      I1 => c2_Exp_max_rest(2),
      O => c6_Mcompar_mantisa_aux_cmp_lt0000_lut(2)
    );
  c6_Mcompar_mantisa_aux_cmp_lt0000_cy_1_Q : MUXCY
    port map (
      CI => c6_Mcompar_mantisa_aux_cmp_lt0000_cy(0),
      DI => c6_contador_ceros_mux0046_1_1,
      S => c6_Mcompar_mantisa_aux_cmp_lt0000_lut(1),
      O => c6_Mcompar_mantisa_aux_cmp_lt0000_cy(1)
    );
  c6_Mcompar_mantisa_aux_cmp_lt0000_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => c6_contador_ceros_mux0046_1_1,
      I1 => c2_Exp_max_rest(1),
      O => c6_Mcompar_mantisa_aux_cmp_lt0000_lut(1)
    );
  c6_Mcompar_mantisa_aux_cmp_lt0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => c6_contador_ceros_mux0046_0_1_1391,
      S => c6_Mcompar_mantisa_aux_cmp_lt0000_lut(0),
      O => c6_Mcompar_mantisa_aux_cmp_lt0000_cy(0)
    );
  c6_Mcompar_mantisa_aux_cmp_lt0000_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => c6_contador_ceros_mux0046_0_1_1391,
      I1 => c2_Exp_max_rest(0),
      O => c6_Mcompar_mantisa_aux_cmp_lt0000_lut(0)
    );
  c6_Mcompar_error_cmp_gt0000_cy_7_Q : MUXCY
    port map (
      CI => c6_Mcompar_error_cmp_gt0000_cy(6),
      DI => c2_Exp_max_rest(7),
      S => c6_Mcompar_error_cmp_gt0000_lut(7),
      O => c6_Mcompar_error_cmp_gt0000_cy(7)
    );
  c6_Mcompar_error_cmp_gt0000_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => c2_Exp_max_rest(7),
      I1 => c6_contador_ceros_mux0046(7),
      O => c6_Mcompar_error_cmp_gt0000_lut(7)
    );
  c6_Mcompar_error_cmp_gt0000_cy_6_Q : MUXCY
    port map (
      CI => c6_Mcompar_error_cmp_gt0000_cy(5),
      DI => c2_Exp_max_rest(6),
      S => c6_Mcompar_error_cmp_gt0000_lut(6),
      O => c6_Mcompar_error_cmp_gt0000_cy(6)
    );
  c6_Mcompar_error_cmp_gt0000_lut_6_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => c2_Exp_max_rest(6),
      I1 => c6_contador_ceros_mux0046(6),
      O => c6_Mcompar_error_cmp_gt0000_lut(6)
    );
  c6_Mcompar_error_cmp_gt0000_cy_5_Q : MUXCY
    port map (
      CI => c6_Mcompar_error_cmp_gt0000_cy(4),
      DI => c2_Exp_max_rest(5),
      S => c6_Mcompar_error_cmp_gt0000_lut(5),
      O => c6_Mcompar_error_cmp_gt0000_cy(5)
    );
  c6_Mcompar_error_cmp_gt0000_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => c2_Exp_max_rest(5),
      I1 => c6_contador_ceros_mux0046(5),
      O => c6_Mcompar_error_cmp_gt0000_lut(5)
    );
  c6_Mcompar_error_cmp_gt0000_cy_4_Q : MUXCY
    port map (
      CI => c6_Mcompar_error_cmp_gt0000_cy(3),
      DI => c2_Exp_max_rest(4),
      S => c6_Mcompar_error_cmp_gt0000_lut(4),
      O => c6_Mcompar_error_cmp_gt0000_cy(4)
    );
  c6_Mcompar_error_cmp_gt0000_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => c2_Exp_max_rest(4),
      I1 => c6_contador_ceros_mux0046_4_1,
      O => c6_Mcompar_error_cmp_gt0000_lut(4)
    );
  c6_Mcompar_error_cmp_gt0000_cy_3_Q : MUXCY
    port map (
      CI => c6_Mcompar_error_cmp_gt0000_cy(2),
      DI => c2_Exp_max_rest(3),
      S => c6_Mcompar_error_cmp_gt0000_lut(3),
      O => c6_Mcompar_error_cmp_gt0000_cy(3)
    );
  c6_Mcompar_error_cmp_gt0000_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => c2_Exp_max_rest(3),
      I1 => c6_contador_ceros_mux0046_3_1,
      O => c6_Mcompar_error_cmp_gt0000_lut(3)
    );
  c6_Mcompar_error_cmp_gt0000_cy_2_Q : MUXCY
    port map (
      CI => c6_Mcompar_error_cmp_gt0000_cy(1),
      DI => c2_Exp_max_rest(2),
      S => c6_Mcompar_error_cmp_gt0000_lut(2),
      O => c6_Mcompar_error_cmp_gt0000_cy(2)
    );
  c6_Mcompar_error_cmp_gt0000_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => c2_Exp_max_rest(2),
      I1 => c6_contador_ceros_mux0046_2_1,
      O => c6_Mcompar_error_cmp_gt0000_lut(2)
    );
  c6_Mcompar_error_cmp_gt0000_cy_1_Q : MUXCY
    port map (
      CI => c6_Mcompar_error_cmp_gt0000_cy(0),
      DI => c2_Exp_max_rest(1),
      S => c6_Mcompar_error_cmp_gt0000_lut(1),
      O => c6_Mcompar_error_cmp_gt0000_cy(1)
    );
  c6_Mcompar_error_cmp_gt0000_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => c2_Exp_max_rest(1),
      I1 => c6_contador_ceros_mux0046_1_1,
      O => c6_Mcompar_error_cmp_gt0000_lut(1)
    );
  c6_Mcompar_error_cmp_gt0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => c2_Exp_max_rest(0),
      S => c6_Mcompar_error_cmp_gt0000_lut(0),
      O => c6_Mcompar_error_cmp_gt0000_cy(0)
    );
  c6_Mcompar_error_cmp_gt0000_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => c2_Exp_max_rest(0),
      I1 => c6_contador_ceros_mux0046_0_1_1391,
      O => c6_Mcompar_error_cmp_gt0000_lut(0)
    );
  c6_Msub_exponente_out_addsub0000_xor_7_Q : XORCY
    port map (
      CI => c6_Msub_exponente_out_addsub0000_cy(6),
      LI => c6_Mcompar_mantisa_aux_cmp_lt0000_lut_7_1_1264,
      O => c6_exponente_out_addsub0000(7)
    );
  c6_Msub_exponente_out_addsub0000_xor_6_Q : XORCY
    port map (
      CI => c6_Msub_exponente_out_addsub0000_cy(5),
      LI => c6_Msub_exponente_out_addsub0000_lut(6),
      O => c6_exponente_out_addsub0000(6)
    );
  c6_Msub_exponente_out_addsub0000_cy_6_Q : MUXCY
    port map (
      CI => c6_Msub_exponente_out_addsub0000_cy(5),
      DI => c2_Exp_max_rest(6),
      S => c6_Msub_exponente_out_addsub0000_lut(6),
      O => c6_Msub_exponente_out_addsub0000_cy(6)
    );
  c6_Msub_exponente_out_addsub0000_lut_6_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => c2_Exp_max_rest(6),
      I1 => c6_contador_ceros_mux0046(6),
      O => c6_Msub_exponente_out_addsub0000_lut(6)
    );
  c6_Msub_exponente_out_addsub0000_xor_5_Q : XORCY
    port map (
      CI => c6_Msub_exponente_out_addsub0000_cy(4),
      LI => c6_Msub_exponente_out_addsub0000_lut(5),
      O => c6_exponente_out_addsub0000(5)
    );
  c6_Msub_exponente_out_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => c6_Msub_exponente_out_addsub0000_cy(4),
      DI => c2_Exp_max_rest(5),
      S => c6_Msub_exponente_out_addsub0000_lut(5),
      O => c6_Msub_exponente_out_addsub0000_cy(5)
    );
  c6_Msub_exponente_out_addsub0000_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => c2_Exp_max_rest(5),
      I1 => c6_contador_ceros_mux0046(5),
      O => c6_Msub_exponente_out_addsub0000_lut(5)
    );
  c6_Msub_exponente_out_addsub0000_xor_4_Q : XORCY
    port map (
      CI => c6_Msub_exponente_out_addsub0000_cy(3),
      LI => c6_Msub_exponente_out_addsub0000_lut(4),
      O => c6_exponente_out_addsub0000(4)
    );
  c6_Msub_exponente_out_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => c6_Msub_exponente_out_addsub0000_cy(3),
      DI => c2_Exp_max_rest(4),
      S => c6_Msub_exponente_out_addsub0000_lut(4),
      O => c6_Msub_exponente_out_addsub0000_cy(4)
    );
  c6_Msub_exponente_out_addsub0000_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => c2_Exp_max_rest(4),
      I1 => c6_contador_ceros_mux0046_4_1,
      O => c6_Msub_exponente_out_addsub0000_lut(4)
    );
  c6_Msub_exponente_out_addsub0000_xor_3_Q : XORCY
    port map (
      CI => c6_Msub_exponente_out_addsub0000_cy(2),
      LI => c6_Msub_exponente_out_addsub0000_lut(3),
      O => c6_exponente_out_addsub0000(3)
    );
  c6_Msub_exponente_out_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => c6_Msub_exponente_out_addsub0000_cy(2),
      DI => c2_Exp_max_rest(3),
      S => c6_Msub_exponente_out_addsub0000_lut(3),
      O => c6_Msub_exponente_out_addsub0000_cy(3)
    );
  c6_Msub_exponente_out_addsub0000_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => c2_Exp_max_rest(3),
      I1 => c6_contador_ceros_mux0046_3_1,
      O => c6_Msub_exponente_out_addsub0000_lut(3)
    );
  c6_Msub_exponente_out_addsub0000_xor_2_Q : XORCY
    port map (
      CI => c6_Msub_exponente_out_addsub0000_cy(1),
      LI => c6_Msub_exponente_out_addsub0000_lut(2),
      O => c6_exponente_out_addsub0000(2)
    );
  c6_Msub_exponente_out_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => c6_Msub_exponente_out_addsub0000_cy(1),
      DI => c2_Exp_max_rest(2),
      S => c6_Msub_exponente_out_addsub0000_lut(2),
      O => c6_Msub_exponente_out_addsub0000_cy(2)
    );
  c6_Msub_exponente_out_addsub0000_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => c2_Exp_max_rest(2),
      I1 => c6_contador_ceros_mux0046_2_1,
      O => c6_Msub_exponente_out_addsub0000_lut(2)
    );
  c6_Msub_exponente_out_addsub0000_xor_1_Q : XORCY
    port map (
      CI => c6_Msub_exponente_out_addsub0000_cy(0),
      LI => c6_Msub_exponente_out_addsub0000_lut(1),
      O => c6_exponente_out_addsub0000(1)
    );
  c6_Msub_exponente_out_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => c6_Msub_exponente_out_addsub0000_cy(0),
      DI => c2_Exp_max_rest(1),
      S => c6_Msub_exponente_out_addsub0000_lut(1),
      O => c6_Msub_exponente_out_addsub0000_cy(1)
    );
  c6_Msub_exponente_out_addsub0000_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => c2_Exp_max_rest(1),
      I1 => c6_contador_ceros_mux0046_1_1,
      O => c6_Msub_exponente_out_addsub0000_lut(1)
    );
  c6_Msub_exponente_out_addsub0000_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => c6_Msub_exponente_out_addsub0000_lut(0),
      O => c6_exponente_out_addsub0000(0)
    );
  c6_Msub_exponente_out_addsub0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => c2_Exp_max_rest(0),
      S => c6_Msub_exponente_out_addsub0000_lut(0),
      O => c6_Msub_exponente_out_addsub0000_cy(0)
    );
  c6_Msub_exponente_out_addsub0000_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => c2_Exp_max_rest(0),
      I1 => c6_contador_ceros_mux0046_0_1_1391,
      O => c6_Msub_exponente_out_addsub0000_lut(0)
    );
  c2_Mantisa_desp_sum_not00011 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => Operacion_0_IBUF_396,
      I1 => Operacion_1_IBUF_397,
      O => c2_Mantisa_desp_sum_not00011_1012
    );
  c2_Exp_max_rest_cmp_eq00001 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Operacion_0_IBUF_396,
      I1 => Operacion_1_IBUF_397,
      O => c2_Exp_max_rest_cmp_eq00001_954
    );
  c0_e_dif_7_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => c0_e_dif_or0001,
      I1 => c0_e_dif_mux0009(7),
      O => c0_e_dif_7_and0000
    );
  c0_e_dif_6_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => c0_e_dif_or0001,
      I1 => c0_e_dif_mux0009(6),
      O => c0_e_dif_6_and0000
    );
  c0_e_dif_5_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => c0_e_dif_or0001,
      I1 => c0_e_dif_mux0009(5),
      O => c0_e_dif_5_and0000
    );
  c0_e_dif_4_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => c0_e_dif_or0001,
      I1 => c0_e_dif_mux0009(4),
      O => c0_e_dif_4_and0000
    );
  c0_e_dif_3_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => c0_e_dif_or0001,
      I1 => c0_e_dif_mux0009(3),
      O => c0_e_dif_3_and0000
    );
  c0_e_dif_2_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => c0_e_dif_or0001,
      I1 => c0_e_dif_mux0009(2),
      O => c0_e_dif_2_and0000
    );
  c0_e_dif_1_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => c0_e_dif_or0001,
      I1 => c0_e_dif_mux0009(1),
      O => c0_e_dif_1_and0000
    );
  c0_e_dif_0_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => c0_e_dif_or0001,
      I1 => c0_e_dif_mux0009(0),
      O => c0_e_dif_0_and0000
    );
  c0_B_despl_9_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_B_despl_mux0009(9),
      O => c0_B_despl_9_and0000
    );
  c0_B_despl_8_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_B_despl_mux0009(8),
      O => c0_B_despl_8_and0000
    );
  c0_B_despl_7_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_B_despl_mux0009(7),
      O => c0_B_despl_7_and0000
    );
  c0_B_despl_6_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_B_despl_mux0009(6),
      O => c0_B_despl_6_and0000
    );
  c0_B_despl_5_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_B_despl_mux0009(5),
      O => c0_B_despl_5_and0000
    );
  c0_B_despl_4_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_B_despl_mux0009(4),
      O => c0_B_despl_4_and0000
    );
  c0_B_despl_3_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_B_despl_mux0009(3),
      O => c0_B_despl_3_and0000
    );
  c0_B_despl_2_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_B_despl_mux0009(2),
      O => c0_B_despl_2_and0000
    );
  c0_B_despl_22_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_B_despl_mux0009(22),
      O => c0_B_despl_22_and0000
    );
  c0_B_despl_21_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_B_despl_mux0009(21),
      O => c0_B_despl_21_and0000
    );
  c0_B_despl_20_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_B_despl_mux0009(20),
      O => c0_B_despl_20_and0000
    );
  c0_B_despl_1_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_B_despl_mux0009(1),
      O => c0_B_despl_1_and0000
    );
  c0_B_despl_19_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_B_despl_mux0009(19),
      O => c0_B_despl_19_and0000
    );
  c0_B_despl_18_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_B_despl_mux0009(18),
      O => c0_B_despl_18_and0000
    );
  c0_B_despl_17_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_B_despl_mux0009(17),
      O => c0_B_despl_17_and0000
    );
  c0_B_despl_16_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_B_despl_mux0009(16),
      O => c0_B_despl_16_and0000
    );
  c0_B_despl_15_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_B_despl_mux0009(15),
      O => c0_B_despl_15_and0000
    );
  c0_B_despl_14_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_B_despl_mux0009(14),
      O => c0_B_despl_14_and0000
    );
  c0_B_despl_13_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_B_despl_mux0009(13),
      O => c0_B_despl_13_and0000
    );
  c0_B_despl_12_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_B_despl_mux0009(12),
      O => c0_B_despl_12_and0000
    );
  c0_B_despl_11_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_B_despl_mux0009(11),
      O => c0_B_despl_11_and0000
    );
  c0_B_despl_10_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_B_despl_mux0009(10),
      O => c0_B_despl_10_and0000
    );
  c0_B_despl_0_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_B_despl_mux0009(0),
      O => c0_B_despl_0_and0000
    );
  c0_A_max_9_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_A_max_mux0009(9),
      O => c0_A_max_9_and0000
    );
  c0_A_max_8_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_A_max_mux0009(8),
      O => c0_A_max_8_and0000
    );
  c0_A_max_7_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_A_max_mux0009(7),
      O => c0_A_max_7_and0000
    );
  c0_A_max_6_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_A_max_mux0009(6),
      O => c0_A_max_6_and0000
    );
  c0_A_max_5_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_A_max_mux0009(5),
      O => c0_A_max_5_and0000
    );
  c0_A_max_4_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_A_max_mux0009(4),
      O => c0_A_max_4_and0000
    );
  c0_A_max_3_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_A_max_mux0009(3),
      O => c0_A_max_3_and0000
    );
  c0_A_max_2_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_A_max_mux0009(2),
      O => c0_A_max_2_and0000
    );
  c0_A_max_23_and00001 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_B_despl_or0003_595,
      O => c0_A_max_23_and0000
    );
  c0_A_max_22_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_A_max_mux0009(22),
      O => c0_A_max_22_and0000
    );
  c0_A_max_21_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_A_max_mux0009(21),
      O => c0_A_max_21_and0000
    );
  c0_A_max_20_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_A_max_mux0009(20),
      O => c0_A_max_20_and0000
    );
  c0_A_max_1_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_A_max_mux0009(1),
      O => c0_A_max_1_and0000
    );
  c0_A_max_19_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_A_max_mux0009(19),
      O => c0_A_max_19_and0000
    );
  c0_A_max_18_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_A_max_mux0009(18),
      O => c0_A_max_18_and0000
    );
  c0_A_max_17_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_A_max_mux0009(17),
      O => c0_A_max_17_and0000
    );
  c0_A_max_16_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_A_max_mux0009(16),
      O => c0_A_max_16_and0000
    );
  c0_A_max_15_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_A_max_mux0009(15),
      O => c0_A_max_15_and0000
    );
  c0_A_max_14_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_A_max_mux0009(14),
      O => c0_A_max_14_and0000
    );
  c0_A_max_13_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_A_max_mux0009(13),
      O => c0_A_max_13_and0000
    );
  c0_A_max_12_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_A_max_mux0009(12),
      O => c0_A_max_12_and0000
    );
  c0_A_max_11_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_A_max_mux0009(11),
      O => c0_A_max_11_and0000
    );
  c0_A_max_10_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_A_max_mux0009(10),
      O => c0_A_max_10_and0000
    );
  c0_A_max_0_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_A_max_mux0009(0),
      O => c0_A_max_0_and0000
    );
  c6_mantisa_aux_shift0001_22_51 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => c6_mantisa_aux_or0000,
      I1 => c6_contador_ceros_mux0046_2_1,
      I2 => c6_contador_ceros_mux0046_3_1,
      O => c6_N163
    );
  c0_e_max_7_or00001 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => c0_e_max_or0001,
      I1 => c0_e_max_mux0009(7),
      I2 => c0_e_max_or0000,
      O => c0_e_max_7_or0000
    );
  c0_e_max_6_or00001 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => c0_e_max_or0001,
      I1 => c0_e_max_mux0009(6),
      I2 => c0_e_max_or0000,
      O => c0_e_max_6_or0000
    );
  c0_e_max_5_or00001 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => c0_e_max_or0001,
      I1 => c0_e_max_mux0009(5),
      I2 => c0_e_max_or0000,
      O => c0_e_max_5_or0000
    );
  c0_e_max_4_or00001 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => c0_e_max_or0001,
      I1 => c0_e_max_mux0009(4),
      I2 => c0_e_max_or0000,
      O => c0_e_max_4_or0000
    );
  c0_e_max_3_or00001 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => c0_e_max_or0001,
      I1 => c0_e_max_mux0009(3),
      I2 => c0_e_max_or0000,
      O => c0_e_max_3_or0000
    );
  c0_e_max_2_or00001 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => c0_e_max_or0001,
      I1 => c0_e_max_mux0009(2),
      I2 => c0_e_max_or0000,
      O => c0_e_max_2_or0000
    );
  c0_e_max_1_or00001 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => c0_e_max_or0001,
      I1 => c0_e_max_mux0009(1),
      I2 => c0_e_max_or0000,
      O => c0_e_max_1_or0000
    );
  c0_e_max_0_or00001 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => c0_e_max_or0001,
      I1 => c0_e_max_mux0009(0),
      I2 => c0_e_max_or0000,
      O => c0_e_max_0_or0000
    );
  c0_e_dif_7_or00001 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => c0_e_dif_or0001,
      I1 => c0_e_dif_mux0009(7),
      I2 => c0_e_dif_or0000_749,
      O => c0_e_dif_7_or0000
    );
  c0_e_dif_6_or00001 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => c0_e_dif_or0001,
      I1 => c0_e_dif_mux0009(6),
      I2 => c0_e_dif_or0000_749,
      O => c0_e_dif_6_or0000
    );
  c0_e_dif_5_or00001 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => c0_e_dif_or0001,
      I1 => c0_e_dif_mux0009(5),
      I2 => c0_e_dif_or0000_749,
      O => c0_e_dif_5_or0000
    );
  c0_e_dif_4_or00001 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => c0_e_dif_or0001,
      I1 => c0_e_dif_mux0009(4),
      I2 => c0_e_dif_or0000_749,
      O => c0_e_dif_4_or0000
    );
  c0_e_dif_3_or00001 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => c0_e_dif_or0001,
      I1 => c0_e_dif_mux0009(3),
      I2 => c0_e_dif_or0000_749,
      O => c0_e_dif_3_or0000
    );
  c0_e_dif_2_or00001 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => c0_e_dif_or0001,
      I1 => c0_e_dif_mux0009(2),
      I2 => c0_e_dif_or0000_749,
      O => c0_e_dif_2_or0000
    );
  c0_e_dif_1_or00001 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => c0_e_dif_or0001,
      I1 => c0_e_dif_mux0009(1),
      I2 => c0_e_dif_or0000_749,
      O => c0_e_dif_1_or0000
    );
  c0_e_dif_0_or00001 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => c0_e_dif_or0001,
      I1 => c0_e_dif_mux0009(0),
      I2 => c0_e_dif_or0000_749,
      O => c0_e_dif_0_or0000
    );
  c6_mantisa_aux_shift0001_21_621 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => c6_contador_ceros_mux0046_1_1,
      I1 => rest_norm_M(21),
      I2 => rest_norm_M(19),
      O => c6_N137
    );
  c6_mantisa_aux_shift0001_21_51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => c6_contador_ceros_mux0046_1_1,
      I1 => rest_norm_M(5),
      I2 => rest_norm_M(3),
      O => c6_N123
    );
  c6_mantisa_aux_shift0001_21_411 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => c6_contador_ceros_mux0046_1_1,
      I1 => rest_norm_M(4),
      I2 => rest_norm_M(2),
      O => c6_N132
    );
  c6_mantisa_aux_shift0001_20_511 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => c6_contador_ceros_mux0046_1_1,
      I1 => rest_norm_M(19),
      I2 => rest_norm_M(17),
      O => c6_N136
    );
  c6_mantisa_aux_shift0001_20_41 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => c6_contador_ceros_mux0046_1_1,
      I1 => rest_norm_M(3),
      I2 => rest_norm_M(1),
      O => c6_N122
    );
  c6_mantisa_aux_shift0001_20_311 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => c6_contador_ceros_mux0046_0_1_1391,
      I1 => rest_norm_M(16),
      I2 => rest_norm_M(15),
      O => c6_N113
    );
  c6_mantisa_aux_shift0001_19_111 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => c6_contador_ceros_mux0046_1_1,
      I1 => rest_norm_M(2),
      I2 => rest_norm_M(0),
      O => c6_N10
    );
  c6_mantisa_aux_shift0001_19_11 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => c6_contador_ceros_mux0046_0_1_1391,
      I1 => c6_N122,
      I2 => c6_N10,
      O => c6_N4
    );
  c6_mantisa_aux_shift0001_13_11 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => c6_contador_ceros_mux0046_2_1,
      I1 => c6_Sh5,
      I2 => c6_N1511,
      O => c6_N110
    );
  c6_mantisa_aux_shift0001_11_11 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => c6_contador_ceros_mux0046_3_1,
      I1 => c6_Sh11,
      I2 => c6_N4,
      O => c6_N90
    );
  c6_Sh811 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => c6_contador_ceros_mux0046_1_1,
      I1 => rest_norm_M(8),
      I2 => rest_norm_M(6),
      O => c6_N1210
    );
  c6_Sh721 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => c6_contador_ceros_mux0046_1_1,
      I1 => rest_norm_M(7),
      I2 => rest_norm_M(5),
      O => c6_N921
    );
  c6_Sh711 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => c6_contador_ceros_mux0046_1_1,
      I1 => rest_norm_M(6),
      I2 => rest_norm_M(4),
      O => c6_N115
    );
  c6_Sh71 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => c6_contador_ceros_mux0046_0_1_1391,
      I1 => c6_N921,
      I2 => c6_N115,
      O => c6_Sh7
    );
  c6_Sh61 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => c6_contador_ceros_mux0046_0_1_1391,
      I1 => c6_N115,
      I2 => c6_N123,
      O => c6_Sh6
    );
  c6_Sh51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => c6_contador_ceros_mux0046_0_1_1391,
      I1 => c6_N123,
      I2 => c6_N132,
      O => c6_Sh5
    );
  c6_Sh41 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => c6_contador_ceros_mux0046_0_1_1391,
      I1 => c6_N132,
      I2 => c6_N122,
      O => c6_Sh4
    );
  c1_despazador_out_9_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => c1_num_desp_aux_cmp_le00001,
      I1 => c0_B_despl(9),
      I2 => c1_num_out_aux(9),
      O => despl_mux_Mdesp(9)
    );
  c1_despazador_out_8_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => c1_num_desp_aux_cmp_le00001,
      I1 => c0_B_despl(8),
      I2 => c1_num_out_aux(8),
      O => despl_mux_Mdesp(8)
    );
  c1_despazador_out_7_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => c1_num_desp_aux_cmp_le00001,
      I1 => c0_B_despl(7),
      I2 => c1_num_out_aux(7),
      O => despl_mux_Mdesp(7)
    );
  c1_despazador_out_6_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => c1_num_desp_aux_cmp_le00001,
      I1 => c0_B_despl(6),
      I2 => c1_num_out_aux(6),
      O => despl_mux_Mdesp(6)
    );
  c1_despazador_out_5_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => c1_num_desp_aux_cmp_le00001,
      I1 => c0_B_despl(5),
      I2 => c1_num_out_aux(5),
      O => despl_mux_Mdesp(5)
    );
  c1_despazador_out_4_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => c1_num_desp_aux_cmp_le00001,
      I1 => c0_B_despl(4),
      I2 => c1_num_out_aux(4),
      O => despl_mux_Mdesp(4)
    );
  c1_despazador_out_3_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => c1_num_desp_aux_cmp_le00001,
      I1 => c0_B_despl(3),
      I2 => c1_num_out_aux(3),
      O => despl_mux_Mdesp(3)
    );
  c1_despazador_out_2_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => c1_num_desp_aux_cmp_le00001,
      I1 => c0_B_despl(2),
      I2 => c1_num_out_aux(2),
      O => despl_mux_Mdesp(2)
    );
  c1_despazador_out_23_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => c1_num_desp_aux_cmp_le00001,
      I1 => c0_B_despl(23),
      I2 => c1_num_out_aux(23),
      O => despl_mux_Mdesp(23)
    );
  c1_despazador_out_22_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => c1_num_desp_aux_cmp_le00001,
      I1 => c0_B_despl(22),
      I2 => c1_num_out_aux(22),
      O => despl_mux_Mdesp(22)
    );
  c1_despazador_out_21_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => c1_num_desp_aux_cmp_le00001,
      I1 => c0_B_despl(21),
      I2 => c1_num_out_aux(21),
      O => despl_mux_Mdesp(21)
    );
  c1_despazador_out_20_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => c1_num_desp_aux_cmp_le00001,
      I1 => c0_B_despl(20),
      I2 => c1_num_out_aux(20),
      O => despl_mux_Mdesp(20)
    );
  c1_despazador_out_1_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => c1_num_desp_aux_cmp_le00001,
      I1 => c0_B_despl(1),
      I2 => c1_num_out_aux(1),
      O => despl_mux_Mdesp(1)
    );
  c1_despazador_out_19_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => c1_num_desp_aux_cmp_le00001,
      I1 => c0_B_despl(19),
      I2 => c1_num_out_aux(19),
      O => despl_mux_Mdesp(19)
    );
  c1_despazador_out_18_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => c1_num_desp_aux_cmp_le00001,
      I1 => c0_B_despl(18),
      I2 => c1_num_out_aux(18),
      O => despl_mux_Mdesp(18)
    );
  c1_despazador_out_17_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => c1_num_desp_aux_cmp_le00001,
      I1 => c0_B_despl(17),
      I2 => c1_num_out_aux(17),
      O => despl_mux_Mdesp(17)
    );
  c1_despazador_out_16_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => c1_num_desp_aux_cmp_le00001,
      I1 => c0_B_despl(16),
      I2 => c1_num_out_aux(16),
      O => despl_mux_Mdesp(16)
    );
  c1_despazador_out_15_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => c1_num_desp_aux_cmp_le00001,
      I1 => c0_B_despl(15),
      I2 => c1_num_out_aux(15),
      O => despl_mux_Mdesp(15)
    );
  c1_despazador_out_14_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => c1_num_desp_aux_cmp_le00001,
      I1 => c0_B_despl(14),
      I2 => c1_num_out_aux(14),
      O => despl_mux_Mdesp(14)
    );
  c1_despazador_out_13_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => c1_num_desp_aux_cmp_le00001,
      I1 => c0_B_despl(13),
      I2 => c1_num_out_aux(13),
      O => despl_mux_Mdesp(13)
    );
  c1_despazador_out_12_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => c1_num_desp_aux_cmp_le00001,
      I1 => c0_B_despl(12),
      I2 => c1_num_out_aux(12),
      O => despl_mux_Mdesp(12)
    );
  c1_despazador_out_11_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => c1_num_desp_aux_cmp_le00001,
      I1 => c0_B_despl(11),
      I2 => c1_num_out_aux(11),
      O => despl_mux_Mdesp(11)
    );
  c1_despazador_out_10_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => c1_num_desp_aux_cmp_le00001,
      I1 => c0_B_despl(10),
      I2 => c1_num_out_aux(10),
      O => despl_mux_Mdesp(10)
    );
  c1_despazador_out_0_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => c1_num_desp_aux_cmp_le00001,
      I1 => c0_B_despl(0),
      I2 => c1_num_out_aux(0),
      O => despl_mux_Mdesp(0)
    );
  c6_mantisa_aux_shift0001_8_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => c6_N138,
      I1 => c6_N84,
      I2 => c6_Sh4,
      I3 => c6_N165,
      O => c6_mantisa_aux_shift0001(8)
    );
  c6_mantisa_aux_shift0001_7_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => c6_N158,
      I1 => c6_Sh7,
      I2 => c6_N4,
      I3 => c6_N165,
      O => c6_mantisa_aux_shift0001(7)
    );
  c6_mantisa_aux_shift0001_6_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => c6_N158,
      I1 => c6_Sh6,
      I2 => c6_N44,
      I3 => c6_N165,
      O => c6_mantisa_aux_shift0001(6)
    );
  c6_mantisa_aux_shift0001_4_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => c6_N158,
      I1 => c6_Sh4,
      I2 => c6_N162,
      I3 => c6_N165,
      O => c6_mantisa_aux_shift0001(4)
    );
  c6_mantisa_aux_shift0001_11_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => c6_N138,
      I1 => c6_N90,
      I2 => c6_Sh7,
      I3 => c6_N165,
      O => c6_mantisa_aux_shift0001(11)
    );
  c6_mantisa_aux_shift0001_10_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => c6_N111,
      I1 => c6_N138,
      I2 => c6_Sh6,
      I3 => c6_N165,
      O => c6_mantisa_aux_shift0001(10)
    );
  c6_mantisa_aux_shift0001_22_111 : LUT4
    generic map(
      INIT => X"44E4"
    )
    port map (
      I0 => c6_contador_ceros_mux0046_0_1_1391,
      I1 => c6_N10,
      I2 => rest_norm_M(1),
      I3 => c6_contador_ceros_mux0046_1_1,
      O => c6_N44
    );
  c6_mantisa_aux_shift0001_15_1 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => c6_N160,
      I1 => c6_contador_ceros_mux0046_2_1,
      I2 => c6_N46,
      I3 => c6_N90,
      O => c6_mantisa_aux_shift0001(15)
    );
  c0_e_dif_or00001 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => c0_mux0000_and0003,
      I1 => c0_mux0000_and0005,
      I2 => c0_mux0000_and0004,
      I3 => N13,
      O => c0_N7
    );
  c6_mantisa_aux_shift0001_9_SW0 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => c6_contador_ceros_mux0046_2_1,
      I1 => c6_N41,
      I2 => c6_Sh5,
      O => N21
    );
  c6_mantisa_aux_shift0001_9_Q : LUT4
    generic map(
      INIT => X"4C08"
    )
    port map (
      I0 => c6_contador_ceros_mux0046_3_1,
      I1 => c6_N160,
      I2 => N22,
      I3 => N21,
      O => c6_mantisa_aux_shift0001(9)
    );
  c6_mantisa_aux_shift0001_22_2_SW0 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => c6_contador_ceros_mux0046_0_1_1391,
      I1 => rest_norm_M(14),
      I2 => rest_norm_M(13),
      O => c6_mantisa_aux_shift0001_20_319
    );
  c6_mantisa_aux_shift0001_22_2_SW1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => c6_contador_ceros_mux0046_0_1_1391,
      I1 => rest_norm_M(12),
      I2 => rest_norm_M(11),
      O => N25
    );
  c6_mantisa_aux_shift0001_22_2 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => c6_contador_ceros_mux0046_1_1,
      I1 => c6_mantisa_aux_shift0001_20_319,
      I2 => N25,
      O => c6_N43
    );
  c6_mantisa_aux_shift0001_22_12_SW0 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => c6_contador_ceros_mux0046_0_1_1391,
      I1 => rest_norm_M(10),
      I2 => rest_norm_M(9),
      O => N27
    );
  c6_mantisa_aux_shift0001_22_12_SW1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => c6_contador_ceros_mux0046_0_1_1391,
      I1 => rest_norm_M(8),
      I2 => rest_norm_M(7),
      O => N28
    );
  c6_mantisa_aux_shift0001_21_3_SW1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => c6_contador_ceros_mux0046_0_1_1391,
      I1 => rest_norm_M(11),
      I2 => rest_norm_M(10),
      O => N31
    );
  c6_mantisa_aux_shift0001_20_2 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => c6_contador_ceros_mux0046_1_1,
      I1 => N25,
      I2 => N27,
      O => c6_N42
    );
  c6_mantisa_aux_shift0001_9_11_SW0 : LUT4
    generic map(
      INIT => X"FC60"
    )
    port map (
      I0 => c6_N64,
      I1 => c6_Madd_contador_ceros_addsub0019_cy(0),
      I2 => rest_norm_M(1),
      I3 => rest_norm_M(0),
      O => N39
    );
  c6_mantisa_aux_shift0001_9_11 : LUT3
    generic map(
      INIT => X"60"
    )
    port map (
      I0 => c6_N271,
      I1 => c6_Madd_contador_ceros_addsub0019_lut(1),
      I2 => N39,
      O => c6_N1511
    );
  c6_mantisa_aux_shift0001_19_214 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => c6_contador_ceros_mux0046_1_1,
      I1 => c6_contador_ceros_mux0046_0_1_1391,
      I2 => rest_norm_M(13),
      I3 => rest_norm_M(12),
      O => c6_mantisa_aux_shift0001_19_214_1465
    );
  c6_mantisa_aux_shift0001_19_240 : LUT4
    generic map(
      INIT => X"FE54"
    )
    port map (
      I0 => c6_contador_ceros_mux0046_3_1,
      I1 => c6_mantisa_aux_shift0001_19_214_1465,
      I2 => c6_mantisa_aux_shift0001_19_217_1466,
      I3 => c6_Sh7,
      O => c6_N46
    );
  c6_mantisa_aux_shift0001_20_33_SW0 : LUT4
    generic map(
      INIT => X"C9CC"
    )
    port map (
      I0 => c6_N87,
      I1 => c6_Madd_contador_ceros_addsub0019_cy(0),
      I2 => rest_norm_M(2),
      I3 => rest_norm_M(1),
      O => N47
    );
  c6_mantisa_aux_shift0001_20_33 : LUT4
    generic map(
      INIT => X"0060"
    )
    port map (
      I0 => c6_N271,
      I1 => c6_Madd_contador_ceros_addsub0019_lut(1),
      I2 => rest_norm_M(0),
      I3 => N47,
      O => c6_N162
    );
  c6_mantisa_aux_shift0001_17_19 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => c6_N41,
      I1 => c6_contador_ceros_mux0046_3_1,
      I2 => c6_contador_ceros_mux0046_2_1,
      O => c6_mantisa_aux_shift0001_17_19_1461
    );
  c6_mantisa_aux_shift0001_17_40 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => c6_N135,
      I1 => c6_N163,
      I2 => c6_mantisa_aux_shift0001_17_30_1462,
      O => c6_mantisa_aux_shift0001(17)
    );
  c6_mantisa_aux_or000012 : LUT4
    generic map(
      INIT => X"08AA"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0021_lut(6),
      I1 => c6_Madd_contador_ceros_addsub0021_cy(5),
      I2 => c6_N52,
      I3 => c6_Madd_contador_ceros_addsub0021_lut(7),
      O => c6_mantisa_aux_or000012_1435
    );
  c6_mantisa_aux_or000022 : LUT4
    generic map(
      INIT => X"F020"
    )
    port map (
      I0 => c6_N52,
      I1 => c6_Madd_contador_ceros_addsub0021_cy(4),
      I2 => c6_Madd_contador_ceros_addsub0021_lut(5),
      I3 => c6_N124,
      O => c6_mantisa_aux_or000022_1436
    );
  c6_mantisa_aux_or000046 : LUT4
    generic map(
      INIT => X"FF15"
    )
    port map (
      I0 => c6_N12,
      I1 => c6_Madd_contador_ceros_addsub0021_cy(5),
      I2 => c6_Madd_contador_ceros_addsub0021_lut(6),
      I3 => c6_N124,
      O => c6_mantisa_aux_or000046_1437
    );
  c6_mantisa_aux_or0000119 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => c6_mantisa_aux_or000012_1435,
      I1 => c6_mantisa_aux_or000022_1436,
      I2 => c6_mantisa_aux_or0000103_1434,
      O => c6_mantisa_aux_or0000
    );
  c6_mantisa_aux_shift0001_20_328 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => c6_contador_ceros_mux0046_1_1,
      I1 => c6_N113,
      I2 => c6_mantisa_aux_shift0001_20_319,
      O => c6_mantisa_aux_shift0001_20_328_1477
    );
  c6_mantisa_aux_shift0001_20_20 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => c6_contador_ceros_mux0046_4_1,
      I1 => c6_N136,
      I2 => c6_N122,
      O => c6_mantisa_aux_shift0001_20_20_1475
    );
  c6_mantisa_aux_shift0001_20_42 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => c6_mantisa_aux_shift0001_20_373_1478,
      I1 => c6_contador_ceros_mux0046_0_1_1391,
      I2 => c6_N103,
      I3 => c6_mantisa_aux_shift0001_20_20_1475,
      O => c6_mantisa_aux_shift0001_20_42_1479
    );
  c6_mantisa_aux_shift0001_19_97 : LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      I0 => c6_mantisa_aux_shift0001_19_85,
      I1 => c6_N4,
      I2 => c6_N163,
      I3 => c6_contador_ceros_mux0046_4_1,
      O => c6_mantisa_aux_shift0001(19)
    );
  c1_num_out_aux_shift0001_23_1 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => c1_num_desp_aux(4),
      I1 => c1_num_out_aux_or0000,
      I2 => N426,
      I3 => c1_Sh23,
      O => c1_num_out_aux_shift0001(23)
    );
  c1_num_out_aux_shift0001_22_1 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => c1_num_desp_aux(4),
      I1 => c1_num_out_aux_or0000,
      I2 => c1_N01,
      I3 => c1_Sh22,
      O => c1_num_out_aux_shift0001(22)
    );
  c1_num_out_aux_shift0001_21_1 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => c1_num_desp_aux(4),
      I1 => c1_num_out_aux_or0000,
      I2 => c1_N01,
      I3 => c1_Sh21_848,
      O => c1_num_out_aux_shift0001(21)
    );
  c1_num_out_aux_shift0001_20_1 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => c1_num_desp_aux(4),
      I1 => c1_num_out_aux_or0000,
      I2 => c1_N01,
      I3 => c1_Sh20_847,
      O => c1_num_out_aux_shift0001(20)
    );
  c4_Exponente_final_1_1 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => c2_Exp_max_sum(1),
      I1 => c2_Exp_max_sum(0),
      I2 => c3_Madd_num_out_S_cy(23),
      O => Exponente_suma_1_OBUF_57
    );
  c1_num_out_aux_shift0001_19_1 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => c1_num_desp_aux(4),
      I1 => c1_num_out_aux_or0000,
      I2 => c1_Sh43,
      O => c1_num_out_aux_shift0001(19)
    );
  c1_num_out_aux_shift0001_18_1 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => c1_num_desp_aux(4),
      I1 => c1_num_out_aux_or0000,
      I2 => c1_Sh42,
      O => c1_num_out_aux_shift0001(18)
    );
  c1_num_out_aux_shift0001_17_1 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => c1_num_desp_aux(4),
      I1 => c1_num_out_aux_or0000,
      I2 => N432,
      O => c1_num_out_aux_shift0001(17)
    );
  c1_num_out_aux_shift0001_16_1 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => c1_num_desp_aux(4),
      I1 => c1_num_out_aux_or0000,
      I2 => c1_Sh40,
      O => c1_num_out_aux_shift0001(16)
    );
  c1_Sh21 : LUT4
    generic map(
      INIT => X"085D"
    )
    port map (
      I0 => c1_num_desp_aux(1),
      I1 => c0_B_despl(23),
      I2 => c1_num_desp_aux(0),
      I3 => N49,
      O => c1_Sh21_848
    );
  c1_Sh20_SW1 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => c0_B_despl(23),
      I1 => c0_B_despl(22),
      I2 => c1_num_desp_aux_0_3_864,
      O => N52
    );
  c1_Sh20 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => c1_num_desp_aux(1),
      I1 => N433,
      I2 => N52,
      O => c1_Sh20_847
    );
  c1_num_out_aux_shift0001_13_5 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => c1_num_desp_aux(2),
      I1 => c1_num_desp_aux(3),
      I2 => c1_Sh17_844,
      O => c1_num_out_aux_shift0001_13_5_913
    );
  c4_Exponente_final_3_2 : LUT3
    generic map(
      INIT => X"9C"
    )
    port map (
      I0 => c4_N5,
      I1 => c2_Exp_max_sum(3),
      I2 => c2_Exp_max_sum(2),
      O => Exponente_suma_3_OBUF_59
    );
  c4_Exponente_final_4_1 : LUT4
    generic map(
      INIT => X"CC6C"
    )
    port map (
      I0 => c2_Exp_max_sum(3),
      I1 => c2_Exp_max_sum(4),
      I2 => c2_Exp_max_sum(2),
      I3 => c4_N5,
      O => Exponente_suma_4_OBUF_60
    );
  c0_B_despl_cmp_eq0000826 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => Exponente_1_3_IBUF_11,
      I1 => Exponente_2_3_IBUF_27,
      I2 => Exponente_1_2_IBUF_10,
      I3 => Exponente_2_2_IBUF_26,
      O => c0_B_despl_cmp_eq0000826_567
    );
  c0_B_despl_cmp_eq0000853 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => Exponente_1_1_IBUF_9,
      I1 => Exponente_2_1_IBUF_25,
      I2 => Exponente_1_0_IBUF_8,
      I3 => Exponente_2_0_IBUF_24,
      O => c0_B_despl_cmp_eq0000853_568
    );
  c0_B_despl_cmp_eq0000893 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => Exponente_1_7_IBUF_15,
      I1 => Exponente_2_7_IBUF_31,
      I2 => Exponente_1_6_IBUF_14,
      I3 => Exponente_2_6_IBUF_30,
      O => c0_B_despl_cmp_eq0000893_569
    );
  c0_B_despl_cmp_eq00008120 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => Exponente_1_5_IBUF_13,
      I1 => Exponente_2_5_IBUF_29,
      I2 => Exponente_1_4_IBUF_12,
      I3 => Exponente_2_4_IBUF_28,
      O => c0_B_despl_cmp_eq00008120_566
    );
  c0_B_despl_cmp_eq00008136 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => c0_B_despl_cmp_eq0000826_567,
      I1 => c0_B_despl_cmp_eq0000853_568,
      I2 => c0_B_despl_cmp_eq0000893_569,
      I3 => c0_B_despl_cmp_eq00008120_566,
      O => c0_B_despl_cmp_eq00001
    );
  c1_Sh18_SW0 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => c0_B_despl(19),
      I1 => c0_B_despl(18),
      I2 => c1_num_desp_aux_0_3_864,
      O => N75
    );
  c1_Sh16_SW0 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => c0_B_despl(17),
      I1 => c0_B_despl(16),
      I2 => c1_num_desp_aux(0),
      O => N81
    );
  c1_num_out_aux_shift0001_7_12 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => c1_num_desp_aux(4),
      I1 => c1_num_desp_aux(2),
      I2 => c1_num_desp_aux(3),
      I3 => N428,
      O => c1_num_out_aux_shift0001_7_12_941
    );
  c1_num_out_aux_shift0001_7_86 : LUT3
    generic map(
      INIT => X"54"
    )
    port map (
      I0 => N427,
      I1 => c1_num_out_aux_shift0001_7_12_941,
      I2 => c1_num_out_aux_shift0001_7_59_942,
      O => c1_num_out_aux_shift0001(7)
    );
  c1_num_out_aux_shift0001_6_12 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => c1_num_desp_aux(4),
      I1 => c1_num_desp_aux(2),
      I2 => c1_num_desp_aux(3),
      I3 => N429,
      O => c1_num_out_aux_shift0001_6_12_938
    );
  c1_num_out_aux_shift0001_6_86 : LUT3
    generic map(
      INIT => X"54"
    )
    port map (
      I0 => c1_num_out_aux_or0000,
      I1 => c1_num_out_aux_shift0001_6_12_938,
      I2 => c1_num_out_aux_shift0001_6_59_939,
      O => c1_num_out_aux_shift0001(6)
    );
  c1_num_out_aux_shift0001_3_27 : LUT4
    generic map(
      INIT => X"AC00"
    )
    port map (
      I0 => c0_B_despl(6),
      I1 => c0_B_despl(4),
      I2 => c1_num_desp_aux(1),
      I3 => c1_num_desp_aux(0),
      O => c1_num_out_aux_shift0001_3_27_931
    );
  c1_num_out_aux_shift0001_3_42 : LUT4
    generic map(
      INIT => X"00CA"
    )
    port map (
      I0 => c0_B_despl(3),
      I1 => c0_B_despl(5),
      I2 => c1_num_desp_aux(1),
      I3 => c1_num_desp_aux(0),
      O => c1_num_out_aux_shift0001_3_42_932
    );
  c1_num_out_aux_shift0001_2_27 : LUT4
    generic map(
      INIT => X"AC00"
    )
    port map (
      I0 => c0_B_despl(5),
      I1 => c0_B_despl(3),
      I2 => c1_num_desp_aux(1),
      I3 => c1_num_desp_aux(0),
      O => c1_num_out_aux_shift0001_2_27_928
    );
  c1_num_out_aux_shift0001_2_42 : LUT4
    generic map(
      INIT => X"00CA"
    )
    port map (
      I0 => c0_B_despl(2),
      I1 => c0_B_despl(4),
      I2 => c1_num_desp_aux(1),
      I3 => c1_num_desp_aux(0),
      O => c1_num_out_aux_shift0001_2_42_929
    );
  c1_num_out_aux_shift0001_1_27 : LUT4
    generic map(
      INIT => X"AC00"
    )
    port map (
      I0 => c0_B_despl(4),
      I1 => c0_B_despl(2),
      I2 => c1_num_desp_aux(1),
      I3 => c1_num_desp_aux(0),
      O => c1_num_out_aux_shift0001_1_27_921
    );
  c1_num_out_aux_shift0001_1_42 : LUT4
    generic map(
      INIT => X"00CA"
    )
    port map (
      I0 => c0_B_despl(1),
      I1 => c0_B_despl(3),
      I2 => c1_num_desp_aux(1),
      I3 => c1_num_desp_aux(0),
      O => c1_num_out_aux_shift0001_1_42_922
    );
  c1_num_out_aux_shift0001_0_27 : LUT4
    generic map(
      INIT => X"A0C0"
    )
    port map (
      I0 => c0_B_despl(3),
      I1 => c0_B_despl(1),
      I2 => c1_num_desp_aux_0_2_863,
      I3 => c1_num_desp_aux_1_1_866,
      O => c1_num_out_aux_shift0001_0_27_903
    );
  c1_num_out_aux_shift0001_0_74 : LUT4
    generic map(
      INIT => X"FE54"
    )
    port map (
      I0 => c1_num_desp_aux(3),
      I1 => c1_num_out_aux_shift0001_0_42_904,
      I2 => c1_num_out_aux_shift0001_0_27_903,
      I3 => c1_Sh8_859,
      O => c1_num_out_aux_shift0001_0_74_905
    );
  c1_num_out_aux_shift0001_0_120 : LUT4
    generic map(
      INIT => X"5140"
    )
    port map (
      I0 => c1_num_desp_aux(4),
      I1 => c1_num_desp_aux(2),
      I2 => c1_num_out_aux_shift0001_0_8,
      I3 => c1_num_out_aux_shift0001_0_74_905,
      O => c1_num_out_aux_shift0001_0_120_902
    );
  c4_Exponente_final_and000011 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => c3_Madd_num_out_S_cy(23),
      I1 => c2_Exp_max_sum(0),
      O => c4_N01
    );
  c4_Exponente_final_5_2 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => c2_Exp_max_sum(5),
      I1 => c4_N3,
      O => Exponente_suma_5_OBUF_61
    );
  c4_Exponente_final_3_11 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => c2_Exp_max_sum(1),
      I1 => c3_Madd_num_out_S_cy(23),
      I2 => c2_Exp_max_sum(0),
      O => c4_N5
    );
  c4_Exponente_final_6_1 : LUT3
    generic map(
      INIT => X"9C"
    )
    port map (
      I0 => c4_N3,
      I1 => c2_Exp_max_sum(6),
      I2 => c2_Exp_max_sum(5),
      O => Exponente_suma_6_OBUF_62
    );
  c4_Exponente_final_5_11 : LUT4
    generic map(
      INIT => X"FF7F"
    )
    port map (
      I0 => c2_Exp_max_sum(2),
      I1 => c2_Exp_max_sum(3),
      I2 => c2_Exp_max_sum(4),
      I3 => c4_N5,
      O => c4_N3
    );
  c4_Exponente_final_7_1 : LUT4
    generic map(
      INIT => X"CC6C"
    )
    port map (
      I0 => c2_Exp_max_sum(6),
      I1 => c2_Exp_max_sum(7),
      I2 => c2_Exp_max_sum(5),
      I3 => c4_N3,
      O => Exponente_suma_7_OBUF_63
    );
  c0_mux0000_cmp_eq00064 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => Exponente_2_0_IBUF_24,
      I1 => Exponente_2_1_IBUF_25,
      I2 => Exponente_2_2_IBUF_26,
      I3 => Exponente_2_3_IBUF_27,
      O => c0_mux0000_cmp_eq00064_818
    );
  c0_mux0000_cmp_eq00069 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => Exponente_2_4_IBUF_28,
      I1 => Exponente_2_5_IBUF_29,
      I2 => Exponente_2_6_IBUF_30,
      I3 => Exponente_2_7_IBUF_31,
      O => c0_mux0000_cmp_eq00069_819
    );
  c0_mux0000_cmp_eq000610 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => c0_mux0000_cmp_eq00064_818,
      I1 => c0_mux0000_cmp_eq00069_819,
      O => c0_mux0000_cmp_eq0006
    );
  c0_mux0000_cmp_eq00044 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => Exponente_1_0_IBUF_8,
      I1 => Exponente_1_1_IBUF_9,
      I2 => Exponente_1_2_IBUF_10,
      I3 => Exponente_1_3_IBUF_11,
      O => c0_mux0000_cmp_eq00044_815
    );
  c0_mux0000_cmp_eq00049 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => Exponente_1_4_IBUF_12,
      I1 => Exponente_1_5_IBUF_13,
      I2 => Exponente_1_6_IBUF_14,
      I3 => Exponente_1_7_IBUF_15,
      O => c0_mux0000_cmp_eq00049_816
    );
  c0_mux0000_cmp_eq000410 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => c0_mux0000_cmp_eq00044_815,
      I1 => c0_mux0000_cmp_eq00049_816,
      O => c0_mux0000_cmp_eq0004
    );
  c4_Exponente_final_0_6 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => sum_resul_M(19),
      I1 => sum_resul_M(12),
      I2 => sum_resul_M(5),
      I3 => sum_resul_M(4),
      O => c4_Exponente_final_0_6_1114
    );
  c4_Exponente_final_0_20 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => sum_resul_M(23),
      I1 => sum_resul_M(15),
      I2 => sum_resul_M(7),
      I3 => sum_resul_M(6),
      O => c4_Exponente_final_0_20_1109
    );
  c4_Exponente_final_0_38 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => sum_resul_M(10),
      I1 => sum_resul_M(9),
      O => c4_Exponente_final_0_38_1111
    );
  c4_Exponente_final_0_43 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => c2_Exp_max_sum(3),
      I1 => c2_Exp_max_sum(2),
      I2 => c2_Exp_max_sum(7),
      O => c4_Exponente_final_0_43_1112
    );
  c4_Exponente_final_0_48 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => c2_Exp_max_sum(4),
      I1 => c2_Exp_max_sum(5),
      I2 => c2_Exp_max_sum(6),
      I3 => c2_Exp_max_sum(1),
      O => c4_Exponente_final_0_48_1113
    );
  c4_Exponente_final_0_64 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => sum_resul_M(8),
      I1 => sum_resul_M(1),
      I2 => c4_Exponente_final_0_43_1112,
      I3 => c4_Exponente_final_0_48_1113,
      O => c4_Exponente_final_0_64_1115
    );
  c4_Exponente_final_0_81 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => sum_resul_M(17),
      I1 => c4_Exponente_final_0_38_1111,
      I2 => sum_resul_M(16),
      I3 => c4_Exponente_final_0_64_1115,
      O => c4_Exponente_final_0_81_1116
    );
  c4_Exponente_final_0_95 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => sum_resul_M(18),
      I1 => sum_resul_M(11),
      I2 => sum_resul_M(3),
      I3 => sum_resul_M(2),
      O => c4_Exponente_final_0_95_1117
    );
  c0_mux0000_and0002212 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => Mantisa_1_20_IBUF_100,
      I1 => Mantisa_1_16_IBUF_95,
      I2 => Mantisa_1_12_IBUF_91,
      I3 => Mantisa_1_9_IBUF_110,
      O => c0_mux0000_and0002212_797
    );
  c0_mux0000_and0002225 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => Mantisa_1_7_IBUF_108,
      I1 => Mantisa_1_5_IBUF_106,
      I2 => Mantisa_1_1_IBUF_99,
      I3 => Mantisa_1_3_IBUF_104,
      O => c0_mux0000_and0002225_798
    );
  c0_mux0000_and0002238 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => c0_N8,
      I1 => c0_mux0000_and0002212_797,
      I2 => c0_mux0000_and0002225_798,
      O => c0_N16
    );
  c0_mux0000_and000132 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => Exponente_2_5_IBUF_29,
      I1 => Exponente_2_6_IBUF_30,
      I2 => Exponente_2_7_IBUF_31,
      I3 => Exponente_2_0_IBUF_24,
      O => c0_mux0000_and000132_792
    );
  c0_mux0000_and000147 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => c0_N17,
      I1 => c0_mux0000_and000117,
      I2 => c0_mux0000_and000132_792,
      O => c0_mux0000_and0001
    );
  c0_e_dif_or0000232 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => Exponente_1_5_IBUF_13,
      I1 => Exponente_1_6_IBUF_14,
      I2 => Exponente_1_7_IBUF_15,
      I3 => Exponente_1_0_IBUF_8,
      O => c0_e_dif_or0000232_752
    );
  c0_e_dif_or0000247 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => c0_N16,
      I1 => c0_e_dif_or0000217,
      I2 => c0_e_dif_or0000232_752,
      O => c0_mux0000_and0000
    );
  c0_mux0000_and00054 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => Mantisa_2_3_IBUF_150,
      I1 => Mantisa_2_12_IBUF_137,
      I2 => Mantisa_2_16_IBUF_141,
      I3 => Mantisa_2_9_IBUF_156,
      O => c0_mux0000_and00054_813
    );
  c0_mux0000_and000528 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => c0_mux0000_cmp_eq0006,
      I1 => c0_mux0000_and00054_813,
      I2 => c0_N9,
      I3 => c0_mux0000_and000518,
      O => c0_mux0000_and0005
    );
  c0_mux0000_and00044 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => Mantisa_1_3_IBUF_104,
      I1 => Mantisa_1_12_IBUF_91,
      I2 => Mantisa_1_16_IBUF_95,
      I3 => Mantisa_1_9_IBUF_110,
      O => c0_mux0000_and00044_809
    );
  c0_mux0000_and000428 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => c0_mux0000_cmp_eq0004,
      I1 => c0_mux0000_and00044_809,
      I2 => c0_N8,
      I3 => c0_mux0000_and000418,
      O => c0_mux0000_and0004
    );
  c0_mux0000_and0002112 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => Mantisa_1_22_IBUF_102,
      I1 => Mantisa_1_21_IBUF_101,
      I2 => Mantisa_1_19_IBUF_98,
      I3 => Mantisa_1_18_IBUF_97,
      O => c0_mux0000_and0002112_793
    );
  c0_mux0000_and0002125 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => Mantisa_1_14_IBUF_93,
      I1 => Mantisa_1_15_IBUF_94,
      I2 => Mantisa_1_13_IBUF_92,
      I3 => Mantisa_1_11_IBUF_90,
      O => c0_mux0000_and0002125_794
    );
  c0_mux0000_and0002149 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => Mantisa_1_10_IBUF_89,
      I1 => Mantisa_1_8_IBUF_109,
      I2 => Mantisa_1_6_IBUF_107,
      I3 => Mantisa_1_4_IBUF_105,
      O => c0_mux0000_and0002149_795
    );
  c0_mux0000_and0002153 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => Mantisa_1_2_IBUF_103,
      I1 => Mantisa_1_0_IBUF_88,
      O => c0_mux0000_and0002153_796
    );
  c0_mux0000_and0002164 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => c0_mux0000_and0002112_793,
      I1 => c0_mux0000_and0002125_794,
      I2 => c0_mux0000_and0002149_795,
      I3 => c0_mux0000_and0002153_796,
      O => c0_N8
    );
  c0_mux0000_or00011 : LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      I0 => c0_mux0000_and0003,
      I1 => Mantisa_1_17_IBUF_96,
      I2 => c0_mux0000_cmp_eq0004,
      I3 => c0_N16,
      O => c0_mux0000_or0001
    );
  c0_B_despl_or0003_SW0 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => c0_mux0000_and0004,
      I1 => c0_mux0000_or0001,
      O => N104
    );
  c0_B_despl_or0003 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => c0_mux0000_and0000,
      I1 => c0_mux0000_and0001,
      I2 => c0_mux0000_and0005,
      I3 => N104,
      O => c0_B_despl_or0003_595
    );
  c0_mux0000_and0003212 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => Mantisa_2_20_IBUF_146,
      I1 => Mantisa_2_16_IBUF_141,
      I2 => Mantisa_2_12_IBUF_137,
      I3 => Mantisa_2_9_IBUF_156,
      O => c0_mux0000_and0003212_804
    );
  c0_mux0000_and0003225 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => Mantisa_2_7_IBUF_154,
      I1 => Mantisa_2_5_IBUF_152,
      I2 => Mantisa_2_1_IBUF_145,
      I3 => Mantisa_2_3_IBUF_150,
      O => c0_mux0000_and0003225_805
    );
  c0_mux0000_and0003238 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => c0_N9,
      I1 => c0_mux0000_and0003212_804,
      I2 => c0_mux0000_and0003225_805,
      O => c0_N17
    );
  c0_mux0000_and0003112 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => Mantisa_2_22_IBUF_148,
      I1 => Mantisa_2_21_IBUF_147,
      I2 => Mantisa_2_19_IBUF_144,
      I3 => Mantisa_2_18_IBUF_143,
      O => c0_mux0000_and0003112_800
    );
  c0_mux0000_and0003125 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => Mantisa_2_14_IBUF_139,
      I1 => Mantisa_2_15_IBUF_140,
      I2 => Mantisa_2_13_IBUF_138,
      I3 => Mantisa_2_11_IBUF_136,
      O => c0_mux0000_and0003125_801
    );
  c0_mux0000_and0003149 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => Mantisa_2_10_IBUF_135,
      I1 => Mantisa_2_8_IBUF_155,
      I2 => Mantisa_2_6_IBUF_153,
      I3 => Mantisa_2_4_IBUF_151,
      O => c0_mux0000_and0003149_802
    );
  c0_mux0000_and0003153 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => Mantisa_2_2_IBUF_149,
      I1 => Mantisa_2_0_IBUF_134,
      O => c0_mux0000_and0003153_803
    );
  c0_mux0000_and0003164 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => c0_mux0000_and0003112_800,
      I1 => c0_mux0000_and0003125_801,
      I2 => c0_mux0000_and0003149_802,
      I3 => c0_mux0000_and0003153_803,
      O => c0_N9
    );
  c0_e_max_mux0009_7_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => Exponente_2_7_IBUF_31,
      I1 => c0_N5,
      I2 => Exponente_1_7_IBUF_15,
      I3 => c0_N11,
      O => c0_e_max_mux0009(7)
    );
  c0_e_max_mux0009_6_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => Exponente_2_6_IBUF_30,
      I1 => c0_N5,
      I2 => Exponente_1_6_IBUF_14,
      I3 => c0_N11,
      O => c0_e_max_mux0009(6)
    );
  c0_e_max_mux0009_5_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => Exponente_2_5_IBUF_29,
      I1 => c0_N5,
      I2 => Exponente_1_5_IBUF_13,
      I3 => c0_N11,
      O => c0_e_max_mux0009(5)
    );
  c0_e_max_mux0009_4_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => Exponente_2_4_IBUF_28,
      I1 => c0_N5,
      I2 => Exponente_1_4_IBUF_12,
      I3 => c0_N11,
      O => c0_e_max_mux0009(4)
    );
  c0_e_max_mux0009_3_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => Exponente_2_3_IBUF_27,
      I1 => c0_N5,
      I2 => Exponente_1_3_IBUF_11,
      I3 => c0_N11,
      O => c0_e_max_mux0009(3)
    );
  c0_e_max_mux0009_2_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => Exponente_2_2_IBUF_26,
      I1 => c0_N5,
      I2 => Exponente_1_2_IBUF_10,
      I3 => c0_N11,
      O => c0_e_max_mux0009(2)
    );
  c0_e_max_mux0009_1_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => Exponente_2_1_IBUF_25,
      I1 => c0_N5,
      I2 => Exponente_1_1_IBUF_9,
      I3 => c0_N11,
      O => c0_e_max_mux0009(1)
    );
  c0_e_max_mux0009_0_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => Exponente_2_0_IBUF_24,
      I1 => c0_N5,
      I2 => Exponente_1_0_IBUF_8,
      I3 => c0_N11,
      O => c0_e_max_mux0009(0)
    );
  c0_B_despl_mux0009_9_1 : LUT4
    generic map(
      INIT => X"EC4C"
    )
    port map (
      I0 => c0_B_despl_or0006,
      I1 => Mantisa_1_9_IBUF_110,
      I2 => c0_N1,
      I3 => Mantisa_2_9_IBUF_156,
      O => c0_B_despl_mux0009(9)
    );
  c0_B_despl_mux0009_8_1 : LUT4
    generic map(
      INIT => X"EC4C"
    )
    port map (
      I0 => c0_B_despl_or0006,
      I1 => Mantisa_1_8_IBUF_109,
      I2 => c0_N1,
      I3 => Mantisa_2_8_IBUF_155,
      O => c0_B_despl_mux0009(8)
    );
  c0_B_despl_mux0009_7_1 : LUT4
    generic map(
      INIT => X"EC4C"
    )
    port map (
      I0 => c0_B_despl_or0006,
      I1 => Mantisa_1_7_IBUF_108,
      I2 => c0_N1,
      I3 => Mantisa_2_7_IBUF_154,
      O => c0_B_despl_mux0009(7)
    );
  c0_B_despl_mux0009_6_1 : LUT4
    generic map(
      INIT => X"EC4C"
    )
    port map (
      I0 => c0_B_despl_or0006,
      I1 => Mantisa_1_6_IBUF_107,
      I2 => c0_N1,
      I3 => Mantisa_2_6_IBUF_153,
      O => c0_B_despl_mux0009(6)
    );
  c0_B_despl_mux0009_5_1 : LUT4
    generic map(
      INIT => X"EC4C"
    )
    port map (
      I0 => c0_B_despl_or0006,
      I1 => Mantisa_1_5_IBUF_106,
      I2 => c0_N1,
      I3 => Mantisa_2_5_IBUF_152,
      O => c0_B_despl_mux0009(5)
    );
  c0_B_despl_mux0009_4_1 : LUT4
    generic map(
      INIT => X"EC4C"
    )
    port map (
      I0 => c0_B_despl_or0006,
      I1 => Mantisa_1_4_IBUF_105,
      I2 => c0_N1,
      I3 => Mantisa_2_4_IBUF_151,
      O => c0_B_despl_mux0009(4)
    );
  c0_B_despl_mux0009_3_1 : LUT4
    generic map(
      INIT => X"EC4C"
    )
    port map (
      I0 => c0_B_despl_or0006,
      I1 => Mantisa_1_3_IBUF_104,
      I2 => c0_N1,
      I3 => Mantisa_2_3_IBUF_150,
      O => c0_B_despl_mux0009(3)
    );
  c0_B_despl_mux0009_2_1 : LUT4
    generic map(
      INIT => X"EC4C"
    )
    port map (
      I0 => c0_B_despl_or0006,
      I1 => Mantisa_1_2_IBUF_103,
      I2 => c0_N1,
      I3 => Mantisa_2_2_IBUF_149,
      O => c0_B_despl_mux0009(2)
    );
  c0_B_despl_mux0009_22_1 : LUT4
    generic map(
      INIT => X"EC4C"
    )
    port map (
      I0 => c0_B_despl_or0006,
      I1 => Mantisa_1_22_IBUF_102,
      I2 => c0_N1,
      I3 => Mantisa_2_22_IBUF_148,
      O => c0_B_despl_mux0009(22)
    );
  c0_B_despl_mux0009_21_1 : LUT4
    generic map(
      INIT => X"EC4C"
    )
    port map (
      I0 => c0_B_despl_or0006,
      I1 => Mantisa_1_21_IBUF_101,
      I2 => c0_N1,
      I3 => Mantisa_2_21_IBUF_147,
      O => c0_B_despl_mux0009(21)
    );
  c0_B_despl_mux0009_20_1 : LUT4
    generic map(
      INIT => X"EC4C"
    )
    port map (
      I0 => c0_B_despl_or0006,
      I1 => Mantisa_1_20_IBUF_100,
      I2 => c0_N1,
      I3 => Mantisa_2_20_IBUF_146,
      O => c0_B_despl_mux0009(20)
    );
  c0_B_despl_mux0009_1_1 : LUT4
    generic map(
      INIT => X"EC4C"
    )
    port map (
      I0 => c0_B_despl_or0006,
      I1 => Mantisa_1_1_IBUF_99,
      I2 => c0_N1,
      I3 => Mantisa_2_1_IBUF_145,
      O => c0_B_despl_mux0009(1)
    );
  c0_B_despl_mux0009_19_1 : LUT4
    generic map(
      INIT => X"EC4C"
    )
    port map (
      I0 => c0_B_despl_or0006,
      I1 => Mantisa_1_19_IBUF_98,
      I2 => c0_N1,
      I3 => Mantisa_2_19_IBUF_144,
      O => c0_B_despl_mux0009(19)
    );
  c0_B_despl_mux0009_18_1 : LUT4
    generic map(
      INIT => X"EC4C"
    )
    port map (
      I0 => c0_B_despl_or0006,
      I1 => Mantisa_1_18_IBUF_97,
      I2 => c0_N1,
      I3 => Mantisa_2_18_IBUF_143,
      O => c0_B_despl_mux0009(18)
    );
  c0_B_despl_mux0009_17_1 : LUT4
    generic map(
      INIT => X"EC4C"
    )
    port map (
      I0 => c0_B_despl_or0006,
      I1 => Mantisa_1_17_IBUF_96,
      I2 => c0_N1,
      I3 => Mantisa_2_17_IBUF_142,
      O => c0_B_despl_mux0009(17)
    );
  c0_B_despl_mux0009_16_1 : LUT4
    generic map(
      INIT => X"EC4C"
    )
    port map (
      I0 => c0_B_despl_or0006,
      I1 => Mantisa_1_16_IBUF_95,
      I2 => c0_N1,
      I3 => Mantisa_2_16_IBUF_141,
      O => c0_B_despl_mux0009(16)
    );
  c0_B_despl_mux0009_15_1 : LUT4
    generic map(
      INIT => X"EC4C"
    )
    port map (
      I0 => c0_B_despl_or0006,
      I1 => Mantisa_1_15_IBUF_94,
      I2 => c0_N1,
      I3 => Mantisa_2_15_IBUF_140,
      O => c0_B_despl_mux0009(15)
    );
  c0_B_despl_mux0009_14_1 : LUT4
    generic map(
      INIT => X"EC4C"
    )
    port map (
      I0 => c0_B_despl_or0006,
      I1 => Mantisa_1_14_IBUF_93,
      I2 => c0_N1,
      I3 => Mantisa_2_14_IBUF_139,
      O => c0_B_despl_mux0009(14)
    );
  c0_B_despl_mux0009_13_1 : LUT4
    generic map(
      INIT => X"EC4C"
    )
    port map (
      I0 => c0_B_despl_or0006,
      I1 => Mantisa_1_13_IBUF_92,
      I2 => c0_N1,
      I3 => Mantisa_2_13_IBUF_138,
      O => c0_B_despl_mux0009(13)
    );
  c0_B_despl_mux0009_12_1 : LUT4
    generic map(
      INIT => X"EC4C"
    )
    port map (
      I0 => c0_B_despl_or0006,
      I1 => Mantisa_1_12_IBUF_91,
      I2 => c0_N1,
      I3 => Mantisa_2_12_IBUF_137,
      O => c0_B_despl_mux0009(12)
    );
  c0_B_despl_mux0009_11_1 : LUT4
    generic map(
      INIT => X"EC4C"
    )
    port map (
      I0 => c0_B_despl_or0006,
      I1 => Mantisa_1_11_IBUF_90,
      I2 => c0_N1,
      I3 => Mantisa_2_11_IBUF_136,
      O => c0_B_despl_mux0009(11)
    );
  c0_B_despl_mux0009_10_1 : LUT4
    generic map(
      INIT => X"EC4C"
    )
    port map (
      I0 => c0_B_despl_or0006,
      I1 => Mantisa_1_10_IBUF_89,
      I2 => c0_N1,
      I3 => Mantisa_2_10_IBUF_135,
      O => c0_B_despl_mux0009(10)
    );
  c0_B_despl_mux0009_0_2 : LUT4
    generic map(
      INIT => X"EC4C"
    )
    port map (
      I0 => c0_B_despl_or0006,
      I1 => Mantisa_1_0_IBUF_88,
      I2 => c0_N1,
      I3 => Mantisa_2_0_IBUF_134,
      O => c0_B_despl_mux0009(0)
    );
  c0_e_max_mux0009_0_3 : LUT4
    generic map(
      INIT => X"3020"
    )
    port map (
      I0 => c0_B_despl_and0000,
      I1 => c0_mux0000_and0000,
      I2 => N108,
      I3 => c0_e_dif_or0001,
      O => c0_N11
    );
  c0_e_max_mux0009_0_2 : LUT4
    generic map(
      INIT => X"FF57"
    )
    port map (
      I0 => N108,
      I1 => c0_B_despl_and0000,
      I2 => c0_e_dif_or0001,
      I3 => c0_mux0000_and0000,
      O => c0_N5
    );
  c0_A_max_mux0009_9_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => Mantisa_2_9_IBUF_156,
      I1 => c0_N3,
      I2 => Mantisa_1_9_IBUF_110,
      I3 => c0_N14,
      O => c0_A_max_mux0009(9)
    );
  c0_A_max_mux0009_8_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => Mantisa_2_8_IBUF_155,
      I1 => c0_N3,
      I2 => Mantisa_1_8_IBUF_109,
      I3 => c0_N14,
      O => c0_A_max_mux0009(8)
    );
  c0_A_max_mux0009_7_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => Mantisa_2_7_IBUF_154,
      I1 => c0_N3,
      I2 => Mantisa_1_7_IBUF_108,
      I3 => c0_N14,
      O => c0_A_max_mux0009(7)
    );
  c0_A_max_mux0009_6_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => Mantisa_2_6_IBUF_153,
      I1 => c0_N3,
      I2 => Mantisa_1_6_IBUF_107,
      I3 => c0_N14,
      O => c0_A_max_mux0009(6)
    );
  c0_A_max_mux0009_5_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => Mantisa_2_5_IBUF_152,
      I1 => c0_N3,
      I2 => Mantisa_1_5_IBUF_106,
      I3 => c0_N14,
      O => c0_A_max_mux0009(5)
    );
  c0_A_max_mux0009_4_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => Mantisa_2_4_IBUF_151,
      I1 => c0_N3,
      I2 => Mantisa_1_4_IBUF_105,
      I3 => c0_N14,
      O => c0_A_max_mux0009(4)
    );
  c0_A_max_mux0009_3_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => Mantisa_2_3_IBUF_150,
      I1 => c0_N3,
      I2 => Mantisa_1_3_IBUF_104,
      I3 => c0_N14,
      O => c0_A_max_mux0009(3)
    );
  c0_A_max_mux0009_2_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => Mantisa_2_2_IBUF_149,
      I1 => c0_N3,
      I2 => Mantisa_1_2_IBUF_103,
      I3 => c0_N14,
      O => c0_A_max_mux0009(2)
    );
  c0_A_max_mux0009_22_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => Mantisa_2_22_IBUF_148,
      I1 => c0_N3,
      I2 => Mantisa_1_22_IBUF_102,
      I3 => c0_N14,
      O => c0_A_max_mux0009(22)
    );
  c0_A_max_mux0009_21_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => Mantisa_2_21_IBUF_147,
      I1 => c0_N3,
      I2 => Mantisa_1_21_IBUF_101,
      I3 => c0_N14,
      O => c0_A_max_mux0009(21)
    );
  c0_A_max_mux0009_20_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => Mantisa_2_20_IBUF_146,
      I1 => c0_N3,
      I2 => Mantisa_1_20_IBUF_100,
      I3 => c0_N14,
      O => c0_A_max_mux0009(20)
    );
  c0_A_max_mux0009_1_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => Mantisa_2_1_IBUF_145,
      I1 => c0_N3,
      I2 => Mantisa_1_1_IBUF_99,
      I3 => c0_N14,
      O => c0_A_max_mux0009(1)
    );
  c0_A_max_mux0009_19_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => Mantisa_2_19_IBUF_144,
      I1 => c0_N3,
      I2 => Mantisa_1_19_IBUF_98,
      I3 => c0_N14,
      O => c0_A_max_mux0009(19)
    );
  c0_A_max_mux0009_18_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => Mantisa_2_18_IBUF_143,
      I1 => c0_N3,
      I2 => Mantisa_1_18_IBUF_97,
      I3 => c0_N14,
      O => c0_A_max_mux0009(18)
    );
  c0_A_max_mux0009_17_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => Mantisa_2_17_IBUF_142,
      I1 => c0_N3,
      I2 => Mantisa_1_17_IBUF_96,
      I3 => c0_N14,
      O => c0_A_max_mux0009(17)
    );
  c0_A_max_mux0009_16_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => Mantisa_2_16_IBUF_141,
      I1 => c0_N3,
      I2 => Mantisa_1_16_IBUF_95,
      I3 => c0_N14,
      O => c0_A_max_mux0009(16)
    );
  c0_A_max_mux0009_15_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => Mantisa_2_15_IBUF_140,
      I1 => c0_N3,
      I2 => Mantisa_1_15_IBUF_94,
      I3 => c0_N14,
      O => c0_A_max_mux0009(15)
    );
  c0_A_max_mux0009_14_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => Mantisa_2_14_IBUF_139,
      I1 => c0_N3,
      I2 => Mantisa_1_14_IBUF_93,
      I3 => c0_N14,
      O => c0_A_max_mux0009(14)
    );
  c0_A_max_mux0009_13_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => Mantisa_2_13_IBUF_138,
      I1 => c0_N3,
      I2 => Mantisa_1_13_IBUF_92,
      I3 => c0_N14,
      O => c0_A_max_mux0009(13)
    );
  c0_A_max_mux0009_12_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => Mantisa_2_12_IBUF_137,
      I1 => c0_N3,
      I2 => Mantisa_1_12_IBUF_91,
      I3 => c0_N14,
      O => c0_A_max_mux0009(12)
    );
  c0_A_max_mux0009_11_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => Mantisa_2_11_IBUF_136,
      I1 => c0_N3,
      I2 => Mantisa_1_11_IBUF_90,
      I3 => c0_N14,
      O => c0_A_max_mux0009(11)
    );
  c0_A_max_mux0009_10_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => Mantisa_2_10_IBUF_135,
      I1 => c0_N3,
      I2 => Mantisa_1_10_IBUF_89,
      I3 => c0_N14,
      O => c0_A_max_mux0009(10)
    );
  c0_A_max_mux0009_0_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => Mantisa_2_0_IBUF_134,
      I1 => c0_N3,
      I2 => Mantisa_1_0_IBUF_88,
      I3 => c0_N14,
      O => c0_A_max_mux0009(0)
    );
  c6_contador_ceros_mux0046_0_1 : LUT4
    generic map(
      INIT => X"A5A9"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0019_cy(0),
      I1 => rest_norm_M(0),
      I2 => c6_N64,
      I3 => rest_norm_M(1),
      O => c6_contador_ceros_mux0046_0_1_1391
    );
  c6_contador_ceros_mux0046_3_31 : LUT3
    generic map(
      INIT => X"FB"
    )
    port map (
      I0 => rest_norm_M(0),
      I1 => c6_Madd_contador_ceros_addsub0019_cy(0),
      I2 => rest_norm_M(1),
      O => c6_N89
    );
  c6_contador_ceros_mux0018_3_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => c6_N153,
      I1 => rest_norm_M(18),
      O => c6_Madd_contador_ceros_addsub0007_lut(3)
    );
  c6_contador_ceros_mux0030_5_1 : LUT4
    generic map(
      INIT => X"0B02"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0015_cy(3),
      I1 => c6_N54,
      I2 => c6_N155,
      I3 => c6_Madd_contador_ceros_addsub0015_lut(4),
      O => c6_Madd_contador_ceros_addsub0014_lut(5)
    );
  c6_contador_ceros_mux0046_1_211 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => rest_norm_M(1),
      I1 => c6_Madd_contador_ceros_addsub0019_cy(0),
      I2 => c6_N64,
      O => c6_N271
    );
  c6_contador_ceros_mux0040_2_11 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => rest_norm_M(3),
      I1 => c6_Madd_contador_ceros_addsub0020_cy(0),
      O => c6_N02
    );
  c6_contador_ceros_mux0046_5_1 : LUT4
    generic map(
      INIT => X"AA69"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0021_lut(5),
      I1 => c6_N52,
      I2 => c6_Madd_contador_ceros_addsub0021_cy(4),
      I3 => c6_N124,
      O => c6_contador_ceros_mux0046(5)
    );
  c6_Madd_contador_ceros_addsub0022_cy_3_1_SW0 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0019_cy(0),
      I1 => c6_Madd_contador_ceros_addsub0019_lut(2),
      I2 => c6_N124,
      O => N151
    );
  c6_Madd_contador_ceros_addsub0022_cy_3_1_SW1 : LUT4
    generic map(
      INIT => X"8280"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0019_lut(2),
      I1 => c6_Madd_contador_ceros_addsub0019_cy(0),
      I2 => c6_N64,
      I3 => rest_norm_M(1),
      O => N152
    );
  c6_Madd_contador_ceros_addsub0022_cy_3_1 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0019_lut(3),
      I1 => c6_Madd_contador_ceros_addsub0019_lut(1),
      I2 => N151,
      I3 => N152,
      O => c6_Madd_contador_ceros_addsub0022_cy(3)
    );
  c6_Madd_contador_ceros_addsub0021_cy_4_11 : LUT4
    generic map(
      INIT => X"8008"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0019_lut(4),
      I1 => c6_N1481,
      I2 => c6_Madd_contador_ceros_addsub0019_cy(0),
      I3 => c6_N64,
      O => c6_Madd_contador_ceros_addsub0021_cy(4)
    );
  c6_Madd_contador_ceros_addsub0015_cy_3_125 : LUT4
    generic map(
      INIT => X"4446"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0007_cy(0),
      I1 => rest_norm_M(12),
      I2 => rest_norm_M(11),
      I3 => rest_norm_M(10),
      O => c6_Madd_contador_ceros_addsub0015_cy_3_125_1192
    );
  c6_Madd_contador_ceros_addsub0015_cy_3_191 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => rest_norm_M(11),
      I1 => rest_norm_M(10),
      O => c6_Madd_contador_ceros_addsub0015_cy_3_191_1193
    );
  c6_Madd_contador_ceros_addsub0015_cy_3_1133 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0007_lut(1),
      I1 => c6_N150,
      I2 => c6_Madd_contador_ceros_addsub0011_cy(0),
      I3 => c6_N11,
      O => c6_Madd_contador_ceros_addsub0015_cy_3_1133_1190
    );
  c6_contador_ceros_mux0028_0_111 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => rest_norm_M(11),
      I1 => rest_norm_M(12),
      I2 => c6_N150,
      O => c6_N1281
    );
  c6_contador_ceros_mux0036_1_64 : LUT4
    generic map(
      INIT => X"FE54"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0016_lut(1),
      I1 => c6_contador_ceros_mux0036_1_20_1381,
      I2 => c6_contador_ceros_mux0036_1_33_1382,
      I3 => c6_contador_ceros_mux0036_1_5_1383,
      O => c6_Madd_contador_ceros_addsub0020_lut(1)
    );
  c6_contador_ceros_mux0040_2_1 : LUT4
    generic map(
      INIT => X"CC6C"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0020_lut(1),
      I1 => c6_Madd_contador_ceros_addsub0020_lut(2),
      I2 => c6_N02,
      I3 => c6_N23,
      O => c6_Madd_contador_ceros_addsub0019_lut(2)
    );
  c6_contador_ceros_mux0030_2_33 : LUT4
    generic map(
      INIT => X"40C0"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0011_cy(0),
      I1 => c6_Madd_contador_ceros_addsub0015_cy_3_191_1193,
      I2 => c6_N73,
      I3 => rest_norm_M(9),
      O => c6_contador_ceros_mux0030_2_33_1377
    );
  c6_contador_ceros_mux0030_2_74 : LUT4
    generic map(
      INIT => X"0089"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0007_cy(1),
      I1 => c6_Madd_contador_ceros_addsub0007_lut(2),
      I2 => c6_N150,
      I3 => rest_norm_M(12),
      O => c6_contador_ceros_mux0030_2_74_1378
    );
  c6_contador_ceros_mux0030_2_173 : LUT4
    generic map(
      INIT => X"F080"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0011_cy(0),
      I1 => rest_norm_M(9),
      I2 => c6_N73,
      I3 => rest_norm_M(10),
      O => c6_contador_ceros_mux0030_2_173_1375
    );
  c6_contador_ceros_mux0030_4_21 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => c6_flag_mux0013,
      I1 => rest_norm_M(9),
      O => c6_N155
    );
  c6_mantisa_aux_or000011 : LUT3
    generic map(
      INIT => X"F7"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0022_lut(4),
      I1 => c6_Madd_contador_ceros_addsub0022_cy(3),
      I2 => rest_norm_M(0),
      O => c6_N52
    );
  c6_contador_ceros_mux0044_4_1 : LUT3
    generic map(
      INIT => X"9C"
    )
    port map (
      I0 => c6_N271,
      I1 => c6_Madd_contador_ceros_addsub0019_lut(4),
      I2 => c6_N1481,
      O => c6_Madd_contador_ceros_addsub0022_lut(4)
    );
  c6_contador_ceros_mux0044_4_21 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0019_lut(1),
      I1 => c6_Madd_contador_ceros_addsub0019_lut(2),
      I2 => c6_Madd_contador_ceros_addsub0019_lut(3),
      O => c6_N1481
    );
  c6_contador_ceros_mux0040_3_Q : LUT4
    generic map(
      INIT => X"CC6C"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0020_lut(2),
      I1 => c6_Madd_contador_ceros_addsub0020_lut(3),
      I2 => c6_Madd_contador_ceros_addsub0020_lut(1),
      I3 => N160,
      O => c6_Madd_contador_ceros_addsub0019_lut(3)
    );
  c6_Madd_contador_ceros_addsub0012_cy_2_121 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0007_cy(0),
      I1 => c6_Madd_contador_ceros_addsub0007_lut(1),
      O => c6_N73
    );
  c6_contador_ceros_mux0042_7_21 : LUT4
    generic map(
      INIT => X"FF7F"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0019_lut(4),
      I1 => c6_N1481,
      I2 => c6_Madd_contador_ceros_addsub0019_cy(0),
      I3 => rest_norm_M(2),
      O => c6_N49
    );
  c6_contador_ceros_mux0030_4_11 : LUT4
    generic map(
      INIT => X"F9FF"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0015_lut(3),
      I1 => c6_Madd_contador_ceros_addsub0015_cy(2),
      I2 => rest_norm_M(8),
      I3 => c6_Madd_contador_ceros_addsub0012_cy_2_Q,
      O => c6_N54
    );
  c6_contador_ceros_mux0040_4_Q : LUT4
    generic map(
      INIT => X"C9CC"
    )
    port map (
      I0 => N164,
      I1 => c6_Madd_contador_ceros_addsub0020_lut(4),
      I2 => c6_N23,
      I3 => c6_Madd_contador_ceros_addsub0020_lut(1),
      O => c6_Madd_contador_ceros_addsub0019_lut(4)
    );
  c6_Madd_contador_ceros_addsub0012_cy_2_1_SW0 : LUT4
    generic map(
      INIT => X"FFEF"
    )
    port map (
      I0 => rest_norm_M(10),
      I1 => c6_N11,
      I2 => c6_N1551,
      I3 => c6_N73,
      O => N168
    );
  c6_Madd_contador_ceros_addsub0012_cy_2_1_SW1 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => c6_N1431,
      I1 => rest_norm_M(10),
      O => N169
    );
  c6_Madd_contador_ceros_addsub0012_cy_2_1 : LUT4
    generic map(
      INIT => X"FF27"
    )
    port map (
      I0 => rest_norm_M(9),
      I1 => N169,
      I2 => N168,
      I3 => c6_N104,
      O => c6_Madd_contador_ceros_addsub0012_cy_2_Q
    );
  c6_contador_ceros_mux0042_7_SW0 : LUT4
    generic map(
      INIT => X"FF4D"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0017_lut(5),
      I1 => c6_N49,
      I2 => c6_Madd_contador_ceros_addsub0017_cy(4),
      I3 => c6_N87,
      O => N171
    );
  c6_Madd_contador_ceros_addsub0012_cy_2_151_SW0 : LUT4
    generic map(
      INIT => X"FFEF"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0007_lut(1),
      I1 => c6_N150,
      I2 => c6_N11,
      I3 => rest_norm_M(12),
      O => N173
    );
  c6_Madd_contador_ceros_addsub0012_cy_2_151_SW1 : LUT4
    generic map(
      INIT => X"FFBF"
    )
    port map (
      I0 => rest_norm_M(12),
      I1 => c6_N40,
      I2 => c6_Madd_contador_ceros_addsub0007_lut(1),
      I3 => rest_norm_M(11),
      O => N174
    );
  c6_Madd_contador_ceros_addsub0012_cy_2_151 : LUT4
    generic map(
      INIT => X"082A"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0011_cy(0),
      I1 => c6_Madd_contador_ceros_addsub0007_cy(0),
      I2 => N174,
      I3 => N173,
      O => c6_N1431
    );
  c6_contador_ceros_mux0038_6_21 : LUT4
    generic map(
      INIT => X"FF4D"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0018_lut(5),
      I1 => c6_N14,
      I2 => c6_Madd_contador_ceros_addsub0018_cy(4),
      I3 => c6_N126,
      O => c6_contador_ceros_mux0038_6_21_1387
    );
  c6_contador_ceros_mux0038_6_54 : LUT4
    generic map(
      INIT => X"AE08"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0018_cy(4),
      I1 => c6_N151,
      I2 => rest_norm_M(4),
      I3 => c6_Madd_contador_ceros_addsub0018_lut(5),
      O => c6_contador_ceros_mux0038_6_54_1389
    );
  c6_contador_ceros_mux0038_6_85 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => c6_contador_ceros_mux0038_6_21_1387,
      I1 => c6_contador_ceros_mux0038_6_27_1388,
      I2 => c6_contador_ceros_mux0038_6_54_1389,
      I3 => c6_contador_ceros_mux0038_6_68_1390,
      O => c6_Madd_contador_ceros_addsub0017_lut(6)
    );
  c6_contador_ceros_mux0018_1_9 : LUT4
    generic map(
      INIT => X"FFAB"
    )
    port map (
      I0 => rest_norm_M(17),
      I1 => rest_norm_M(14),
      I2 => rest_norm_M(15),
      I3 => rest_norm_M(16),
      O => c6_contador_ceros_mux0018_1_9_1363
    );
  c6_Madd_contador_ceros_addsub0017_cy_4_1_SW0 : LUT4
    generic map(
      INIT => X"FF7F"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0020_lut(1),
      I1 => c6_Madd_contador_ceros_addsub0020_lut(3),
      I2 => c6_Madd_contador_ceros_addsub0020_lut(2),
      I3 => c6_Madd_contador_ceros_addsub0020_cy(0),
      O => N176
    );
  c6_Madd_contador_ceros_addsub0017_cy_4_1 : LUT4
    generic map(
      INIT => X"AE04"
    )
    port map (
      I0 => c6_N23,
      I1 => c6_Madd_contador_ceros_addsub0020_lut(4),
      I2 => N176,
      I3 => c6_N151,
      O => c6_Madd_contador_ceros_addsub0017_cy(4)
    );
  c6_Madd_contador_ceros_addsub0012_cy_2_111 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0007_cy(1),
      I1 => c6_Madd_contador_ceros_addsub0007_lut(2),
      O => c6_N11
    );
  c6_Madd_contador_ceros_addsub0012_cy_2_1321 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => rest_norm_M(11),
      I1 => rest_norm_M(12),
      I2 => c6_N150,
      O => c6_N139
    );
  c6_contador_ceros_mux0046_6_21 : LUT3
    generic map(
      INIT => X"EB"
    )
    port map (
      I0 => c6_N52,
      I1 => c6_Madd_contador_ceros_addsub0021_cy(4),
      I2 => c6_Madd_contador_ceros_addsub0021_lut(5),
      O => c6_N47
    );
  c6_Madd_contador_ceros_addsub0014_cy_3_1121 : LUT4
    generic map(
      INIT => X"9A88"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0015_lut(3),
      I1 => c6_N155,
      I2 => c6_Madd_contador_ceros_addsub0015_cy(2),
      I3 => rest_norm_M(8),
      O => c6_N661
    );
  c6_contador_ceros_mux0046_6_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0021_cy(4),
      I1 => c6_Madd_contador_ceros_addsub0021_lut(5),
      O => c6_N12
    );
  c6_contador_ceros_mux0042_5_1 : LUT4
    generic map(
      INIT => X"AA69"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0017_lut(5),
      I1 => c6_N49,
      I2 => c6_Madd_contador_ceros_addsub0017_cy(4),
      I3 => c6_N87,
      O => c6_Madd_contador_ceros_addsub0021_lut(5)
    );
  c6_Madd_contador_ceros_addsub0021_cy_5_135 : LUT4
    generic map(
      INIT => X"AA09"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0019_cy(0),
      I1 => rest_norm_M(2),
      I2 => c6_Madd_contador_ceros_addsub0017_cy(4),
      I3 => c6_N87,
      O => c6_Madd_contador_ceros_addsub0021_cy_5_135_1223
    );
  c6_Madd_contador_ceros_addsub0021_cy_5_1100 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0021_cy_5_195_1225,
      I1 => c6_Madd_contador_ceros_addsub0017_lut(5),
      I2 => c6_Madd_contador_ceros_addsub0021_cy_5_166_1224,
      I3 => c6_Madd_contador_ceros_addsub0021_cy_5_135_1223,
      O => c6_Madd_contador_ceros_addsub0021_cy(5)
    );
  c6_contador_ceros_mux0018_2_SW0 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => rest_norm_M(19),
      I1 => rest_norm_M(18),
      I2 => rest_norm_M(17),
      I3 => rest_norm_M(16),
      O => N183
    );
  c6_contador_ceros_mux0018_2_Q : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => rest_norm_M(22),
      I1 => rest_norm_M(20),
      I2 => N183,
      I3 => c6_N1581,
      O => c6_Madd_contador_ceros_addsub0007_lut(2)
    );
  c6_contador_ceros_mux0036_2_11 : LUT3
    generic map(
      INIT => X"F7"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0016_lut(1),
      I1 => c6_N361,
      I2 => rest_norm_M(5),
      O => c6_N28
    );
  c6_contador_ceros_mux0032_2_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0014_lut(2),
      I1 => c6_N1391,
      I2 => c6_N37,
      O => c6_Madd_contador_ceros_addsub0016_lut(2)
    );
  c6_Madd_contador_ceros_addsub0015_cy_3_1311 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => c6_N11,
      I1 => c6_N73,
      I2 => rest_norm_M(10),
      I3 => c6_N1551,
      O => c6_N96
    );
  c6_Madd_contador_ceros_addsub0018_cy_4_135 : LUT4
    generic map(
      INIT => X"AA09"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0016_lut(2),
      I1 => c6_N471,
      I2 => c6_Madd_contador_ceros_addsub0014_cy(3),
      I3 => c6_contador_ceros_mux0036_4_0,
      O => c6_Madd_contador_ceros_addsub0018_cy_4_135_1207
    );
  c6_Madd_contador_ceros_addsub0018_cy_4_187 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0016_lut(3),
      I1 => c6_Madd_contador_ceros_addsub0016_lut(1),
      I2 => c6_N361,
      O => c6_Madd_contador_ceros_addsub0018_cy_4_187_1209
    );
  c6_Madd_contador_ceros_addsub0018_cy_4_190 : LUT4
    generic map(
      INIT => X"F080"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0014_lut(4),
      I1 => c6_Madd_contador_ceros_addsub0018_cy_4_135_1207,
      I2 => c6_Madd_contador_ceros_addsub0018_cy_4_187_1209,
      I3 => c6_Madd_contador_ceros_addsub0018_cy_4_165_1208,
      O => c6_Madd_contador_ceros_addsub0018_cy(4)
    );
  c6_contador_ceros_mux0030_1_10 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => rest_norm_M(12),
      I1 => rest_norm_M(11),
      I2 => c6_N53,
      I3 => c6_Madd_contador_ceros_addsub0007_cy(0),
      O => c6_contador_ceros_mux0030_1_10_1367
    );
  c6_contador_ceros_mux0030_1_37 : LUT4
    generic map(
      INIT => X"FFBA"
    )
    port map (
      I0 => c6_N150,
      I1 => c6_Madd_contador_ceros_addsub0007_cy(0),
      I2 => c6_contador_ceros_mux0030_1_25_1368,
      I3 => c6_contador_ceros_mux0030_1_10_1367,
      O => c6_contador_ceros_mux0030_1_37_1369
    );
  c6_contador_ceros_mux0030_1_80 : LUT4
    generic map(
      INIT => X"0F02"
    )
    port map (
      I0 => c6_N53,
      I1 => c6_Madd_contador_ceros_addsub0007_cy(0),
      I2 => rest_norm_M(12),
      I3 => rest_norm_M(11),
      O => c6_contador_ceros_mux0030_1_80_1370
    );
  c6_contador_ceros_mux0030_1_109 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0007_lut(1),
      I1 => c6_contador_ceros_mux0030_1_37_1369,
      I2 => c6_contador_ceros_mux0030_1_96_1371,
      O => c6_Madd_contador_ceros_addsub0014_lut(1)
    );
  c6_contador_ceros_mux0032_1_SW1 : LUT4
    generic map(
      INIT => X"D951"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0011_cy(0),
      I1 => rest_norm_M(10),
      I2 => c6_N1281,
      I3 => c6_N139,
      O => N186
    );
  c6_contador_ceros_mux0022_0_14 : LUT4
    generic map(
      INIT => X"0F02"
    )
    port map (
      I0 => rest_norm_M(12),
      I1 => rest_norm_M(13),
      I2 => rest_norm_M(15),
      I3 => rest_norm_M(14),
      O => c6_contador_ceros_mux0022_0_14_1364
    );
  c6_contador_ceros_mux0022_0_33 : LUT4
    generic map(
      INIT => X"FF32"
    )
    port map (
      I0 => c6_contador_ceros_mux0022_0_14_1364,
      I1 => rest_norm_M(17),
      I2 => rest_norm_M(16),
      I3 => rest_norm_M(18),
      O => c6_contador_ceros_mux0022_0_33_1365
    );
  c6_contador_ceros_mux0022_0_55 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => c6_contador_ceros_mux0022_0_33_1365,
      I1 => c6_contador_ceros_mux0018_0_23,
      I2 => c6_contador_ceros_mux0018_0_2,
      O => c6_Madd_contador_ceros_addsub0011_cy(0)
    );
  c6_Madd_contador_ceros_addsub0007_cy_1_1111 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => rest_norm_M(21),
      I1 => rest_norm_M(23),
      O => c6_N1581
    );
  c6_Madd_contador_ceros_addsub0007_cy_1_1_SW0 : LUT4
    generic map(
      INIT => X"FFEF"
    )
    port map (
      I0 => rest_norm_M(17),
      I1 => rest_norm_M(18),
      I2 => rest_norm_M(16),
      I3 => rest_norm_M(19),
      O => N188
    );
  c6_Madd_contador_ceros_addsub0007_cy_1_1 : LUT4
    generic map(
      INIT => X"4404"
    )
    port map (
      I0 => rest_norm_M(22),
      I1 => c6_N1581,
      I2 => N188,
      I3 => rest_norm_M(20),
      O => c6_Madd_contador_ceros_addsub0007_cy(1)
    );
  c6_contador_ceros_mux0018_0_14 : LUT4
    generic map(
      INIT => X"0F02"
    )
    port map (
      I0 => rest_norm_M(14),
      I1 => rest_norm_M(15),
      I2 => rest_norm_M(17),
      I3 => rest_norm_M(16),
      O => c6_contador_ceros_mux0018_0_14_1360
    );
  c6_Madd_contador_ceros_addsub0015_cy_2_11 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => c6_N1431,
      I1 => rest_norm_M(10),
      I2 => c6_N104,
      O => c6_Madd_contador_ceros_addsub0015_cy(2)
    );
  c6_contador_ceros_mux0030_2_210 : LUT3
    generic map(
      INIT => X"26"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0007_lut(2),
      I1 => c6_Madd_contador_ceros_addsub0007_cy(1),
      I2 => c6_N150,
      O => c6_N40
    );
  c6_contador_ceros_mux0032_3_1 : LUT4
    generic map(
      INIT => X"EA62"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0014_lut(3),
      I1 => c6_Madd_contador_ceros_addsub0014_lut(2),
      I2 => c6_N1391,
      I3 => c6_N37,
      O => c6_Madd_contador_ceros_addsub0016_lut(3)
    );
  c6_contador_ceros_mux0038_5_1_SW0 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0020_lut(3),
      I1 => c6_Madd_contador_ceros_addsub0020_lut(2),
      I2 => c6_Madd_contador_ceros_addsub0020_cy(0),
      O => N192
    );
  c6_contador_ceros_mux0038_5_1 : LUT4
    generic map(
      INIT => X"FFBF"
    )
    port map (
      I0 => rest_norm_M(4),
      I1 => c6_Madd_contador_ceros_addsub0020_lut(4),
      I2 => c6_Madd_contador_ceros_addsub0020_lut(1),
      I3 => N192,
      O => c6_N14
    );
  c6_contador_ceros_mux0018_4_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => rest_norm_M(22),
      I1 => rest_norm_M(20),
      I2 => rest_norm_M(19),
      I3 => N194,
      O => c6_N153
    );
  c6_contador_ceros_mux0038_5_SW0 : LUT4
    generic map(
      INIT => X"5F1B"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0018_cy(4),
      I1 => c6_N151,
      I2 => c6_N14,
      I3 => rest_norm_M(4),
      O => N196
    );
  c6_contador_ceros_mux0038_5_SW1 : LUT4
    generic map(
      INIT => X"44E4"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0018_cy(4),
      I1 => c6_N14,
      I2 => c6_N151,
      I3 => rest_norm_M(4),
      O => N197
    );
  c6_contador_ceros_mux0038_5_Q : LUT4
    generic map(
      INIT => X"A8AD"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0018_lut(5),
      I1 => N197,
      I2 => c6_N126,
      I3 => N196,
      O => c6_Madd_contador_ceros_addsub0017_lut(5)
    );
  c6_contador_ceros_mux0046_7_45 : LUT4
    generic map(
      INIT => X"AE08"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0021_cy(5),
      I1 => c6_N12,
      I2 => c6_N52,
      I3 => c6_Madd_contador_ceros_addsub0021_lut(6),
      O => c6_contador_ceros_mux0046_7_45_1399
    );
  c6_Madd_contador_ceros_addsub0014_cy_3_141 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0012_cy_2_Q,
      I1 => c6_Madd_contador_ceros_addsub0015_cy(2),
      I2 => c6_Madd_contador_ceros_addsub0015_lut(3),
      O => c6_Madd_contador_ceros_addsub0014_cy_3_141_1181
    );
  c6_Madd_contador_ceros_addsub0012_cy_2_1354 : LUT4
    generic map(
      INIT => X"FAF8"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0011_cy(0),
      I1 => c6_Madd_contador_ceros_addsub0012_cy_2_1314_1176,
      I2 => c6_N96,
      I3 => c6_Madd_contador_ceros_addsub0012_cy_2_1328,
      O => c6_N104
    );
  Operacion_1_IBUF : IBUF
    port map (
      I => Operacion(1),
      O => Operacion_1_IBUF_397
    );
  Operacion_0_IBUF : IBUF
    port map (
      I => Operacion(0),
      O => Operacion_0_IBUF_396
    );
  Exponente_1_7_IBUF : IBUF
    port map (
      I => Exponente_1(7),
      O => Exponente_1_7_IBUF_15
    );
  Exponente_1_6_IBUF : IBUF
    port map (
      I => Exponente_1(6),
      O => Exponente_1_6_IBUF_14
    );
  Exponente_1_5_IBUF : IBUF
    port map (
      I => Exponente_1(5),
      O => Exponente_1_5_IBUF_13
    );
  Exponente_1_4_IBUF : IBUF
    port map (
      I => Exponente_1(4),
      O => Exponente_1_4_IBUF_12
    );
  Exponente_1_3_IBUF : IBUF
    port map (
      I => Exponente_1(3),
      O => Exponente_1_3_IBUF_11
    );
  Exponente_1_2_IBUF : IBUF
    port map (
      I => Exponente_1(2),
      O => Exponente_1_2_IBUF_10
    );
  Exponente_1_1_IBUF : IBUF
    port map (
      I => Exponente_1(1),
      O => Exponente_1_1_IBUF_9
    );
  Exponente_1_0_IBUF : IBUF
    port map (
      I => Exponente_1(0),
      O => Exponente_1_0_IBUF_8
    );
  Exponente_2_7_IBUF : IBUF
    port map (
      I => Exponente_2(7),
      O => Exponente_2_7_IBUF_31
    );
  Exponente_2_6_IBUF : IBUF
    port map (
      I => Exponente_2(6),
      O => Exponente_2_6_IBUF_30
    );
  Exponente_2_5_IBUF : IBUF
    port map (
      I => Exponente_2(5),
      O => Exponente_2_5_IBUF_29
    );
  Exponente_2_4_IBUF : IBUF
    port map (
      I => Exponente_2(4),
      O => Exponente_2_4_IBUF_28
    );
  Exponente_2_3_IBUF : IBUF
    port map (
      I => Exponente_2(3),
      O => Exponente_2_3_IBUF_27
    );
  Exponente_2_2_IBUF : IBUF
    port map (
      I => Exponente_2(2),
      O => Exponente_2_2_IBUF_26
    );
  Exponente_2_1_IBUF : IBUF
    port map (
      I => Exponente_2(1),
      O => Exponente_2_1_IBUF_25
    );
  Exponente_2_0_IBUF : IBUF
    port map (
      I => Exponente_2(0),
      O => Exponente_2_0_IBUF_24
    );
  Mantisa_1_22_IBUF : IBUF
    port map (
      I => Mantisa_1(22),
      O => Mantisa_1_22_IBUF_102
    );
  Mantisa_1_21_IBUF : IBUF
    port map (
      I => Mantisa_1(21),
      O => Mantisa_1_21_IBUF_101
    );
  Mantisa_1_20_IBUF : IBUF
    port map (
      I => Mantisa_1(20),
      O => Mantisa_1_20_IBUF_100
    );
  Mantisa_1_19_IBUF : IBUF
    port map (
      I => Mantisa_1(19),
      O => Mantisa_1_19_IBUF_98
    );
  Mantisa_1_18_IBUF : IBUF
    port map (
      I => Mantisa_1(18),
      O => Mantisa_1_18_IBUF_97
    );
  Mantisa_1_17_IBUF : IBUF
    port map (
      I => Mantisa_1(17),
      O => Mantisa_1_17_IBUF_96
    );
  Mantisa_1_16_IBUF : IBUF
    port map (
      I => Mantisa_1(16),
      O => Mantisa_1_16_IBUF_95
    );
  Mantisa_1_15_IBUF : IBUF
    port map (
      I => Mantisa_1(15),
      O => Mantisa_1_15_IBUF_94
    );
  Mantisa_1_14_IBUF : IBUF
    port map (
      I => Mantisa_1(14),
      O => Mantisa_1_14_IBUF_93
    );
  Mantisa_1_13_IBUF : IBUF
    port map (
      I => Mantisa_1(13),
      O => Mantisa_1_13_IBUF_92
    );
  Mantisa_1_12_IBUF : IBUF
    port map (
      I => Mantisa_1(12),
      O => Mantisa_1_12_IBUF_91
    );
  Mantisa_1_11_IBUF : IBUF
    port map (
      I => Mantisa_1(11),
      O => Mantisa_1_11_IBUF_90
    );
  Mantisa_1_10_IBUF : IBUF
    port map (
      I => Mantisa_1(10),
      O => Mantisa_1_10_IBUF_89
    );
  Mantisa_1_9_IBUF : IBUF
    port map (
      I => Mantisa_1(9),
      O => Mantisa_1_9_IBUF_110
    );
  Mantisa_1_8_IBUF : IBUF
    port map (
      I => Mantisa_1(8),
      O => Mantisa_1_8_IBUF_109
    );
  Mantisa_1_7_IBUF : IBUF
    port map (
      I => Mantisa_1(7),
      O => Mantisa_1_7_IBUF_108
    );
  Mantisa_1_6_IBUF : IBUF
    port map (
      I => Mantisa_1(6),
      O => Mantisa_1_6_IBUF_107
    );
  Mantisa_1_5_IBUF : IBUF
    port map (
      I => Mantisa_1(5),
      O => Mantisa_1_5_IBUF_106
    );
  Mantisa_1_4_IBUF : IBUF
    port map (
      I => Mantisa_1(4),
      O => Mantisa_1_4_IBUF_105
    );
  Mantisa_1_3_IBUF : IBUF
    port map (
      I => Mantisa_1(3),
      O => Mantisa_1_3_IBUF_104
    );
  Mantisa_1_2_IBUF : IBUF
    port map (
      I => Mantisa_1(2),
      O => Mantisa_1_2_IBUF_103
    );
  Mantisa_1_1_IBUF : IBUF
    port map (
      I => Mantisa_1(1),
      O => Mantisa_1_1_IBUF_99
    );
  Mantisa_1_0_IBUF : IBUF
    port map (
      I => Mantisa_1(0),
      O => Mantisa_1_0_IBUF_88
    );
  Mantisa_2_22_IBUF : IBUF
    port map (
      I => Mantisa_2(22),
      O => Mantisa_2_22_IBUF_148
    );
  Mantisa_2_21_IBUF : IBUF
    port map (
      I => Mantisa_2(21),
      O => Mantisa_2_21_IBUF_147
    );
  Mantisa_2_20_IBUF : IBUF
    port map (
      I => Mantisa_2(20),
      O => Mantisa_2_20_IBUF_146
    );
  Mantisa_2_19_IBUF : IBUF
    port map (
      I => Mantisa_2(19),
      O => Mantisa_2_19_IBUF_144
    );
  Mantisa_2_18_IBUF : IBUF
    port map (
      I => Mantisa_2(18),
      O => Mantisa_2_18_IBUF_143
    );
  Mantisa_2_17_IBUF : IBUF
    port map (
      I => Mantisa_2(17),
      O => Mantisa_2_17_IBUF_142
    );
  Mantisa_2_16_IBUF : IBUF
    port map (
      I => Mantisa_2(16),
      O => Mantisa_2_16_IBUF_141
    );
  Mantisa_2_15_IBUF : IBUF
    port map (
      I => Mantisa_2(15),
      O => Mantisa_2_15_IBUF_140
    );
  Mantisa_2_14_IBUF : IBUF
    port map (
      I => Mantisa_2(14),
      O => Mantisa_2_14_IBUF_139
    );
  Mantisa_2_13_IBUF : IBUF
    port map (
      I => Mantisa_2(13),
      O => Mantisa_2_13_IBUF_138
    );
  Mantisa_2_12_IBUF : IBUF
    port map (
      I => Mantisa_2(12),
      O => Mantisa_2_12_IBUF_137
    );
  Mantisa_2_11_IBUF : IBUF
    port map (
      I => Mantisa_2(11),
      O => Mantisa_2_11_IBUF_136
    );
  Mantisa_2_10_IBUF : IBUF
    port map (
      I => Mantisa_2(10),
      O => Mantisa_2_10_IBUF_135
    );
  Mantisa_2_9_IBUF : IBUF
    port map (
      I => Mantisa_2(9),
      O => Mantisa_2_9_IBUF_156
    );
  Mantisa_2_8_IBUF : IBUF
    port map (
      I => Mantisa_2(8),
      O => Mantisa_2_8_IBUF_155
    );
  Mantisa_2_7_IBUF : IBUF
    port map (
      I => Mantisa_2(7),
      O => Mantisa_2_7_IBUF_154
    );
  Mantisa_2_6_IBUF : IBUF
    port map (
      I => Mantisa_2(6),
      O => Mantisa_2_6_IBUF_153
    );
  Mantisa_2_5_IBUF : IBUF
    port map (
      I => Mantisa_2(5),
      O => Mantisa_2_5_IBUF_152
    );
  Mantisa_2_4_IBUF : IBUF
    port map (
      I => Mantisa_2(4),
      O => Mantisa_2_4_IBUF_151
    );
  Mantisa_2_3_IBUF : IBUF
    port map (
      I => Mantisa_2(3),
      O => Mantisa_2_3_IBUF_150
    );
  Mantisa_2_2_IBUF : IBUF
    port map (
      I => Mantisa_2(2),
      O => Mantisa_2_2_IBUF_149
    );
  Mantisa_2_1_IBUF : IBUF
    port map (
      I => Mantisa_2(1),
      O => Mantisa_2_1_IBUF_145
    );
  Mantisa_2_0_IBUF : IBUF
    port map (
      I => Mantisa_2(0),
      O => Mantisa_2_0_IBUF_134
    );
  Infinito_OBUF : OBUF
    port map (
      I => N1,
      O => Infinito
    );
  NaN_OBUF : OBUF
    port map (
      I => N1,
      O => NaN
    );
  error_resta_OBUF : OBUF
    port map (
      I => error_resta_OBUF_1537,
      O => error_resta
    );
  Exponente_resta_7_OBUF : OBUF
    port map (
      I => Exponente_resta_7_OBUF_47,
      O => Exponente_resta(7)
    );
  Exponente_resta_6_OBUF : OBUF
    port map (
      I => Exponente_resta_6_OBUF_46,
      O => Exponente_resta(6)
    );
  Exponente_resta_5_OBUF : OBUF
    port map (
      I => Exponente_resta_5_OBUF_45,
      O => Exponente_resta(5)
    );
  Exponente_resta_4_OBUF : OBUF
    port map (
      I => Exponente_resta_4_OBUF_44,
      O => Exponente_resta(4)
    );
  Exponente_resta_3_OBUF : OBUF
    port map (
      I => Exponente_resta_3_OBUF_43,
      O => Exponente_resta(3)
    );
  Exponente_resta_2_OBUF : OBUF
    port map (
      I => Exponente_resta_2_OBUF_42,
      O => Exponente_resta(2)
    );
  Exponente_resta_1_OBUF : OBUF
    port map (
      I => Exponente_resta_1_OBUF_41,
      O => Exponente_resta(1)
    );
  Exponente_resta_0_OBUF : OBUF
    port map (
      I => Exponente_resta_0_OBUF_40,
      O => Exponente_resta(0)
    );
  Mantisa_resta_22_OBUF : OBUF
    port map (
      I => Mantisa_resta_22_OBUF_194,
      O => Mantisa_resta(22)
    );
  Mantisa_resta_21_OBUF : OBUF
    port map (
      I => Mantisa_resta_21_OBUF_193,
      O => Mantisa_resta(21)
    );
  Mantisa_resta_20_OBUF : OBUF
    port map (
      I => Mantisa_resta_20_OBUF_192,
      O => Mantisa_resta(20)
    );
  Mantisa_resta_19_OBUF : OBUF
    port map (
      I => Mantisa_resta_19_OBUF_190,
      O => Mantisa_resta(19)
    );
  Mantisa_resta_18_OBUF : OBUF
    port map (
      I => Mantisa_resta_18_OBUF_189,
      O => Mantisa_resta(18)
    );
  Mantisa_resta_17_OBUF : OBUF
    port map (
      I => Mantisa_resta_17_OBUF_188,
      O => Mantisa_resta(17)
    );
  Mantisa_resta_16_OBUF : OBUF
    port map (
      I => Mantisa_resta_16_OBUF_187,
      O => Mantisa_resta(16)
    );
  Mantisa_resta_15_OBUF : OBUF
    port map (
      I => Mantisa_resta_15_OBUF_186,
      O => Mantisa_resta(15)
    );
  Mantisa_resta_14_OBUF : OBUF
    port map (
      I => Mantisa_resta_14_OBUF_185,
      O => Mantisa_resta(14)
    );
  Mantisa_resta_13_OBUF : OBUF
    port map (
      I => Mantisa_resta_13_OBUF_184,
      O => Mantisa_resta(13)
    );
  Mantisa_resta_12_OBUF : OBUF
    port map (
      I => Mantisa_resta_12_OBUF_183,
      O => Mantisa_resta(12)
    );
  Mantisa_resta_11_OBUF : OBUF
    port map (
      I => Mantisa_resta_11_OBUF_182,
      O => Mantisa_resta(11)
    );
  Mantisa_resta_10_OBUF : OBUF
    port map (
      I => Mantisa_resta_10_OBUF_181,
      O => Mantisa_resta(10)
    );
  Mantisa_resta_9_OBUF : OBUF
    port map (
      I => Mantisa_resta_9_OBUF_202,
      O => Mantisa_resta(9)
    );
  Mantisa_resta_8_OBUF : OBUF
    port map (
      I => Mantisa_resta_8_OBUF_201,
      O => Mantisa_resta(8)
    );
  Mantisa_resta_7_OBUF : OBUF
    port map (
      I => Mantisa_resta_7_OBUF_200,
      O => Mantisa_resta(7)
    );
  Mantisa_resta_6_OBUF : OBUF
    port map (
      I => Mantisa_resta_6_OBUF_199,
      O => Mantisa_resta(6)
    );
  Mantisa_resta_5_OBUF : OBUF
    port map (
      I => Mantisa_resta_5_OBUF_198,
      O => Mantisa_resta(5)
    );
  Mantisa_resta_4_OBUF : OBUF
    port map (
      I => Mantisa_resta_4_OBUF_197,
      O => Mantisa_resta(4)
    );
  Mantisa_resta_3_OBUF : OBUF
    port map (
      I => Mantisa_resta_3_OBUF_196,
      O => Mantisa_resta(3)
    );
  Mantisa_resta_2_OBUF : OBUF
    port map (
      I => Mantisa_resta_2_OBUF_195,
      O => Mantisa_resta(2)
    );
  Mantisa_resta_1_OBUF : OBUF
    port map (
      I => Mantisa_resta_1_OBUF_191,
      O => Mantisa_resta(1)
    );
  Mantisa_resta_0_OBUF : OBUF
    port map (
      I => Mantisa_resta_0_OBUF_180,
      O => Mantisa_resta(0)
    );
  Mantisa_suma_22_OBUF : OBUF
    port map (
      I => sum_resul_M(23),
      O => Mantisa_suma(22)
    );
  Mantisa_suma_21_OBUF : OBUF
    port map (
      I => sum_resul_M(22),
      O => Mantisa_suma(21)
    );
  Mantisa_suma_20_OBUF : OBUF
    port map (
      I => sum_resul_M(21),
      O => Mantisa_suma(20)
    );
  Mantisa_suma_19_OBUF : OBUF
    port map (
      I => sum_resul_M(20),
      O => Mantisa_suma(19)
    );
  Mantisa_suma_18_OBUF : OBUF
    port map (
      I => sum_resul_M(19),
      O => Mantisa_suma(18)
    );
  Mantisa_suma_17_OBUF : OBUF
    port map (
      I => sum_resul_M(18),
      O => Mantisa_suma(17)
    );
  Mantisa_suma_16_OBUF : OBUF
    port map (
      I => sum_resul_M(17),
      O => Mantisa_suma(16)
    );
  Mantisa_suma_15_OBUF : OBUF
    port map (
      I => sum_resul_M(16),
      O => Mantisa_suma(15)
    );
  Mantisa_suma_14_OBUF : OBUF
    port map (
      I => sum_resul_M(15),
      O => Mantisa_suma(14)
    );
  Mantisa_suma_13_OBUF : OBUF
    port map (
      I => sum_resul_M(14),
      O => Mantisa_suma(13)
    );
  Mantisa_suma_12_OBUF : OBUF
    port map (
      I => sum_resul_M(13),
      O => Mantisa_suma(12)
    );
  Mantisa_suma_11_OBUF : OBUF
    port map (
      I => sum_resul_M(12),
      O => Mantisa_suma(11)
    );
  Mantisa_suma_10_OBUF : OBUF
    port map (
      I => sum_resul_M(11),
      O => Mantisa_suma(10)
    );
  Mantisa_suma_9_OBUF : OBUF
    port map (
      I => sum_resul_M(10),
      O => Mantisa_suma(9)
    );
  Mantisa_suma_8_OBUF : OBUF
    port map (
      I => sum_resul_M(9),
      O => Mantisa_suma(8)
    );
  Mantisa_suma_7_OBUF : OBUF
    port map (
      I => sum_resul_M(8),
      O => Mantisa_suma(7)
    );
  Mantisa_suma_6_OBUF : OBUF
    port map (
      I => sum_resul_M(7),
      O => Mantisa_suma(6)
    );
  Mantisa_suma_5_OBUF : OBUF
    port map (
      I => sum_resul_M(6),
      O => Mantisa_suma(5)
    );
  Mantisa_suma_4_OBUF : OBUF
    port map (
      I => sum_resul_M(5),
      O => Mantisa_suma(4)
    );
  Mantisa_suma_3_OBUF : OBUF
    port map (
      I => sum_resul_M(4),
      O => Mantisa_suma(3)
    );
  Mantisa_suma_2_OBUF : OBUF
    port map (
      I => sum_resul_M(3),
      O => Mantisa_suma(2)
    );
  Mantisa_suma_1_OBUF : OBUF
    port map (
      I => sum_resul_M(2),
      O => Mantisa_suma(1)
    );
  Mantisa_suma_0_OBUF : OBUF
    port map (
      I => sum_resul_M(1),
      O => Mantisa_suma(0)
    );
  Exponente_suma_7_OBUF : OBUF
    port map (
      I => Exponente_suma_7_OBUF_63,
      O => Exponente_suma(7)
    );
  Exponente_suma_6_OBUF : OBUF
    port map (
      I => Exponente_suma_6_OBUF_62,
      O => Exponente_suma(6)
    );
  Exponente_suma_5_OBUF : OBUF
    port map (
      I => Exponente_suma_5_OBUF_61,
      O => Exponente_suma(5)
    );
  Exponente_suma_4_OBUF : OBUF
    port map (
      I => Exponente_suma_4_OBUF_60,
      O => Exponente_suma(4)
    );
  Exponente_suma_3_OBUF : OBUF
    port map (
      I => Exponente_suma_3_OBUF_59,
      O => Exponente_suma(3)
    );
  Exponente_suma_2_OBUF : OBUF
    port map (
      I => Exponente_suma_2_OBUF_58,
      O => Exponente_suma(2)
    );
  Exponente_suma_1_OBUF : OBUF
    port map (
      I => Exponente_suma_1_OBUF_57,
      O => Exponente_suma(1)
    );
  Exponente_suma_0_OBUF : OBUF
    port map (
      I => Exponente_suma_0_OBUF_56,
      O => Exponente_suma(0)
    );
  c6_contador_ceros_mux0042_7_1 : LUT3
    generic map(
      INIT => X"9C"
    )
    port map (
      I0 => N171,
      I1 => c6_Madd_contador_ceros_addsub0017_lut(7),
      I2 => c6_Madd_contador_ceros_addsub0017_lut(6),
      O => c6_Madd_contador_ceros_addsub0021_lut(7)
    );
  c6_Mcompar_mantisa_aux_cmp_lt0000_lut_7_1 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => c6_contador_ceros_mux0046(7),
      I1 => c2_Exp_max_rest(7),
      O => c6_Mcompar_mantisa_aux_cmp_lt0000_lut_7_1_1264
    );
  c1_num_out_aux_shift0001_0_148 : LUT4
    generic map(
      INIT => X"0F08"
    )
    port map (
      I0 => c1_Sh40,
      I1 => c1_num_desp_aux(4),
      I2 => c1_num_out_aux_or0000,
      I3 => c1_num_out_aux_shift0001_0_120_902,
      O => c1_num_out_aux_shift0001(0)
    );
  c1_num_out_aux_shift0001_5_86 : LUT4
    generic map(
      INIT => X"0F02"
    )
    port map (
      I0 => c1_Sh21_848,
      I1 => N434,
      I2 => c1_num_out_aux_or0000,
      I3 => c1_num_out_aux_shift0001_5_59_936,
      O => c1_num_out_aux_shift0001(5)
    );
  c1_num_out_aux_shift0001_13_36 : LUT4
    generic map(
      INIT => X"0302"
    )
    port map (
      I0 => c1_num_out_aux_shift0001_13_5_913,
      I1 => c1_num_out_aux_or0000,
      I2 => c1_num_desp_aux(4),
      I3 => c1_num_out_aux_shift0001_13_20_912,
      O => c1_num_out_aux_shift0001(13)
    );
  c1_num_out_aux_shift0001_3_147 : LUT4
    generic map(
      INIT => X"2023"
    )
    port map (
      I0 => N430,
      I1 => c1_num_out_aux_or0000,
      I2 => c1_num_desp_aux(4),
      I3 => N206,
      O => c1_num_out_aux_shift0001(3)
    );
  c1_num_out_aux_shift0001_2_147 : LUT4
    generic map(
      INIT => X"2023"
    )
    port map (
      I0 => N431,
      I1 => c1_num_out_aux_or0000,
      I2 => c1_num_desp_aux(4),
      I3 => N208,
      O => c1_num_out_aux_shift0001(2)
    );
  c1_num_out_aux_shift0001_1_148 : LUT4
    generic map(
      INIT => X"2031"
    )
    port map (
      I0 => c1_num_desp_aux(4),
      I1 => c1_num_out_aux_or0000,
      I2 => c1_Sh41,
      I3 => N210,
      O => c1_num_out_aux_shift0001(1)
    );
  c1_num_out_aux_shift0001_4_85 : LUT4
    generic map(
      INIT => X"0F02"
    )
    port map (
      I0 => c1_Sh20_847,
      I1 => N202,
      I2 => c1_num_out_aux_or0000,
      I3 => c1_num_out_aux_shift0001_4_59_934,
      O => c1_num_out_aux_shift0001(4)
    );
  c1_Sh401 : MUXF5
    port map (
      I0 => N218,
      I1 => N219,
      S => c1_num_desp_aux(2),
      O => c1_Sh40
    );
  c1_Sh401_F : LUT4
    generic map(
      INIT => X"5140"
    )
    port map (
      I0 => c1_num_desp_aux(3),
      I1 => c1_num_desp_aux(1),
      I2 => N75,
      I3 => N81,
      O => N218
    );
  c1_Sh401_G : LUT4
    generic map(
      INIT => X"5140"
    )
    port map (
      I0 => c1_num_desp_aux(3),
      I1 => c1_num_desp_aux(1),
      I2 => N52,
      I3 => N51,
      O => N219
    );
  c1_num_out_aux_shift0001_7_59 : MUXF5
    port map (
      I0 => N220,
      I1 => N221,
      S => c1_num_desp_aux(2),
      O => c1_num_out_aux_shift0001_7_59_942
    );
  c1_num_out_aux_shift0001_7_59_F : LUT4
    generic map(
      INIT => X"5410"
    )
    port map (
      I0 => c1_num_desp_aux(4),
      I1 => c1_num_desp_aux(3),
      I2 => c1_Sh7_858,
      I3 => c1_Sh15_842,
      O => N220
    );
  c1_num_out_aux_shift0001_7_59_G : LUT4
    generic map(
      INIT => X"5410"
    )
    port map (
      I0 => c1_num_desp_aux(4),
      I1 => c1_num_desp_aux(3),
      I2 => c1_Sh11_838,
      I3 => c1_Sh19_846,
      O => N221
    );
  c1_num_out_aux_shift0001_6_59 : MUXF5
    port map (
      I0 => N222,
      I1 => N223,
      S => c1_num_desp_aux(2),
      O => c1_num_out_aux_shift0001_6_59_939
    );
  c1_num_out_aux_shift0001_6_59_F : LUT4
    generic map(
      INIT => X"5410"
    )
    port map (
      I0 => c1_num_desp_aux(4),
      I1 => c1_num_desp_aux(3),
      I2 => c1_Sh6_857,
      I3 => c1_Sh14_841,
      O => N222
    );
  c1_num_out_aux_shift0001_6_59_G : LUT4
    generic map(
      INIT => X"5410"
    )
    port map (
      I0 => c1_num_desp_aux(4),
      I1 => c1_num_desp_aux(3),
      I2 => c1_Sh10_837,
      I3 => c1_Sh18_845,
      O => N223
    );
  c1_num_out_aux_shift0001_5_59 : MUXF5
    port map (
      I0 => N224,
      I1 => N225,
      S => c1_num_desp_aux(2),
      O => c1_num_out_aux_shift0001_5_59_936
    );
  c1_num_out_aux_shift0001_5_59_F : LUT4
    generic map(
      INIT => X"5410"
    )
    port map (
      I0 => c1_num_desp_aux(4),
      I1 => c1_num_desp_aux(3),
      I2 => c1_Sh5_856,
      I3 => c1_Sh13_840,
      O => N224
    );
  c1_num_out_aux_shift0001_5_59_G : LUT4
    generic map(
      INIT => X"5410"
    )
    port map (
      I0 => c1_num_desp_aux(4),
      I1 => c1_num_desp_aux(3),
      I2 => c1_Sh9_860,
      I3 => c1_Sh17_844,
      O => N225
    );
  c1_num_out_aux_shift0001_4_59 : MUXF5
    port map (
      I0 => N226,
      I1 => N227,
      S => c1_num_desp_aux(2),
      O => c1_num_out_aux_shift0001_4_59_934
    );
  c1_num_out_aux_shift0001_4_59_F : LUT4
    generic map(
      INIT => X"5410"
    )
    port map (
      I0 => c1_num_desp_aux(4),
      I1 => c1_num_desp_aux(3),
      I2 => c1_Sh4_851,
      I3 => c1_Sh12_839,
      O => N226
    );
  c1_num_out_aux_shift0001_4_59_G : LUT4
    generic map(
      INIT => X"5410"
    )
    port map (
      I0 => c1_num_desp_aux(4),
      I1 => c1_num_desp_aux(3),
      I2 => c1_Sh8_859,
      I3 => c1_Sh16_843,
      O => N227
    );
  c1_Sh5 : MUXF5
    port map (
      I0 => N228,
      I1 => N229,
      S => c1_num_desp_aux(1),
      O => c1_Sh5_856
    );
  c1_Sh5_F : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => c0_B_despl(6),
      I1 => c0_B_despl(5),
      I2 => c1_num_desp_aux_0_3_864,
      O => N228
    );
  c1_Sh5_G : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => c0_B_despl(8),
      I1 => c0_B_despl(7),
      I2 => c1_num_desp_aux_0_3_864,
      O => N229
    );
  c1_Sh4 : MUXF5
    port map (
      I0 => N230,
      I1 => N231,
      S => c1_num_desp_aux_1_1_866,
      O => c1_Sh4_851
    );
  c1_Sh4_F : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => c0_B_despl(5),
      I1 => c0_B_despl(4),
      I2 => c1_num_desp_aux_0_1_862,
      O => N230
    );
  c1_Sh4_G : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => c0_B_despl(7),
      I1 => c0_B_despl(6),
      I2 => c1_num_desp_aux_0_1_862,
      O => N231
    );
  c1_Sh19 : MUXF5
    port map (
      I0 => N232,
      I1 => N233,
      S => c1_num_desp_aux(1),
      O => c1_Sh19_846
    );
  c1_Sh19_F : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => c0_B_despl(20),
      I1 => c0_B_despl(19),
      I2 => c1_num_desp_aux_0_3_864,
      O => N232
    );
  c1_Sh19_G : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => c0_B_despl(22),
      I1 => c0_B_despl(21),
      I2 => c1_num_desp_aux_0_3_864,
      O => N233
    );
  c1_Sh9 : MUXF5
    port map (
      I0 => N234,
      I1 => N235,
      S => c1_num_desp_aux(1),
      O => c1_Sh9_860
    );
  c1_Sh9_F : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => c0_B_despl(10),
      I1 => c0_B_despl(9),
      I2 => c1_num_desp_aux_0_3_864,
      O => N234
    );
  c1_Sh9_G : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => c0_B_despl(12),
      I1 => c0_B_despl(11),
      I2 => c1_num_desp_aux_0_3_864,
      O => N235
    );
  c1_Sh8 : MUXF5
    port map (
      I0 => N236,
      I1 => N237,
      S => c1_num_desp_aux_1_1_866,
      O => c1_Sh8_859
    );
  c1_Sh8_F : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => c0_B_despl(9),
      I1 => c0_B_despl(8),
      I2 => c1_num_desp_aux_0_1_862,
      O => N236
    );
  c1_Sh8_G : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => c0_B_despl(11),
      I1 => c0_B_despl(10),
      I2 => c1_num_desp_aux_0_1_862,
      O => N237
    );
  c1_Sh7 : MUXF5
    port map (
      I0 => N238,
      I1 => N239,
      S => c1_num_desp_aux(1),
      O => c1_Sh7_858
    );
  c1_Sh7_F : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => c0_B_despl(8),
      I1 => c0_B_despl(7),
      I2 => c1_num_desp_aux_0_3_864,
      O => N238
    );
  c1_Sh7_G : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => c0_B_despl(10),
      I1 => c0_B_despl(9),
      I2 => c1_num_desp_aux_0_3_864,
      O => N239
    );
  c1_Sh6 : MUXF5
    port map (
      I0 => N240,
      I1 => N241,
      S => c1_num_desp_aux(1),
      O => c1_Sh6_857
    );
  c1_Sh6_F : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => c0_B_despl(7),
      I1 => c0_B_despl(6),
      I2 => c1_num_desp_aux_0_3_864,
      O => N240
    );
  c1_Sh6_G : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => c0_B_despl(9),
      I1 => c0_B_despl(8),
      I2 => c1_num_desp_aux_0_3_864,
      O => N241
    );
  c1_Sh18 : MUXF5
    port map (
      I0 => N242,
      I1 => N243,
      S => c1_num_desp_aux(1),
      O => c1_Sh18_845
    );
  c1_Sh18_F : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => c0_B_despl(19),
      I1 => c0_B_despl(18),
      I2 => c1_num_desp_aux_0_3_864,
      O => N242
    );
  c1_Sh18_G : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => c0_B_despl(21),
      I1 => c0_B_despl(20),
      I2 => c1_num_desp_aux_0_3_864,
      O => N243
    );
  c1_Sh17 : MUXF5
    port map (
      I0 => N244,
      I1 => N245,
      S => c1_num_desp_aux(1),
      O => c1_Sh17_844
    );
  c1_Sh17_F : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => c0_B_despl(18),
      I1 => c0_B_despl(17),
      I2 => c1_num_desp_aux_0_3_864,
      O => N244
    );
  c1_Sh17_G : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => c0_B_despl(20),
      I1 => c0_B_despl(19),
      I2 => c1_num_desp_aux_0_3_864,
      O => N245
    );
  c1_Sh15 : MUXF5
    port map (
      I0 => N246,
      I1 => N247,
      S => c1_num_desp_aux(1),
      O => c1_Sh15_842
    );
  c1_Sh15_F : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => c0_B_despl(16),
      I1 => c0_B_despl(15),
      I2 => c1_num_desp_aux_0_3_864,
      O => N246
    );
  c1_Sh15_G : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => c0_B_despl(18),
      I1 => c0_B_despl(17),
      I2 => c1_num_desp_aux_0_3_864,
      O => N247
    );
  c1_Sh14 : MUXF5
    port map (
      I0 => N248,
      I1 => N249,
      S => c1_num_desp_aux(1),
      O => c1_Sh14_841
    );
  c1_Sh14_F : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => c0_B_despl(15),
      I1 => c0_B_despl(14),
      I2 => c1_num_desp_aux_0_3_864,
      O => N248
    );
  c1_Sh14_G : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => c0_B_despl(17),
      I1 => c0_B_despl(16),
      I2 => c1_num_desp_aux_0_3_864,
      O => N249
    );
  c1_Sh13 : MUXF5
    port map (
      I0 => N250,
      I1 => N251,
      S => c1_num_desp_aux(1),
      O => c1_Sh13_840
    );
  c1_Sh13_F : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => c0_B_despl(14),
      I1 => c0_B_despl(13),
      I2 => c1_num_desp_aux_0_3_864,
      O => N250
    );
  c1_Sh13_G : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => c0_B_despl(16),
      I1 => c0_B_despl(15),
      I2 => c1_num_desp_aux_0_3_864,
      O => N251
    );
  c1_Sh12 : MUXF5
    port map (
      I0 => N252,
      I1 => N253,
      S => c1_num_desp_aux_1_1_866,
      O => c1_Sh12_839
    );
  c1_Sh12_F : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => c0_B_despl(13),
      I1 => c0_B_despl(12),
      I2 => c1_num_desp_aux_0_1_862,
      O => N252
    );
  c1_Sh12_G : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => c0_B_despl(15),
      I1 => c0_B_despl(14),
      I2 => c1_num_desp_aux_0_1_862,
      O => N253
    );
  c1_Sh11 : MUXF5
    port map (
      I0 => N254,
      I1 => N255,
      S => c1_num_desp_aux(1),
      O => c1_Sh11_838
    );
  c1_Sh11_F : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => c0_B_despl(12),
      I1 => c0_B_despl(11),
      I2 => c1_num_desp_aux_0_3_864,
      O => N254
    );
  c1_Sh11_G : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => c0_B_despl(14),
      I1 => c0_B_despl(13),
      I2 => c1_num_desp_aux_0_3_864,
      O => N255
    );
  c1_Sh10 : MUXF5
    port map (
      I0 => N256,
      I1 => N257,
      S => c1_num_desp_aux(1),
      O => c1_Sh10_837
    );
  c1_Sh10_F : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => c0_B_despl(11),
      I1 => c0_B_despl(10),
      I2 => c1_num_desp_aux_0_3_864,
      O => N256
    );
  c1_Sh10_G : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => c0_B_despl(13),
      I1 => c0_B_despl(12),
      I2 => c1_num_desp_aux_0_3_864,
      O => N257
    );
  c1_Sh16 : MUXF5
    port map (
      I0 => N258,
      I1 => N259,
      S => c1_num_desp_aux(1),
      O => c1_Sh16_843
    );
  c1_Sh16_F : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => c0_B_despl(17),
      I1 => c0_B_despl(16),
      I2 => c1_num_desp_aux_0_3_864,
      O => N258
    );
  c1_Sh16_G : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => c0_B_despl(19),
      I1 => c0_B_despl(18),
      I2 => c1_num_desp_aux_0_3_864,
      O => N259
    );
  c1_num_out_aux_shift0001_3_120_SW0 : MUXF5
    port map (
      I0 => N260,
      I1 => N261,
      S => c1_num_desp_aux(2),
      O => N206
    );
  c1_num_out_aux_shift0001_3_120_SW0_F : LUT4
    generic map(
      INIT => X"01AB"
    )
    port map (
      I0 => c1_num_desp_aux(3),
      I1 => c1_num_out_aux_shift0001_3_27_931,
      I2 => c1_num_out_aux_shift0001_3_42_932,
      I3 => c1_Sh11_838,
      O => N260
    );
  c1_num_out_aux_shift0001_3_120_SW0_G : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => c1_num_desp_aux(3),
      I1 => c1_Sh7_858,
      I2 => c1_Sh15_842,
      O => N261
    );
  c1_num_out_aux_shift0001_2_120_SW0 : MUXF5
    port map (
      I0 => N262,
      I1 => N263,
      S => c1_num_desp_aux(2),
      O => N208
    );
  c1_num_out_aux_shift0001_2_120_SW0_F : LUT4
    generic map(
      INIT => X"01AB"
    )
    port map (
      I0 => c1_num_desp_aux(3),
      I1 => c1_num_out_aux_shift0001_2_27_928,
      I2 => c1_num_out_aux_shift0001_2_42_929,
      I3 => c1_Sh10_837,
      O => N262
    );
  c1_num_out_aux_shift0001_2_120_SW0_G : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => c1_num_desp_aux(3),
      I1 => c1_Sh6_857,
      I2 => c1_Sh14_841,
      O => N263
    );
  c1_num_out_aux_shift0001_1_120_SW0 : MUXF5
    port map (
      I0 => N264,
      I1 => N265,
      S => c1_num_desp_aux(2),
      O => N210
    );
  c1_num_out_aux_shift0001_1_120_SW0_F : LUT4
    generic map(
      INIT => X"01AB"
    )
    port map (
      I0 => c1_num_desp_aux(3),
      I1 => c1_num_out_aux_shift0001_1_27_921,
      I2 => c1_num_out_aux_shift0001_1_42_922,
      I3 => c1_Sh9_860,
      O => N264
    );
  c1_num_out_aux_shift0001_1_120_SW0_G : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => c1_num_desp_aux(3),
      I1 => c1_Sh5_856,
      I2 => c1_Sh13_840,
      O => N265
    );
  c0_Msub_mux0002_addsub0000_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Exponente_1_7_IBUF_15,
      I1 => Exponente_2_7_IBUF_31,
      O => c0_Msub_mux0002_addsub0000_lut(7)
    );
  c6_Madd_contador_ceros_addsub0016_cy_1_151_SW0 : LUT4
    generic map(
      INIT => X"BBDF"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0012_cy_0_Q,
      I1 => rest_norm_M(7),
      I2 => c6_N5,
      I3 => c6_Madd_contador_ceros_addsub0014_lut(1),
      O => N268
    );
  c6_contador_ceros_mux0026_3_35_SW0 : LUT4
    generic map(
      INIT => X"E5E4"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0007_lut(1),
      I1 => rest_norm_M(11),
      I2 => c6_Madd_contador_ceros_addsub0007_cy(0),
      I3 => rest_norm_M(10),
      O => N270
    );
  c6_contador_ceros_mux0018_1_36_SW0 : LUT4
    generic map(
      INIT => X"FF02"
    )
    port map (
      I0 => c6_contador_ceros_mux0018_1_9_1363,
      I1 => rest_norm_M(18),
      I2 => rest_norm_M(19),
      I3 => rest_norm_M(21),
      O => N272
    );
  c6_contador_ceros_mux0018_1_36 : LUT4
    generic map(
      INIT => X"0302"
    )
    port map (
      I0 => rest_norm_M(20),
      I1 => rest_norm_M(22),
      I2 => rest_norm_M(23),
      I3 => N272,
      O => c6_Madd_contador_ceros_addsub0007_lut(1)
    );
  c0_Msub_mux0002_addsub0000_lut_6_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Exponente_1_6_IBUF_14,
      I1 => Exponente_2_6_IBUF_30,
      O => c0_Msub_mux0002_addsub0000_lut(6)
    );
  c0_Msub_mux0002_addsub0000_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Exponente_1_5_IBUF_13,
      I1 => Exponente_2_5_IBUF_29,
      O => c0_Msub_mux0002_addsub0000_lut(5)
    );
  c0_Msub_mux0002_addsub0000_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Exponente_1_4_IBUF_12,
      I1 => Exponente_2_4_IBUF_28,
      O => c0_Msub_mux0002_addsub0000_lut(4)
    );
  c0_Msub_mux0002_addsub0000_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Exponente_1_3_IBUF_11,
      I1 => Exponente_2_3_IBUF_27,
      O => c0_Msub_mux0002_addsub0000_lut(3)
    );
  c0_Msub_mux0002_addsub0000_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Exponente_1_2_IBUF_10,
      I1 => Exponente_2_2_IBUF_26,
      O => c0_Msub_mux0002_addsub0000_lut(2)
    );
  c0_Msub_mux0002_addsub0000_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Exponente_1_1_IBUF_9,
      I1 => Exponente_2_1_IBUF_25,
      O => c0_Msub_mux0002_addsub0000_lut(1)
    );
  c6_contador_ceros_mux0034_5_50_SW0 : LUT4
    generic map(
      INIT => X"51F7"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0014_cy(3),
      I1 => c6_Madd_contador_ceros_addsub0016_lut(3),
      I2 => c6_contador_ceros_mux0034_5_14_1380,
      I3 => c6_Madd_contador_ceros_addsub0014_lut(4),
      O => N302
    );
  c6_contador_ceros_mux0030_2_142_SW0 : LUT4
    generic map(
      INIT => X"FBBB"
    )
    port map (
      I0 => c6_contador_ceros_mux0018_0_2,
      I1 => c6_contador_ceros_mux0030_2_133_1373,
      I2 => c6_contador_ceros_mux0022_0_33_1365,
      I3 => c6_contador_ceros_mux0018_0_23,
      O => N304
    );
  c6_Madd_contador_ceros_addsub0018_cy_4_165 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0014_lut(4),
      I1 => c6_contador_ceros_mux0036_4_0,
      I2 => N306,
      I3 => c6_Madd_contador_ceros_addsub0014_cy(3),
      O => c6_Madd_contador_ceros_addsub0018_cy_4_165_1208
    );
  c6_mantisa_aux_shift0001_18_SW2 : LUT4
    generic map(
      INIT => X"FF27"
    )
    port map (
      I0 => c6_contador_ceros_mux0046_3_1,
      I1 => c6_Sh6,
      I2 => c6_N43,
      I3 => c6_contador_ceros_mux0046_4_1,
      O => N308
    );
  c6_mantisa_aux_shift0001_18_Q : LUT4
    generic map(
      INIT => X"1302"
    )
    port map (
      I0 => c6_contador_ceros_mux0046_2_1,
      I1 => c6_mantisa_aux_or0000,
      I2 => N308,
      I3 => c6_N6,
      O => c6_mantisa_aux_shift0001(18)
    );
  c6_mantisa_aux_shift0001_16_SW2 : LUT4
    generic map(
      INIT => X"FF27"
    )
    port map (
      I0 => c6_contador_ceros_mux0046_3_1,
      I1 => c6_Sh4,
      I2 => c6_N42,
      I3 => c6_contador_ceros_mux0046_4_1,
      O => N310
    );
  c6_mantisa_aux_shift0001_16_Q : LUT4
    generic map(
      INIT => X"1302"
    )
    port map (
      I0 => c6_contador_ceros_mux0046_2_1,
      I1 => c6_mantisa_aux_or0000,
      I2 => N310,
      I3 => c6_N75,
      O => c6_mantisa_aux_shift0001(16)
    );
  c6_mantisa_aux_shift0001_21_6136 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => c6_contador_ceros_mux0046_4_1,
      I1 => N312,
      I2 => c6_N1511,
      O => c6_N135
    );
  c4_Exponente_final_0_127 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => c4_N01,
      I1 => c4_Exponente_final_0_28_1110,
      I2 => c4_Exponente_final_0_95_1117,
      I3 => c4_Exponente_final_0_81_1116,
      O => Exponente_suma_0_OBUF_56
    );
  c6_mantisa_aux_or0000103 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => c6_mantisa_aux_or000082,
      I1 => c6_N124,
      I2 => c6_mantisa_aux_or000046_1437,
      I3 => c6_Madd_contador_ceros_addsub0021_lut(7),
      O => c6_mantisa_aux_or0000103_1434
    );
  c4_Exponente_final_0_28_SW0 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => sum_resul_M(14),
      I1 => sum_resul_M(20),
      I2 => sum_resul_M(21),
      I3 => sum_resul_M(22),
      O => N316
    );
  c4_Exponente_final_0_28 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => c4_Exponente_final_0_20_1109,
      I1 => c4_Exponente_final_0_6_1114,
      I2 => sum_resul_M(13),
      I3 => N316,
      O => c4_Exponente_final_0_28_1110
    );
  c6_contador_ceros_mux0038_7_27 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => c6_N126,
      I1 => N318,
      I2 => c6_N17,
      I3 => c6_Madd_contador_ceros_addsub0014_lut(5),
      O => c6_Madd_contador_ceros_addsub0017_lut(7)
    );
  c6_contador_ceros_mux0036_1_20 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => rest_norm_M(6),
      I1 => c6_contador_ceros_mux0036_4_0,
      I2 => c6_Madd_contador_ceros_addsub0012_cy_0_Q,
      I3 => rest_norm_M(5),
      O => c6_contador_ceros_mux0036_1_20_1381
    );
  c6_contador_ceros_mux0038_6_68 : LUT4
    generic map(
      INIT => X"3313"
    )
    port map (
      I0 => c6_N17,
      I1 => c6_N126,
      I2 => c6_Madd_contador_ceros_addsub0014_lut(5),
      I3 => c6_contador_ceros_mux0036_4_0,
      O => c6_contador_ceros_mux0038_6_68_1390
    );
  c6_contador_ceros_mux0030_1_96_SW0 : LUT4
    generic map(
      INIT => X"F020"
    )
    port map (
      I0 => c6_N21,
      I1 => rest_norm_M(10),
      I2 => c6_Madd_contador_ceros_addsub0007_cy(0),
      I3 => rest_norm_M(12),
      O => N320
    );
  c6_contador_ceros_mux0030_1_96 : LUT4
    generic map(
      INIT => X"0302"
    )
    port map (
      I0 => c6_contador_ceros_mux0030_1_80_1370,
      I1 => c6_Madd_contador_ceros_addsub0007_lut(1),
      I2 => c6_N150,
      I3 => N320,
      O => c6_contador_ceros_mux0030_1_96_1371
    );
  c6_contador_ceros_mux0022_0_2 : LUT4
    generic map(
      INIT => X"0F02"
    )
    port map (
      I0 => rest_norm_M(20),
      I1 => rest_norm_M(21),
      I2 => rest_norm_M(23),
      I3 => rest_norm_M(22),
      O => c6_contador_ceros_mux0018_0_2
    );
  c6_contador_ceros_mux0018_0_34 : LUT4
    generic map(
      INIT => X"FAF8"
    )
    port map (
      I0 => c6_contador_ceros_mux0018_0_23,
      I1 => rest_norm_M(18),
      I2 => c6_contador_ceros_mux0018_0_2,
      I3 => c6_contador_ceros_mux0018_0_14_1360,
      O => c6_Madd_contador_ceros_addsub0007_cy(0)
    );
  c6_exponente_out_0_21 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => c6_Mcompar_mantisa_aux_cmp_lt0000_cy_7_1,
      I1 => c6_Mcompar_error_cmp_gt0000_cy(7),
      O => error_resta_OBUF_1537
    );
  c1_num_out_aux_shift0001_15_34 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => c1_num_desp_aux(6),
      I1 => c1_num_desp_aux(7),
      I2 => c1_num_desp_aux(5),
      I3 => c1_num_desp_aux(4),
      O => c1_num_out_aux_shift0001_10_43
    );
  c6_contador_ceros_mux0046_1_SW1 : LUT4
    generic map(
      INIT => X"FF46"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0019_cy(0),
      I1 => rest_norm_M(1),
      I2 => rest_norm_M(0),
      I3 => c6_N64,
      O => N322
    );
  c6_contador_ceros_mux0046_1_Q : LUT4
    generic map(
      INIT => X"96A5"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0020_lut(1),
      I1 => c6_N23,
      I2 => N322,
      I3 => c6_N02,
      O => c6_contador_ceros_mux0046_1_1
    );
  c6_contador_ceros_mux0030_2_14_SW0 : LUT4
    generic map(
      INIT => X"FEEE"
    )
    port map (
      I0 => c6_contador_ceros_mux0018_0_2,
      I1 => c6_contador_ceros_mux0030_2_1_1372,
      I2 => c6_contador_ceros_mux0018_0_23,
      I3 => c6_contador_ceros_mux0022_0_33_1365,
      O => N324
    );
  c6_contador_ceros_mux0030_2_14 : LUT4
    generic map(
      INIT => X"4460"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0007_cy(0),
      I1 => c6_Madd_contador_ceros_addsub0007_lut(1),
      I2 => N324,
      I3 => rest_norm_M(11),
      O => c6_contador_ceros_mux0030_2_14_1374
    );
  c0_e_max_or00001 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => c0_mux0000_and0000,
      I1 => c0_mux0000_and0001,
      I2 => c0_N7,
      O => c0_e_max_or0000
    );
  c6_contador_ceros_mux0046_3_21 : LUT4
    generic map(
      INIT => X"A2B2"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0019_lut(1),
      I1 => rest_norm_M(1),
      I2 => c6_Madd_contador_ceros_addsub0019_cy(0),
      I3 => rest_norm_M(0),
      O => c6_N63
    );
  c6_contador_ceros_mux0040_0_1 : LUT4
    generic map(
      INIT => X"C9CC"
    )
    port map (
      I0 => rest_norm_M(4),
      I1 => c6_Madd_contador_ceros_addsub0020_cy(0),
      I2 => c6_N126,
      I3 => rest_norm_M(3),
      O => c6_Madd_contador_ceros_addsub0019_cy(0)
    );
  c6_Madd_contador_ceros_addsub0015_cy_3_149_SW0 : LUT4
    generic map(
      INIT => X"9A88"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0007_lut(2),
      I1 => c6_N150,
      I2 => c6_Madd_contador_ceros_addsub0007_cy(1),
      I3 => c6_Madd_contador_ceros_addsub0015_cy_3_125_1192,
      O => N326
    );
  c6_contador_ceros_mux0032_1_Q : LUT4
    generic map(
      INIT => X"B9A8"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0014_lut(1),
      I1 => c6_contador_ceros_mux0036_4_0,
      I2 => N186,
      I3 => c6_N5,
      O => c6_Madd_contador_ceros_addsub0016_lut(1)
    );
  c6_contador_ceros_mux0036_4_100 : LUT4
    generic map(
      INIT => X"B9A8"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0014_lut(4),
      I1 => c6_contador_ceros_mux0036_4_0,
      I2 => N332,
      I3 => c6_contador_ceros_mux0036_4_77_1385,
      O => c6_Madd_contador_ceros_addsub0020_lut(4)
    );
  c6_Madd_contador_ceros_addsub0016_cy_1_111 : LUT4
    generic map(
      INIT => X"EA62"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0011_cy(0),
      I1 => rest_norm_M(10),
      I2 => c6_N139,
      I3 => c6_N1281,
      O => c6_N5
    );
  c6_contador_ceros_mux0030_1_11 : LUT3
    generic map(
      INIT => X"76"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0011_cy(0),
      I1 => rest_norm_M(9),
      I2 => rest_norm_M(8),
      O => c6_N21
    );
  c6_contador_ceros_mux0030_1_21 : LUT4
    generic map(
      INIT => X"EAEB"
    )
    port map (
      I0 => rest_norm_M(10),
      I1 => rest_norm_M(9),
      I2 => c6_Madd_contador_ceros_addsub0011_cy(0),
      I3 => rest_norm_M(8),
      O => c6_N53
    );
  c6_Madd_contador_ceros_addsub0012_cy_2_1314_SW0 : LUT4
    generic map(
      INIT => X"0060"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0007_lut(2),
      I1 => c6_Madd_contador_ceros_addsub0007_cy(1),
      I2 => rest_norm_M(12),
      I3 => c6_Madd_contador_ceros_addsub0007_cy(0),
      O => N336
    );
  c6_Madd_contador_ceros_addsub0012_cy_2_1314 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0007_lut(1),
      I1 => c6_N150,
      I2 => N336,
      I3 => c6_Madd_contador_ceros_addsub0007_lut(2),
      O => c6_Madd_contador_ceros_addsub0012_cy_2_1314_1176
    );
  c6_mantisa_aux_shift0001_3_1 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => c6_N158,
      I1 => c6_contador_ceros_mux0046_0_1_1391,
      I2 => c6_N122,
      I3 => c6_N10,
      O => c6_mantisa_aux_shift0001(3)
    );
  c6_mantisa_aux_shift0001_2_1 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => c6_N44,
      I1 => c6_N138,
      I2 => c6_contador_ceros_mux0046_3_1,
      O => c6_mantisa_aux_shift0001(2)
    );
  c6_mantisa_aux_shift0001_1_1 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => c6_N1511,
      I1 => c6_N138,
      I2 => c6_contador_ceros_mux0046_3_1,
      O => c6_mantisa_aux_shift0001(1)
    );
  c6_mantisa_aux_shift0001_19_41 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => c6_contador_ceros_mux0046_4_1,
      I1 => c6_mantisa_aux_or0000,
      I2 => c6_contador_ceros_mux0046_2_1,
      O => c6_N138
    );
  c6_mantisa_aux_shift0001_0_1 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => c6_N162,
      I1 => c6_N138,
      I2 => c6_contador_ceros_mux0046_3_1,
      O => c6_mantisa_aux_shift0001(0)
    );
  c6_mantisa_aux_shift0001_5_1 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => c6_contador_ceros_mux0046_4_1,
      I1 => c6_mantisa_aux_or0000,
      I2 => c6_contador_ceros_mux0046_3_1,
      I3 => c6_N110,
      O => c6_mantisa_aux_shift0001(5)
    );
  c6_mantisa_aux_shift0001_17_31 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => c6_contador_ceros_mux0046_4_1,
      I1 => c6_mantisa_aux_or0000,
      I2 => c6_contador_ceros_mux0046_3_1,
      I3 => c6_contador_ceros_mux0046_2_1,
      O => c6_N165
    );
  c0_B_despl_9_or00001 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_B_despl_mux0009(9),
      I2 => c0_mux0000_and0000,
      I3 => c0_mux0000_and0001,
      O => c0_B_despl_9_or0000
    );
  c0_B_despl_8_or00001 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_B_despl_mux0009(8),
      I2 => c0_mux0000_and0000,
      I3 => c0_mux0000_and0001,
      O => c0_B_despl_8_or0000
    );
  c0_B_despl_7_or00001 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_B_despl_mux0009(7),
      I2 => c0_mux0000_and0000,
      I3 => c0_mux0000_and0001,
      O => c0_B_despl_7_or0000
    );
  c0_B_despl_6_or00001 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_B_despl_mux0009(6),
      I2 => c0_mux0000_and0000,
      I3 => c0_mux0000_and0001,
      O => c0_B_despl_6_or0000
    );
  c0_B_despl_5_or00001 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_B_despl_mux0009(5),
      I2 => c0_mux0000_and0000,
      I3 => c0_mux0000_and0001,
      O => c0_B_despl_5_or0000
    );
  c0_B_despl_4_or00001 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_B_despl_mux0009(4),
      I2 => c0_mux0000_and0000,
      I3 => c0_mux0000_and0001,
      O => c0_B_despl_4_or0000
    );
  c0_B_despl_3_or00001 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_B_despl_mux0009(3),
      I2 => c0_mux0000_and0000,
      I3 => c0_mux0000_and0001,
      O => c0_B_despl_3_or0000
    );
  c0_B_despl_2_or00001 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_B_despl_mux0009(2),
      I2 => c0_mux0000_and0000,
      I3 => c0_mux0000_and0001,
      O => c0_B_despl_2_or0000
    );
  c0_B_despl_22_or00001 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_B_despl_mux0009(22),
      I2 => c0_mux0000_and0000,
      I3 => c0_mux0000_and0001,
      O => c0_B_despl_22_or0000
    );
  c0_B_despl_21_or00001 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_B_despl_mux0009(21),
      I2 => c0_mux0000_and0000,
      I3 => c0_mux0000_and0001,
      O => c0_B_despl_21_or0000
    );
  c0_B_despl_20_or00001 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_B_despl_mux0009(20),
      I2 => c0_mux0000_and0000,
      I3 => c0_mux0000_and0001,
      O => c0_B_despl_20_or0000
    );
  c0_B_despl_1_or00001 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_B_despl_mux0009(1),
      I2 => c0_mux0000_and0000,
      I3 => c0_mux0000_and0001,
      O => c0_B_despl_1_or0000
    );
  c0_B_despl_19_or00001 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_B_despl_mux0009(19),
      I2 => c0_mux0000_and0000,
      I3 => c0_mux0000_and0001,
      O => c0_B_despl_19_or0000
    );
  c0_B_despl_18_or00001 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_B_despl_mux0009(18),
      I2 => c0_mux0000_and0000,
      I3 => c0_mux0000_and0001,
      O => c0_B_despl_18_or0000
    );
  c0_B_despl_17_or00001 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_B_despl_mux0009(17),
      I2 => c0_mux0000_and0000,
      I3 => c0_mux0000_and0001,
      O => c0_B_despl_17_or0000
    );
  c0_B_despl_16_or00001 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_B_despl_mux0009(16),
      I2 => c0_mux0000_and0000,
      I3 => c0_mux0000_and0001,
      O => c0_B_despl_16_or0000
    );
  c0_B_despl_15_or00001 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_B_despl_mux0009(15),
      I2 => c0_mux0000_and0000,
      I3 => c0_mux0000_and0001,
      O => c0_B_despl_15_or0000
    );
  c0_B_despl_14_or00001 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_B_despl_mux0009(14),
      I2 => c0_mux0000_and0000,
      I3 => c0_mux0000_and0001,
      O => c0_B_despl_14_or0000
    );
  c0_B_despl_13_or00001 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_B_despl_mux0009(13),
      I2 => c0_mux0000_and0000,
      I3 => c0_mux0000_and0001,
      O => c0_B_despl_13_or0000
    );
  c0_B_despl_12_or00001 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_B_despl_mux0009(12),
      I2 => c0_mux0000_and0000,
      I3 => c0_mux0000_and0001,
      O => c0_B_despl_12_or0000
    );
  c0_B_despl_11_or00001 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_B_despl_mux0009(11),
      I2 => c0_mux0000_and0000,
      I3 => c0_mux0000_and0001,
      O => c0_B_despl_11_or0000
    );
  c0_B_despl_10_or00001 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_B_despl_mux0009(10),
      I2 => c0_mux0000_and0000,
      I3 => c0_mux0000_and0001,
      O => c0_B_despl_10_or0000
    );
  c0_B_despl_0_or00001 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_B_despl_mux0009(0),
      I2 => c0_mux0000_and0000,
      I3 => c0_mux0000_and0001,
      O => c0_B_despl_0_or0000
    );
  c0_A_max_9_or00001 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_A_max_mux0009(9),
      I2 => c0_mux0000_and0000,
      I3 => c0_mux0000_and0001,
      O => c0_A_max_9_or0000
    );
  c0_A_max_8_or00001 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_A_max_mux0009(8),
      I2 => c0_mux0000_and0000,
      I3 => c0_mux0000_and0001,
      O => c0_A_max_8_or0000
    );
  c0_A_max_7_or00001 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_A_max_mux0009(7),
      I2 => c0_mux0000_and0000,
      I3 => c0_mux0000_and0001,
      O => c0_A_max_7_or0000
    );
  c0_A_max_6_or00001 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_A_max_mux0009(6),
      I2 => c0_mux0000_and0000,
      I3 => c0_mux0000_and0001,
      O => c0_A_max_6_or0000
    );
  c0_A_max_5_or00001 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_A_max_mux0009(5),
      I2 => c0_mux0000_and0000,
      I3 => c0_mux0000_and0001,
      O => c0_A_max_5_or0000
    );
  c0_A_max_4_or00001 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_A_max_mux0009(4),
      I2 => c0_mux0000_and0000,
      I3 => c0_mux0000_and0001,
      O => c0_A_max_4_or0000
    );
  c0_A_max_3_or00001 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_A_max_mux0009(3),
      I2 => c0_mux0000_and0000,
      I3 => c0_mux0000_and0001,
      O => c0_A_max_3_or0000
    );
  c0_A_max_2_or00001 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_A_max_mux0009(2),
      I2 => c0_mux0000_and0000,
      I3 => c0_mux0000_and0001,
      O => c0_A_max_2_or0000
    );
  c0_A_max_23_or00001 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_B_despl_or0003_595,
      I2 => c0_mux0000_and0000,
      I3 => c0_mux0000_and0001,
      O => c0_A_max_23_or0000
    );
  c0_A_max_22_or00001 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_A_max_mux0009(22),
      I2 => c0_mux0000_and0000,
      I3 => c0_mux0000_and0001,
      O => c0_A_max_22_or0000
    );
  c0_A_max_21_or00001 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_A_max_mux0009(21),
      I2 => c0_mux0000_and0000,
      I3 => c0_mux0000_and0001,
      O => c0_A_max_21_or0000
    );
  c0_A_max_20_or00001 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_A_max_mux0009(20),
      I2 => c0_mux0000_and0000,
      I3 => c0_mux0000_and0001,
      O => c0_A_max_20_or0000
    );
  c0_A_max_1_or00001 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_A_max_mux0009(1),
      I2 => c0_mux0000_and0000,
      I3 => c0_mux0000_and0001,
      O => c0_A_max_1_or0000
    );
  c0_A_max_19_or00001 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_A_max_mux0009(19),
      I2 => c0_mux0000_and0000,
      I3 => c0_mux0000_and0001,
      O => c0_A_max_19_or0000
    );
  c0_A_max_18_or00001 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_A_max_mux0009(18),
      I2 => c0_mux0000_and0000,
      I3 => c0_mux0000_and0001,
      O => c0_A_max_18_or0000
    );
  c0_A_max_17_or00001 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_A_max_mux0009(17),
      I2 => c0_mux0000_and0000,
      I3 => c0_mux0000_and0001,
      O => c0_A_max_17_or0000
    );
  c0_A_max_16_or00001 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_A_max_mux0009(16),
      I2 => c0_mux0000_and0000,
      I3 => c0_mux0000_and0001,
      O => c0_A_max_16_or0000
    );
  c0_A_max_15_or00001 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_A_max_mux0009(15),
      I2 => c0_mux0000_and0000,
      I3 => c0_mux0000_and0001,
      O => c0_A_max_15_or0000
    );
  c0_A_max_14_or00001 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_A_max_mux0009(14),
      I2 => c0_mux0000_and0000,
      I3 => c0_mux0000_and0001,
      O => c0_A_max_14_or0000
    );
  c0_A_max_13_or00001 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_A_max_mux0009(13),
      I2 => c0_mux0000_and0000,
      I3 => c0_mux0000_and0001,
      O => c0_A_max_13_or0000
    );
  c0_A_max_12_or00001 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_A_max_mux0009(12),
      I2 => c0_mux0000_and0000,
      I3 => c0_mux0000_and0001,
      O => c0_A_max_12_or0000
    );
  c0_A_max_11_or00001 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_A_max_mux0009(11),
      I2 => c0_mux0000_and0000,
      I3 => c0_mux0000_and0001,
      O => c0_A_max_11_or0000
    );
  c0_A_max_10_or00001 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_A_max_mux0009(10),
      I2 => c0_mux0000_and0000,
      I3 => c0_mux0000_and0001,
      O => c0_A_max_10_or0000
    );
  c0_A_max_0_or00001 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => c0_B_despl_or0001,
      I1 => c0_A_max_mux0009(0),
      I2 => c0_mux0000_and0000,
      I3 => c0_mux0000_and0001,
      O => c0_A_max_0_or0000
    );
  c0_B_despl_or00012 : LUT4
    generic map(
      INIT => X"FFEF"
    )
    port map (
      I0 => c0_N7,
      I1 => c0_B_despl_and0000,
      I2 => c0_Mcompar_mux0000_cmp_lt0000_cy(7),
      I3 => c0_N6,
      O => c0_B_despl_or0001
    );
  c0_e_dif_or0000_SW0 : LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      I0 => c0_N7,
      I1 => c0_N16,
      I2 => c0_e_dif_or0000217,
      I3 => c0_e_dif_or0000232_752,
      O => N6
    );
  c0_e_dif_or0000 : LUT4
    generic map(
      INIT => X"FEEE"
    )
    port map (
      I0 => N6,
      I1 => c0_mux0000_and0001,
      I2 => c0_Mcompar_B_despl_cmp_lt0000_cy(22),
      I3 => c0_B_despl_cmp_eq00001,
      O => c0_e_dif_or0000_749
    );
  c0_e_dif_or00001_SW0 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => c0_N16,
      I1 => c0_mux0000_cmp_eq00044_815,
      I2 => c0_mux0000_cmp_eq00049_816,
      I3 => Mantisa_1_17_IBUF_96,
      O => N13
    );
  c6_mantisa_aux_shift0001_9_SW1 : LUT4
    generic map(
      INIT => X"F9FF"
    )
    port map (
      I0 => c6_N271,
      I1 => c6_Madd_contador_ceros_addsub0019_lut(1),
      I2 => c6_contador_ceros_mux0046_2_1,
      I3 => N39,
      O => N22
    );
  c6_mantisa_aux_shift0001_19_217 : LUT4
    generic map(
      INIT => X"5140"
    )
    port map (
      I0 => c6_contador_ceros_mux0046_1_1,
      I1 => c6_contador_ceros_mux0046_0_1_1391,
      I2 => rest_norm_M(14),
      I3 => rest_norm_M(15),
      O => c6_mantisa_aux_shift0001_19_217_1466
    );
  c6_mantisa_aux_shift0001_17_30_SW0 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => c6_contador_ceros_mux0046_2_1,
      I1 => c6_contador_ceros_mux0046_3_1,
      I2 => c6_N74,
      I3 => c6_Sh5,
      O => N338
    );
  c6_mantisa_aux_shift0001_17_30 : LUT4
    generic map(
      INIT => X"0302"
    )
    port map (
      I0 => c6_mantisa_aux_shift0001_17_19_1461,
      I1 => c6_contador_ceros_mux0046_4_1,
      I2 => c6_mantisa_aux_or0000,
      I3 => N338,
      O => c6_mantisa_aux_shift0001_17_30_1462
    );
  c6_mantisa_aux_or000071 : LUT4
    generic map(
      INIT => X"4844"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0017_lut(7),
      I1 => c6_Madd_contador_ceros_addsub0021_cy(5),
      I2 => N171,
      I3 => c6_Madd_contador_ceros_addsub0017_lut(6),
      O => c6_mantisa_aux_or000071_1438
    );
  c6_mantisa_aux_shift0001_21_87 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => c6_mantisa_aux_or0000103_1434,
      I1 => c6_mantisa_aux_or000012_1435,
      I2 => c6_mantisa_aux_or000022_1436,
      I3 => N340,
      O => c6_mantisa_aux_shift0001(21)
    );
  c6_mantisa_aux_shift0001_20_373 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => c6_mantisa_aux_or000012_1435,
      I1 => c6_mantisa_aux_or000022_1436,
      I2 => c6_mantisa_aux_or0000103_1434,
      I3 => c6_contador_ceros_mux0046_3_1,
      O => c6_mantisa_aux_shift0001_20_373_1478
    );
  c4_Exponente_final_2_1 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => c2_Exp_max_sum(2),
      I1 => c2_Exp_max_sum(1),
      I2 => c3_Madd_num_out_S_cy(23),
      I3 => c2_Exp_max_sum(0),
      O => Exponente_suma_2_OBUF_58
    );
  c0_A_max_mux0009_23_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => c0_mux0000_and0000,
      I1 => c0_mux0000_and0001,
      I2 => c0_mux0000_and0005,
      I3 => N104,
      O => c0_A_max_mux0009(23)
    );
  c0_e_dif_or00051 : LUT4
    generic map(
      INIT => X"FFBF"
    )
    port map (
      I0 => c0_mux0000_and0000,
      I1 => c0_Mcompar_mux0000_cmp_gt0000_cy(7),
      I2 => c0_Mcompar_mux0000_cmp_lt0000_cy(7),
      I3 => c0_mux0000_and0001,
      O => c0_e_dif_or0001
    );
  c0_B_despl_mux0009_0_1_SW1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => c0_mux0000_and0001,
      I1 => c0_mux0000_and0004,
      I2 => c0_mux0000_and0005,
      I3 => c0_mux0000_or0001,
      O => N342
    );
  c0_B_despl_mux0009_0_1 : LUT4
    generic map(
      INIT => X"FFEF"
    )
    port map (
      I0 => c0_mux0000_and0000,
      I1 => c0_Mcompar_mux0000_cmp_lt0000_cy(7),
      I2 => c0_Mcompar_mux0000_cmp_gt0000_cy(7),
      I3 => N342,
      O => c0_N1
    );
  c0_mux0000_and00033 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => Mantisa_2_17_IBUF_142,
      I1 => c0_mux0000_cmp_eq00064_818,
      I2 => c0_mux0000_cmp_eq00069_819,
      I3 => c0_N17,
      O => c0_mux0000_and0003
    );
  c0_A_max_mux0009_0_2 : LUT4
    generic map(
      INIT => X"5755"
    )
    port map (
      I0 => c0_N1,
      I1 => c0_B_despl_and0000,
      I2 => N106,
      I3 => c0_Mcompar_mux0000_cmp_lt0000_cy(7),
      O => c0_N3
    );
  c0_e_max_mux0009_0_3_SW0 : LUT3
    generic map(
      INIT => X"FB"
    )
    port map (
      I0 => c0_Mcompar_mux0000_cmp_lt0000_cy(7),
      I1 => c0_Mcompar_mux0000_cmp_gt0000_cy(7),
      I2 => c0_mux0000_and0001,
      O => N108
    );
  c0_B_despl_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => c0_B_despl_cmp_eq00001,
      I1 => c0_Mcompar_B_despl_cmp_lt0000_cy(22),
      O => c0_B_despl_and0000
    );
  c0_mux0002_mux0000_0_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => c0_Mcompar_mux0000_cmp_gt0000_cy(7),
      I1 => Exponente_1_0_IBUF_8,
      I2 => Exponente_2_0_IBUF_24,
      O => c0_mux0002_mux0000(0)
    );
  c6_mantisa_aux_or000041 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => rest_norm_M(1),
      I1 => rest_norm_M(2),
      I2 => c6_N87,
      O => c6_N124
    );
  c6_contador_ceros_mux0038_7_411 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => rest_norm_M(5),
      I1 => rest_norm_M(6),
      I2 => c6_contador_ceros_mux0036_4_0,
      O => c6_N126
    );
  c6_contador_ceros_mux0036_1_5 : LUT4
    generic map(
      INIT => X"FFBA"
    )
    port map (
      I0 => rest_norm_M(6),
      I1 => c6_Madd_contador_ceros_addsub0012_cy_0_Q,
      I2 => rest_norm_M(5),
      I3 => c6_contador_ceros_mux0036_4_0,
      O => c6_contador_ceros_mux0036_1_5_1383
    );
  c6_contador_ceros_mux0034_5_14 : LUT4
    generic map(
      INIT => X"FF57"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0016_lut(2),
      I1 => c6_Madd_contador_ceros_addsub0016_cy_1_113_1197,
      I2 => c6_Madd_contador_ceros_addsub0016_cy_1_151_1198,
      I3 => rest_norm_M(6),
      O => c6_contador_ceros_mux0034_5_14_1380
    );
  c6_contador_ceros_mux0030_2_1 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => rest_norm_M(8),
      I1 => rest_norm_M(9),
      I2 => rest_norm_M(10),
      O => c6_contador_ceros_mux0030_2_1_1372
    );
  c6_contador_ceros_mux0030_2_133 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => rest_norm_M(8),
      I1 => rest_norm_M(9),
      I2 => rest_norm_M(10),
      O => c6_contador_ceros_mux0030_2_133_1373
    );
  c6_contador_ceros_mux0030_2_200_SW0 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0007_lut(2),
      I1 => c6_N150,
      I2 => c6_contador_ceros_mux0030_2_189_1376,
      O => N346
    );
  c6_contador_ceros_mux0030_2_200 : LUT4
    generic map(
      INIT => X"FAF8"
    )
    port map (
      I0 => c6_contador_ceros_mux0030_2_74_1378,
      I1 => c6_contador_ceros_mux0030_2_14_1374,
      I2 => N346,
      I3 => c6_contador_ceros_mux0030_2_33_1377,
      O => c6_Madd_contador_ceros_addsub0014_lut(2)
    );
  c6_Madd_contador_ceros_addsub0018_cy_1_121 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0012_cy_0_Q,
      I1 => rest_norm_M(8),
      I2 => rest_norm_M(9),
      I3 => c6_flag_mux0013,
      O => c6_N141
    );
  c6_contador_ceros_mux0040_3_SW0 : LUT4
    generic map(
      INIT => X"FFBA"
    )
    port map (
      I0 => rest_norm_M(4),
      I1 => c6_Madd_contador_ceros_addsub0020_cy(0),
      I2 => rest_norm_M(3),
      I3 => c6_N126,
      O => N160
    );
  c6_flag_mux00131 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => rest_norm_M(11),
      I1 => rest_norm_M(12),
      I2 => c6_N150,
      I3 => rest_norm_M(10),
      O => c6_flag_mux0013
    );
  c6_Madd_contador_ceros_addsub0018_cy_1_111 : LUT3
    generic map(
      INIT => X"FB"
    )
    port map (
      I0 => rest_norm_M(8),
      I1 => c6_flag_mux0013,
      I2 => rest_norm_M(9),
      O => c6_N7
    );
  c6_contador_ceros_mux0040_4_SW0 : LUT4
    generic map(
      INIT => X"77F7"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0020_lut(3),
      I1 => c6_Madd_contador_ceros_addsub0020_lut(2),
      I2 => rest_norm_M(3),
      I3 => c6_Madd_contador_ceros_addsub0020_cy(0),
      O => N164
    );
  c6_contador_ceros_mux0038_6_27 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => rest_norm_M(7),
      I1 => c6_N7,
      I2 => c6_N17,
      I3 => c6_Madd_contador_ceros_addsub0014_lut(5),
      O => c6_contador_ceros_mux0038_6_27_1388
    );
  c6_Madd_contador_ceros_addsub0021_cy_5_195 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0019_lut(4),
      I1 => c6_Madd_contador_ceros_addsub0019_lut(1),
      I2 => c6_Madd_contador_ceros_addsub0019_lut(2),
      I3 => c6_Madd_contador_ceros_addsub0019_lut(3),
      O => c6_Madd_contador_ceros_addsub0021_cy_5_195_1225
    );
  c6_Madd_contador_ceros_addsub0018_cy_4_1121 : LUT3
    generic map(
      INIT => X"F1"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0016_cy_1_113_1197,
      I1 => c6_Madd_contador_ceros_addsub0016_cy_1_151_1198,
      I2 => rest_norm_M(6),
      O => c6_N471
    );
  c6_contador_ceros_mux0032_3_21 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => rest_norm_M(7),
      I1 => c6_N7,
      I2 => c6_Madd_contador_ceros_addsub0014_lut(1),
      I3 => c6_N141,
      O => c6_N1391
    );
  c6_contador_ceros_mux0032_2_11 : LUT4
    generic map(
      INIT => X"FFEF"
    )
    port map (
      I0 => rest_norm_M(7),
      I1 => c6_N7,
      I2 => c6_Madd_contador_ceros_addsub0014_lut(1),
      I3 => c6_Madd_contador_ceros_addsub0012_cy_0_Q,
      O => c6_N37
    );
  c6_contador_ceros_mux0030_1_25 : LUT4
    generic map(
      INIT => X"FF02"
    )
    port map (
      I0 => c6_N21,
      I1 => rest_norm_M(10),
      I2 => rest_norm_M(11),
      I3 => rest_norm_M(12),
      O => c6_contador_ceros_mux0030_1_25_1368
    );
  c6_contador_ceros_mux0022_0_41 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => rest_norm_M(21),
      I1 => rest_norm_M(23),
      I2 => rest_norm_M(19),
      O => c6_contador_ceros_mux0018_0_23
    );
  c6_contador_ceros_mux0026_3_143 : LUT4
    generic map(
      INIT => X"3020"
    )
    port map (
      I0 => c6_N150,
      I1 => rest_norm_M(18),
      I2 => c6_N153,
      I3 => N356,
      O => c6_Madd_contador_ceros_addsub0015_lut(3)
    );
  c6_contador_ceros_mux0018_4_2_SW0 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => rest_norm_M(16),
      I1 => rest_norm_M(21),
      I2 => rest_norm_M(23),
      I3 => rest_norm_M(17),
      O => N194
    );
  c6_Madd_contador_ceros_addsub0014_cy_3_169 : LUT4
    generic map(
      INIT => X"F080"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0007_lut(1),
      I1 => c6_contador_ceros_mux0030_1_37_1369,
      I2 => c6_Madd_contador_ceros_addsub0014_lut(2),
      I3 => c6_contador_ceros_mux0030_1_96_1371,
      O => c6_Madd_contador_ceros_addsub0014_cy_3_169_1182
    );
  c6_contador_ceros_mux0046_4_SW2 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => rest_norm_M(0),
      I1 => rest_norm_M(1),
      I2 => rest_norm_M(2),
      O => N350
    );
  c6_contador_ceros_mux0046_4_Q : LUT4
    generic map(
      INIT => X"C9CC"
    )
    port map (
      I0 => N350,
      I1 => c6_Madd_contador_ceros_addsub0022_lut(4),
      I2 => c6_N87,
      I3 => c6_Madd_contador_ceros_addsub0022_cy(3),
      O => c6_contador_ceros_mux0046_4_1
    );
  c6_contador_ceros_mux0046_6_Q : LUT4
    generic map(
      INIT => X"AA69"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0021_lut(6),
      I1 => c6_Madd_contador_ceros_addsub0021_cy(5),
      I2 => c6_N47,
      I3 => c6_N124,
      O => c6_contador_ceros_mux0046(6)
    );
  c6_contador_ceros_mux0026_4_49_SW0 : LUT4
    generic map(
      INIT => X"5F4D"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0007_cy(1),
      I1 => N270,
      I2 => c6_Madd_contador_ceros_addsub0007_lut(2),
      I3 => rest_norm_M(12),
      O => N356
    );
  c6_contador_ceros_mux0026_4_49 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => c6_N150,
      I1 => rest_norm_M(18),
      I2 => N356,
      I3 => c6_N153,
      O => c6_Madd_contador_ceros_addsub0015_lut(4)
    );
  c6_contador_ceros_mux0036_1_33_SW0 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => rest_norm_M(5),
      I1 => rest_norm_M(6),
      I2 => rest_norm_M(8),
      I3 => rest_norm_M(9),
      O => N358
    );
  c6_contador_ceros_mux0036_1_33 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => c6_contador_ceros_mux0036_4_0,
      I1 => rest_norm_M(10),
      I2 => N358,
      I3 => c6_N139,
      O => c6_contador_ceros_mux0036_1_33_1382
    );
  c6_contador_ceros_mux0046_3_SW0 : LUT4
    generic map(
      INIT => X"3B2B"
    )
    port map (
      I0 => rest_norm_M(1),
      I1 => c6_Madd_contador_ceros_addsub0019_lut(1),
      I2 => c6_Madd_contador_ceros_addsub0019_cy(0),
      I3 => rest_norm_M(0),
      O => N360
    );
  c6_contador_ceros_mux0046_3_Q : LUT4
    generic map(
      INIT => X"C9CC"
    )
    port map (
      I0 => N360,
      I1 => c6_Madd_contador_ceros_addsub0019_lut(3),
      I2 => c6_N64,
      I3 => c6_Madd_contador_ceros_addsub0019_lut(2),
      O => c6_contador_ceros_mux0046_3_1
    );
  c6_contador_ceros_mux0036_0_SW1 : LUT4
    generic map(
      INIT => X"F2F3"
    )
    port map (
      I0 => rest_norm_M(6),
      I1 => rest_norm_M(7),
      I2 => rest_norm_M(9),
      I3 => rest_norm_M(5),
      O => N362
    );
  c6_contador_ceros_mux0036_0_Q : LUT4
    generic map(
      INIT => X"C9CC"
    )
    port map (
      I0 => N362,
      I1 => c6_Madd_contador_ceros_addsub0012_cy_0_Q,
      I2 => rest_norm_M(8),
      I3 => c6_flag_mux0013,
      O => c6_Madd_contador_ceros_addsub0020_cy(0)
    );
  c6_Madd_contador_ceros_addsub0018_cy_1_13_SW1 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => rest_norm_M(6),
      I1 => rest_norm_M(7),
      I2 => rest_norm_M(9),
      O => N364
    );
  c6_Madd_contador_ceros_addsub0018_cy_1_13 : LUT4
    generic map(
      INIT => X"C9CC"
    )
    port map (
      I0 => N364,
      I1 => c6_Madd_contador_ceros_addsub0012_cy_0_Q,
      I2 => rest_norm_M(8),
      I3 => c6_flag_mux0013,
      O => c6_N361
    );
  c6_contador_ceros_mux0036_3_1_SW0 : LUT4
    generic map(
      INIT => X"1F01"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0016_cy_1_151_1198,
      I1 => c6_Madd_contador_ceros_addsub0016_cy_1_113_1197,
      I2 => c6_Madd_contador_ceros_addsub0016_lut(2),
      I3 => c6_N28,
      O => N366
    );
  c6_contador_ceros_mux0036_3_1 : LUT4
    generic map(
      INIT => X"AAA9"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0016_lut(3),
      I1 => c6_contador_ceros_mux0036_4_0,
      I2 => rest_norm_M(6),
      I3 => N366,
      O => c6_Madd_contador_ceros_addsub0020_lut(3)
    );
  c6_contador_ceros_mux0036_4_77 : LUT4
    generic map(
      INIT => X"C9CC"
    )
    port map (
      I0 => N366,
      I1 => c6_Madd_contador_ceros_addsub0014_cy(3),
      I2 => rest_norm_M(6),
      I3 => c6_Madd_contador_ceros_addsub0016_lut(3),
      O => c6_contador_ceros_mux0036_4_77_1385
    );
  c6_contador_ceros_mux0034_6_1_SW1 : LUT4
    generic map(
      INIT => X"17F7"
    )
    port map (
      I0 => c6_N1391,
      I1 => c6_Madd_contador_ceros_addsub0014_lut(3),
      I2 => c6_Madd_contador_ceros_addsub0014_lut(2),
      I3 => c6_N37,
      O => N370
    );
  c6_contador_ceros_mux0034_6_1 : LUT4
    generic map(
      INIT => X"AB02"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0014_cy(3),
      I1 => c6_N471,
      I2 => N370,
      I3 => c6_Madd_contador_ceros_addsub0014_lut(4),
      O => c6_N17
    );
  c6_contador_ceros_mux0034_5_70 : LUT4
    generic map(
      INIT => X"B9A8"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0014_lut(5),
      I1 => c6_contador_ceros_mux0036_4_0,
      I2 => N302,
      I3 => c6_N17,
      O => c6_Madd_contador_ceros_addsub0018_lut(5)
    );
  c6_contador_ceros_mux0028_0_SW0 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => rest_norm_M(9),
      I1 => rest_norm_M(10),
      I2 => rest_norm_M(12),
      O => N374
    );
  c6_contador_ceros_mux0028_0_Q : LUT4
    generic map(
      INIT => X"AAA9"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0011_cy(0),
      I1 => c6_N150,
      I2 => rest_norm_M(11),
      I3 => N374,
      O => c6_Madd_contador_ceros_addsub0012_cy_0_Q
    );
  c6_contador_ceros_mux0038_7_27_SW0_SW0 : LUT4
    generic map(
      INIT => X"51F7"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0018_cy(4),
      I1 => c6_N151,
      I2 => rest_norm_M(4),
      I3 => c6_Madd_contador_ceros_addsub0018_lut(5),
      O => N376
    );
  c6_contador_ceros_mux0038_7_27_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => c6_N7,
      I1 => rest_norm_M(7),
      I2 => N376,
      O => N318
    );
  c6_contador_ceros_mux0036_2_SW1 : LUT4
    generic map(
      INIT => X"5595"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0016_cy(1),
      I1 => c6_Madd_contador_ceros_addsub0016_lut(1),
      I2 => c6_N361,
      I3 => rest_norm_M(5),
      O => N378
    );
  c6_contador_ceros_mux0036_2_Q : LUT4
    generic map(
      INIT => X"AAA9"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0016_lut(2),
      I1 => c6_contador_ceros_mux0036_4_0,
      I2 => rest_norm_M(6),
      I3 => N378,
      O => c6_Madd_contador_ceros_addsub0020_lut(2)
    );
  c6_Madd_contador_ceros_addsub0014_cy_3_172_SW0 : LUT4
    generic map(
      INIT => X"FFBF"
    )
    port map (
      I0 => rest_norm_M(8),
      I1 => c6_Madd_contador_ceros_addsub0014_cy_3_141_1181,
      I2 => c6_flag_mux0013,
      I3 => rest_norm_M(9),
      O => N380
    );
  c6_Madd_contador_ceros_addsub0014_cy_3_172 : LUT4
    generic map(
      INIT => X"8C04"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0012_cy_0_Q,
      I1 => c6_Madd_contador_ceros_addsub0014_cy_3_169_1182,
      I2 => N380,
      I3 => c6_N661,
      O => c6_Madd_contador_ceros_addsub0014_cy(3)
    );
  c6_mantisa_normalizada_9_1 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => c6_Mcompar_mantisa_aux_cmp_lt0000_cy_7_1,
      I1 => c6_mantisa_aux(9),
      I2 => c6_Mcompar_error_cmp_gt0000_cy(7),
      O => Mantisa_resta_9_OBUF_202
    );
  c6_mantisa_normalizada_8_1 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => c6_Mcompar_mantisa_aux_cmp_lt0000_cy_7_1,
      I1 => c6_mantisa_aux(8),
      I2 => c6_Mcompar_error_cmp_gt0000_cy(7),
      O => Mantisa_resta_8_OBUF_201
    );
  c6_mantisa_normalizada_7_1 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => c6_Mcompar_mantisa_aux_cmp_lt0000_cy_7_1,
      I1 => c6_mantisa_aux(7),
      I2 => c6_Mcompar_error_cmp_gt0000_cy(7),
      O => Mantisa_resta_7_OBUF_200
    );
  c6_mantisa_normalizada_6_1 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => c6_Mcompar_mantisa_aux_cmp_lt0000_cy_7_1,
      I1 => c6_mantisa_aux(6),
      I2 => c6_Mcompar_error_cmp_gt0000_cy(7),
      O => Mantisa_resta_6_OBUF_199
    );
  c6_mantisa_normalizada_5_1 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => c6_Mcompar_mantisa_aux_cmp_lt0000_cy_7_1,
      I1 => c6_mantisa_aux(5),
      I2 => c6_Mcompar_error_cmp_gt0000_cy(7),
      O => Mantisa_resta_5_OBUF_198
    );
  c6_mantisa_normalizada_4_1 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => c6_Mcompar_mantisa_aux_cmp_lt0000_cy_7_1,
      I1 => c6_mantisa_aux(4),
      I2 => c6_Mcompar_error_cmp_gt0000_cy(7),
      O => Mantisa_resta_4_OBUF_197
    );
  c6_mantisa_normalizada_3_1 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => c6_Mcompar_mantisa_aux_cmp_lt0000_cy_7_1,
      I1 => c6_mantisa_aux(3),
      I2 => c6_Mcompar_error_cmp_gt0000_cy(7),
      O => Mantisa_resta_3_OBUF_196
    );
  c6_mantisa_normalizada_2_1 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => c6_Mcompar_mantisa_aux_cmp_lt0000_cy_7_1,
      I1 => c6_mantisa_aux(2),
      I2 => c6_Mcompar_error_cmp_gt0000_cy(7),
      O => Mantisa_resta_2_OBUF_195
    );
  c6_mantisa_normalizada_22_1 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => c6_Mcompar_mantisa_aux_cmp_lt0000_cy_7_1,
      I1 => c6_mantisa_aux(22),
      I2 => c6_Mcompar_error_cmp_gt0000_cy(7),
      O => Mantisa_resta_22_OBUF_194
    );
  c6_mantisa_normalizada_21_1 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => c6_Mcompar_mantisa_aux_cmp_lt0000_cy_7_1,
      I1 => c6_mantisa_aux(21),
      I2 => c6_Mcompar_error_cmp_gt0000_cy(7),
      O => Mantisa_resta_21_OBUF_193
    );
  c6_mantisa_normalizada_20_1 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => c6_Mcompar_mantisa_aux_cmp_lt0000_cy_7_1,
      I1 => c6_mantisa_aux(20),
      I2 => c6_Mcompar_error_cmp_gt0000_cy(7),
      O => Mantisa_resta_20_OBUF_192
    );
  c6_mantisa_normalizada_1_1 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => c6_Mcompar_mantisa_aux_cmp_lt0000_cy_7_1,
      I1 => c6_mantisa_aux(1),
      I2 => c6_Mcompar_error_cmp_gt0000_cy(7),
      O => Mantisa_resta_1_OBUF_191
    );
  c6_mantisa_normalizada_19_1 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => c6_Mcompar_mantisa_aux_cmp_lt0000_cy_7_1,
      I1 => c6_mantisa_aux(19),
      I2 => c6_Mcompar_error_cmp_gt0000_cy(7),
      O => Mantisa_resta_19_OBUF_190
    );
  c6_mantisa_normalizada_18_1 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => c6_Mcompar_mantisa_aux_cmp_lt0000_cy_7_1,
      I1 => c6_mantisa_aux(18),
      I2 => c6_Mcompar_error_cmp_gt0000_cy(7),
      O => Mantisa_resta_18_OBUF_189
    );
  c6_mantisa_normalizada_17_1 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => c6_Mcompar_mantisa_aux_cmp_lt0000_cy_7_1,
      I1 => c6_mantisa_aux(17),
      I2 => c6_Mcompar_error_cmp_gt0000_cy(7),
      O => Mantisa_resta_17_OBUF_188
    );
  c6_mantisa_normalizada_16_1 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => c6_Mcompar_mantisa_aux_cmp_lt0000_cy_7_1,
      I1 => c6_mantisa_aux(16),
      I2 => c6_Mcompar_error_cmp_gt0000_cy(7),
      O => Mantisa_resta_16_OBUF_187
    );
  c6_mantisa_normalizada_15_1 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => c6_Mcompar_mantisa_aux_cmp_lt0000_cy_7_1,
      I1 => c6_mantisa_aux(15),
      I2 => c6_Mcompar_error_cmp_gt0000_cy(7),
      O => Mantisa_resta_15_OBUF_186
    );
  c6_mantisa_normalizada_14_1 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => c6_Mcompar_mantisa_aux_cmp_lt0000_cy_7_1,
      I1 => c6_mantisa_aux(14),
      I2 => c6_Mcompar_error_cmp_gt0000_cy(7),
      O => Mantisa_resta_14_OBUF_185
    );
  c6_mantisa_normalizada_13_1 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => c6_Mcompar_mantisa_aux_cmp_lt0000_cy_7_1,
      I1 => c6_mantisa_aux(13),
      I2 => c6_Mcompar_error_cmp_gt0000_cy(7),
      O => Mantisa_resta_13_OBUF_184
    );
  c6_mantisa_normalizada_12_1 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => c6_Mcompar_mantisa_aux_cmp_lt0000_cy_7_1,
      I1 => c6_mantisa_aux(12),
      I2 => c6_Mcompar_error_cmp_gt0000_cy(7),
      O => Mantisa_resta_12_OBUF_183
    );
  c6_mantisa_normalizada_11_1 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => c6_Mcompar_mantisa_aux_cmp_lt0000_cy_7_1,
      I1 => c6_mantisa_aux(11),
      I2 => c6_Mcompar_error_cmp_gt0000_cy(7),
      O => Mantisa_resta_11_OBUF_182
    );
  c6_mantisa_normalizada_10_1 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => c6_Mcompar_mantisa_aux_cmp_lt0000_cy_7_1,
      I1 => c6_mantisa_aux(10),
      I2 => c6_Mcompar_error_cmp_gt0000_cy(7),
      O => Mantisa_resta_10_OBUF_181
    );
  c6_mantisa_normalizada_0_1 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => c6_Mcompar_mantisa_aux_cmp_lt0000_cy_7_1,
      I1 => c6_mantisa_aux(0),
      I2 => c6_Mcompar_error_cmp_gt0000_cy(7),
      O => Mantisa_resta_0_OBUF_180
    );
  c6_exponente_out_7_1 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => c6_Mcompar_mantisa_aux_cmp_lt0000_cy_7_1,
      I1 => c6_exponente_out_addsub0000(7),
      I2 => c6_Mcompar_error_cmp_gt0000_cy(7),
      O => Exponente_resta_7_OBUF_47
    );
  c6_exponente_out_6_1 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => c6_Mcompar_mantisa_aux_cmp_lt0000_cy_7_1,
      I1 => c6_exponente_out_addsub0000(6),
      I2 => c6_Mcompar_error_cmp_gt0000_cy(7),
      O => Exponente_resta_6_OBUF_46
    );
  c6_exponente_out_5_1 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => c6_Mcompar_mantisa_aux_cmp_lt0000_cy_7_1,
      I1 => c6_exponente_out_addsub0000(5),
      I2 => c6_Mcompar_error_cmp_gt0000_cy(7),
      O => Exponente_resta_5_OBUF_45
    );
  c6_exponente_out_4_1 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => c6_Mcompar_mantisa_aux_cmp_lt0000_cy_7_1,
      I1 => c6_exponente_out_addsub0000(4),
      I2 => c6_Mcompar_error_cmp_gt0000_cy(7),
      O => Exponente_resta_4_OBUF_44
    );
  c6_exponente_out_3_1 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => c6_Mcompar_mantisa_aux_cmp_lt0000_cy_7_1,
      I1 => c6_exponente_out_addsub0000(3),
      I2 => c6_Mcompar_error_cmp_gt0000_cy(7),
      O => Exponente_resta_3_OBUF_43
    );
  c6_exponente_out_2_1 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => c6_Mcompar_mantisa_aux_cmp_lt0000_cy_7_1,
      I1 => c6_exponente_out_addsub0000(2),
      I2 => c6_Mcompar_error_cmp_gt0000_cy(7),
      O => Exponente_resta_2_OBUF_42
    );
  c6_exponente_out_1_1 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => c6_Mcompar_mantisa_aux_cmp_lt0000_cy_7_1,
      I1 => c6_exponente_out_addsub0000(1),
      I2 => c6_Mcompar_error_cmp_gt0000_cy(7),
      O => Exponente_resta_1_OBUF_41
    );
  c6_exponente_out_0_1 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => c6_Mcompar_mantisa_aux_cmp_lt0000_cy_7_1,
      I1 => c6_exponente_out_addsub0000(0),
      I2 => c6_Mcompar_error_cmp_gt0000_cy(7),
      O => Exponente_resta_0_OBUF_40
    );
  c6_mantisa_aux_shift0001_22_41 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => c6_contador_ceros_mux0046_4_1,
      I1 => c6_mantisa_aux_or0000,
      I2 => c6_contador_ceros_mux0046_2_1,
      I3 => c6_contador_ceros_mux0046_3_1,
      O => c6_N158
    );
  c6_mantisa_aux_shift0001_17_21 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => c6_contador_ceros_mux0046_4_1,
      I1 => c6_mantisa_aux_or000012_1435,
      I2 => c6_mantisa_aux_or000022_1436,
      I3 => c6_mantisa_aux_or0000103_1434,
      O => c6_N160
    );
  c0_e_max_or00011 : LUT4
    generic map(
      INIT => X"FBBB"
    )
    port map (
      I0 => c0_N6,
      I1 => c0_Mcompar_mux0000_cmp_lt0000_cy(7),
      I2 => c0_Mcompar_B_despl_cmp_lt0000_cy(22),
      I3 => c0_B_despl_cmp_eq00001,
      O => c0_e_max_or0001
    );
  c0_B_despl_or000111 : LUT3
    generic map(
      INIT => X"FB"
    )
    port map (
      I0 => c0_mux0000_and0001,
      I1 => c0_Mcompar_mux0000_cmp_gt0000_cy(7),
      I2 => c0_mux0000_and0000,
      O => c0_N6
    );
  c0_B_despl_or00061 : LUT4
    generic map(
      INIT => X"FFBF"
    )
    port map (
      I0 => c0_B_despl_and0000,
      I1 => c0_Mcompar_mux0000_cmp_gt0000_cy(7),
      I2 => c0_Mcompar_mux0000_cmp_lt0000_cy(7),
      I3 => c0_B_despl_or0003_595,
      O => c0_B_despl_or0006
    );
  c0_mux0002_mux0000_6_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => c0_Mcompar_mux0000_cmp_gt0000_cy(7),
      I1 => Exponente_1_6_IBUF_14,
      I2 => Exponente_2_6_IBUF_30,
      O => c0_mux0002_mux0000(6)
    );
  c0_mux0002_mux0000_5_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => c0_Mcompar_mux0000_cmp_gt0000_cy(7),
      I1 => Exponente_1_5_IBUF_13,
      I2 => Exponente_2_5_IBUF_29,
      O => c0_mux0002_mux0000(5)
    );
  c0_mux0002_mux0000_4_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => c0_Mcompar_mux0000_cmp_gt0000_cy(7),
      I1 => Exponente_1_4_IBUF_12,
      I2 => Exponente_2_4_IBUF_28,
      O => c0_mux0002_mux0000(4)
    );
  c0_mux0002_mux0000_3_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => c0_Mcompar_mux0000_cmp_gt0000_cy(7),
      I1 => Exponente_1_3_IBUF_11,
      I2 => Exponente_2_3_IBUF_27,
      O => c0_mux0002_mux0000(3)
    );
  c0_mux0002_mux0000_2_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => c0_Mcompar_mux0000_cmp_gt0000_cy(7),
      I1 => Exponente_1_2_IBUF_10,
      I2 => Exponente_2_2_IBUF_26,
      O => c0_mux0002_mux0000(2)
    );
  c0_mux0002_mux0000_1_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => c0_Mcompar_mux0000_cmp_gt0000_cy(7),
      I1 => Exponente_1_1_IBUF_9,
      I2 => Exponente_2_1_IBUF_25,
      O => c0_mux0002_mux0000(1)
    );
  c6_contador_ceros_mux0040_1_1 : LUT4
    generic map(
      INIT => X"C9CC"
    )
    port map (
      I0 => rest_norm_M(4),
      I1 => c6_Madd_contador_ceros_addsub0020_lut(1),
      I2 => c6_N126,
      I3 => c6_N02,
      O => c6_Madd_contador_ceros_addsub0019_lut(1)
    );
  c6_Madd_contador_ceros_addsub0015_cy_3_1151_SW0 : LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      I0 => c6_N96,
      I1 => N326,
      I2 => c6_Madd_contador_ceros_addsub0007_lut(1),
      I3 => c6_Madd_contador_ceros_addsub0011_cy(0),
      O => N382
    );
  c6_Madd_contador_ceros_addsub0015_cy_3_1151 : LUT4
    generic map(
      INIT => X"AEAA"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0015_cy_3_1136_1191,
      I1 => c6_N153,
      I2 => rest_norm_M(18),
      I3 => N382,
      O => c6_Madd_contador_ceros_addsub0015_cy(3)
    );
  c6_Madd_contador_ceros_addsub0012_cy_2_1521 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => rest_norm_M(11),
      I1 => rest_norm_M(12),
      I2 => c6_N150,
      I3 => c6_Madd_contador_ceros_addsub0011_cy(0),
      O => c6_N1551
    );
  c6_Madd_contador_ceros_addsub0016_cy_1_113_SW0 : LUT4
    generic map(
      INIT => X"FFAB"
    )
    port map (
      I0 => rest_norm_M(9),
      I1 => c6_N5,
      I2 => rest_norm_M(7),
      I3 => rest_norm_M(8),
      O => N384
    );
  c6_Madd_contador_ceros_addsub0016_cy_1_113 : LUT4
    generic map(
      INIT => X"8088"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0012_cy_0_Q,
      I1 => c6_Madd_contador_ceros_addsub0014_lut(1),
      I2 => N384,
      I3 => c6_flag_mux0013,
      O => c6_Madd_contador_ceros_addsub0016_cy_1_113_1197
    );
  c6_Madd_contador_ceros_addsub0016_cy_1_159 : LUT4
    generic map(
      INIT => X"AAAB"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0016_cy_1_113_1197,
      I1 => c6_N155,
      I2 => rest_norm_M(8),
      I3 => N268,
      O => c6_Madd_contador_ceros_addsub0016_cy(1)
    );
  c6_contador_ceros_mux0042_6_31_SW1 : LUT4
    generic map(
      INIT => X"FF4D"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0017_cy(4),
      I1 => c6_N49,
      I2 => c6_Madd_contador_ceros_addsub0017_lut(5),
      I3 => rest_norm_M(3),
      O => N386
    );
  c6_contador_ceros_mux0042_6_31 : LUT4
    generic map(
      INIT => X"AB01"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0017_lut(6),
      I1 => c6_N23,
      I2 => N386,
      I3 => N171,
      O => c6_Madd_contador_ceros_addsub0021_lut(6)
    );
  c6_contador_ceros_mux0030_3_SW0 : LUT3
    generic map(
      INIT => X"39"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0012_cy_2_Q,
      I1 => c6_Madd_contador_ceros_addsub0015_cy(2),
      I2 => rest_norm_M(8),
      O => N388
    );
  c6_contador_ceros_mux0030_3_Q : LUT4
    generic map(
      INIT => X"C9CC"
    )
    port map (
      I0 => N388,
      I1 => c6_Madd_contador_ceros_addsub0015_lut(3),
      I2 => rest_norm_M(9),
      I3 => c6_flag_mux0013,
      O => c6_Madd_contador_ceros_addsub0014_lut(3)
    );
  c6_Madd_contador_ceros_addsub0018_cy_4_165_SW0 : LUT4
    generic map(
      INIT => X"2D78"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0014_lut(2),
      I1 => c6_N37,
      I2 => c6_N471,
      I3 => c6_N1391,
      O => N306
    );
  c0_Msub_mux0002_addsub0000_lut_0_Q : LUT4
    generic map(
      INIT => X"D287"
    )
    port map (
      I0 => c0_Mcompar_mux0000_cmp_gt0000_cy(7),
      I1 => Exponente_1_0_IBUF_8,
      I2 => c0_mux0002_mux0000(0),
      I3 => Exponente_2_0_IBUF_24,
      O => c0_Msub_mux0002_addsub0000_lut(0)
    );
  c6_contador_ceros_mux0032_1_SW2 : LUT4
    generic map(
      INIT => X"FFEF"
    )
    port map (
      I0 => rest_norm_M(9),
      I1 => rest_norm_M(8),
      I2 => c6_flag_mux0013,
      I3 => rest_norm_M(7),
      O => c6_contador_ceros_mux0036_4_0
    );
  c0_e_max_7_and00001 : LUT4
    generic map(
      INIT => X"AA8A"
    )
    port map (
      I0 => c0_e_max_mux0009(7),
      I1 => c0_N6,
      I2 => c0_Mcompar_mux0000_cmp_lt0000_cy(7),
      I3 => c0_B_despl_and0000,
      O => c0_e_max_7_and0000
    );
  c0_e_max_6_and00001 : LUT4
    generic map(
      INIT => X"AA8A"
    )
    port map (
      I0 => c0_e_max_mux0009(6),
      I1 => c0_N6,
      I2 => c0_Mcompar_mux0000_cmp_lt0000_cy(7),
      I3 => c0_B_despl_and0000,
      O => c0_e_max_6_and0000
    );
  c0_e_max_5_and00001 : LUT4
    generic map(
      INIT => X"AA8A"
    )
    port map (
      I0 => c0_e_max_mux0009(5),
      I1 => c0_N6,
      I2 => c0_Mcompar_mux0000_cmp_lt0000_cy(7),
      I3 => c0_B_despl_and0000,
      O => c0_e_max_5_and0000
    );
  c0_e_max_4_and00001 : LUT4
    generic map(
      INIT => X"AA8A"
    )
    port map (
      I0 => c0_e_max_mux0009(4),
      I1 => c0_N6,
      I2 => c0_Mcompar_mux0000_cmp_lt0000_cy(7),
      I3 => c0_B_despl_and0000,
      O => c0_e_max_4_and0000
    );
  c0_e_max_3_and00001 : LUT4
    generic map(
      INIT => X"AA8A"
    )
    port map (
      I0 => c0_e_max_mux0009(3),
      I1 => c0_N6,
      I2 => c0_Mcompar_mux0000_cmp_lt0000_cy(7),
      I3 => c0_B_despl_and0000,
      O => c0_e_max_3_and0000
    );
  c0_e_max_2_and00001 : LUT4
    generic map(
      INIT => X"AA8A"
    )
    port map (
      I0 => c0_e_max_mux0009(2),
      I1 => c0_N6,
      I2 => c0_Mcompar_mux0000_cmp_lt0000_cy(7),
      I3 => c0_B_despl_and0000,
      O => c0_e_max_2_and0000
    );
  c0_e_max_1_and00001 : LUT4
    generic map(
      INIT => X"AA8A"
    )
    port map (
      I0 => c0_e_max_mux0009(1),
      I1 => c0_N6,
      I2 => c0_Mcompar_mux0000_cmp_lt0000_cy(7),
      I3 => c0_B_despl_and0000,
      O => c0_e_max_1_and0000
    );
  c0_e_max_0_and00001 : LUT4
    generic map(
      INIT => X"AA8A"
    )
    port map (
      I0 => c0_e_max_mux0009(0),
      I1 => c0_N6,
      I2 => c0_Mcompar_mux0000_cmp_lt0000_cy(7),
      I3 => c0_B_despl_and0000,
      O => c0_e_max_0_and0000
    );
  c0_A_max_mux0009_0_2_SW0 : LUT4
    generic map(
      INIT => X"FFEF"
    )
    port map (
      I0 => c0_mux0000_and0000,
      I1 => c0_mux0000_and0001,
      I2 => c0_Mcompar_mux0000_cmp_gt0000_cy(7),
      I3 => c0_B_despl_or0003_595,
      O => N106
    );
  c6_contador_ceros_mux0036_4_100_SW0 : LUT4
    generic map(
      INIT => X"5655"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0014_cy(3),
      I1 => N366,
      I2 => rest_norm_M(6),
      I3 => c6_Madd_contador_ceros_addsub0016_lut(3),
      O => N332
    );
  c6_contador_ceros_mux0030_2_189_SW0 : LUT4
    generic map(
      INIT => X"BB06"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0007_cy(0),
      I1 => c6_Madd_contador_ceros_addsub0007_lut(1),
      I2 => N304,
      I3 => rest_norm_M(11),
      O => N392
    );
  c6_contador_ceros_mux0030_2_189 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => c6_N40,
      I1 => c6_contador_ceros_mux0030_2_173_1375,
      I2 => rest_norm_M(12),
      I3 => N392,
      O => c6_contador_ceros_mux0030_2_189_1376
    );
  c6_contador_ceros_mux0040_4_31 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => rest_norm_M(3),
      I1 => rest_norm_M(4),
      I2 => c6_N126,
      O => c6_N87
    );
  c6_Madd_contador_ceros_addsub0016_cy_1_151 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => rest_norm_M(9),
      I1 => rest_norm_M(8),
      I2 => N268,
      I3 => c6_flag_mux0013,
      O => c6_Madd_contador_ceros_addsub0016_cy_1_151_1198
    );
  c6_Madd_contador_ceros_addsub0021_cy_5_166_SW1 : LUT4
    generic map(
      INIT => X"FFEF"
    )
    port map (
      I0 => rest_norm_M(3),
      I1 => c6_N126,
      I2 => c6_Madd_contador_ceros_addsub0020_lut(4),
      I3 => rest_norm_M(4),
      O => N394
    );
  c6_Madd_contador_ceros_addsub0021_cy_5_166 : LUT4
    generic map(
      INIT => X"0009"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0020_cy(0),
      I1 => rest_norm_M(2),
      I2 => N176,
      I3 => N394,
      O => c6_Madd_contador_ceros_addsub0021_cy_5_166_1224
    );
  c6_mantisa_aux_shift0001_21_111 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => rest_norm_M(2),
      I1 => rest_norm_M(3),
      I2 => rest_norm_M(4),
      I3 => c6_N126,
      O => c6_N64
    );
  c6_Madd_contador_ceros_addsub0017_cy_4_111 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => rest_norm_M(4),
      I1 => rest_norm_M(5),
      I2 => rest_norm_M(6),
      I3 => c6_contador_ceros_mux0036_4_0,
      O => c6_N23
    );
  c1_num_desp_aux_1_1 : LD
    port map (
      D => c0_e_dif(1),
      G => c1_num_desp_aux_cmp_le0000,
      Q => c1_num_desp_aux_1_1_866
    );
  c1_num_desp_aux_0_1 : LD
    port map (
      D => c0_e_dif(0),
      G => c1_num_desp_aux_cmp_le0000,
      Q => c1_num_desp_aux_0_1_862
    );
  c1_num_desp_aux_0_2 : LD
    port map (
      D => c0_e_dif(0),
      G => c1_num_desp_aux_cmp_le0000,
      Q => c1_num_desp_aux_0_2_863
    );
  c1_num_desp_aux_0_3 : LD
    port map (
      D => c0_e_dif(0),
      G => c1_num_desp_aux_cmp_le0000,
      Q => c1_num_desp_aux_0_3_864
    );
  c0_B_despl_cmp_eq0000_BUFG : BUFG
    port map (
      I => c0_B_despl_cmp_eq00001,
      O => c0_B_despl_cmp_eq0000
    );
  c2_Exp_max_rest_cmp_eq0000_BUFG : BUFG
    port map (
      I => c2_Exp_max_rest_cmp_eq00001_954,
      O => c2_Exp_max_rest_cmp_eq0000
    );
  c2_Mantisa_desp_sum_not0001_BUFG : BUFG
    port map (
      I => c2_Mantisa_desp_sum_not00011_1012,
      O => c2_Mantisa_desp_sum_not0001
    );
  c1_num_desp_aux_cmp_le0000_BUFG : BUFG
    port map (
      I => c1_num_desp_aux_cmp_le00001,
      O => c1_num_desp_aux_cmp_le0000
    );
  c6_Mcompar_mantisa_aux_cmp_lt0000_cy_7_BUFG : BUFG
    port map (
      I => c6_Mcompar_mantisa_aux_cmp_lt0000_cy_7_1,
      O => c6_Mcompar_mantisa_aux_cmp_lt0000_cy(7)
    );
  c0_Mcompar_B_despl_cmp_lt0000_cy_22_inv_INV_0 : INV
    port map (
      I => c0_Mcompar_B_despl_cmp_lt0000_cy(22),
      O => c0_B_despl_cmp_lt0000
    );
  c6_Mcompar_mantisa_aux_cmp_lt0000_cy_7_inv_INV_0 : INV
    port map (
      I => c6_Mcompar_mantisa_aux_cmp_lt0000_cy(7),
      O => c6_mantisa_aux_cmp_lt0000
    );
  c6_mantisa_aux_shift0001_22_174 : MUXF5
    port map (
      I0 => N396,
      I1 => N397,
      S => c6_contador_ceros_mux0046_3_1,
      O => c6_N6
    );
  c6_mantisa_aux_shift0001_22_174_F : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => c6_contador_ceros_mux0046_4_1,
      I1 => c6_mantisa_aux_shift0001_22_128,
      I2 => c6_N44,
      O => N396
    );
  c6_mantisa_aux_shift0001_22_174_G : LUT4
    generic map(
      INIT => X"5140"
    )
    port map (
      I0 => c6_contador_ceros_mux0046_4_1,
      I1 => c6_contador_ceros_mux0046_1_1,
      I2 => N28,
      I3 => N27,
      O => N397
    );
  c6_mantisa_aux_shift0001_20_374 : MUXF5
    port map (
      I0 => N398,
      I1 => N399,
      S => c6_contador_ceros_mux0046_3_1,
      O => c6_N75
    );
  c6_mantisa_aux_shift0001_20_374_F : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => c6_contador_ceros_mux0046_4_1,
      I1 => c6_mantisa_aux_shift0001_20_328_1477,
      I2 => c6_N162,
      O => N398
    );
  c6_mantisa_aux_shift0001_20_374_G : LUT4
    generic map(
      INIT => X"5140"
    )
    port map (
      I0 => c6_contador_ceros_mux0046_4_1,
      I1 => c6_contador_ceros_mux0046_0_1_1391,
      I2 => c6_N921,
      I3 => c6_N1210,
      O => N399
    );
  c6_mantisa_aux_shift0001_20_82 : MUXF5
    port map (
      I0 => N400,
      I1 => N401,
      S => c6_contador_ceros_mux0046_2_1,
      O => c6_mantisa_aux_shift0001(20)
    );
  c6_mantisa_aux_shift0001_20_82_F : LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      I0 => c6_mantisa_aux_shift0001_20_42_1479,
      I1 => c6_N42,
      I2 => c6_N160,
      I3 => c6_contador_ceros_mux0046_3_1,
      O => N400
    );
  c6_mantisa_aux_shift0001_20_82_G : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => c6_mantisa_aux_or000012_1435,
      I1 => c6_mantisa_aux_or000022_1436,
      I2 => c6_mantisa_aux_or0000103_1434,
      I3 => c6_N75,
      O => N401
    );
  c6_contador_ceros_mux0046_2_Q : MUXF5
    port map (
      I0 => N402,
      I1 => N403,
      S => c6_Madd_contador_ceros_addsub0019_lut(2),
      O => c6_contador_ceros_mux0046_2_1
    );
  c6_contador_ceros_mux0046_2_F : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => rest_norm_M(2),
      I1 => c6_N87,
      I2 => c6_N63,
      O => N402
    );
  c6_contador_ceros_mux0046_2_G : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => c6_N89,
      I1 => c6_Madd_contador_ceros_addsub0020_lut(1),
      I2 => c6_N271,
      O => N403
    );
  c6_Madd_contador_ceros_addsub0015_cy_3_1136 : MUXF5
    port map (
      I0 => N404,
      I1 => N405,
      S => c6_Madd_contador_ceros_addsub0007_lut(3),
      O => c6_Madd_contador_ceros_addsub0015_cy_3_1136_1191
    );
  c6_Madd_contador_ceros_addsub0015_cy_3_1136_F : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => rest_norm_M(12),
      I1 => c6_Madd_contador_ceros_addsub0007_cy(0),
      I2 => c6_Madd_contador_ceros_addsub0015_cy_3_191_1193,
      I3 => c6_Madd_contador_ceros_addsub0015_cy_3_1133_1190,
      O => N404
    );
  c6_Madd_contador_ceros_addsub0015_cy_3_1136_G : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0015_cy_3_1133_1190,
      I1 => rest_norm_M(12),
      I2 => rest_norm_M(11),
      I3 => c6_Madd_contador_ceros_addsub0007_cy(0),
      O => N405
    );
  c1_num_out_aux_shift0001_9_48 : MUXF5
    port map (
      I0 => N406,
      I1 => N407,
      S => c1_num_desp_aux(2),
      O => c1_num_out_aux_shift0001(9)
    );
  c1_num_out_aux_shift0001_9_48_F : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => c1_num_out_aux_shift0001_10_43,
      I1 => c1_num_desp_aux(3),
      I2 => c1_Sh9_860,
      I3 => c1_Sh17_844,
      O => N406
    );
  c1_num_out_aux_shift0001_9_48_G : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => c1_num_out_aux_shift0001_10_43,
      I1 => c1_num_desp_aux(3),
      I2 => c1_Sh13_840,
      I3 => c1_Sh21_848,
      O => N407
    );
  c1_num_out_aux_shift0001_8_48 : MUXF5
    port map (
      I0 => N408,
      I1 => N409,
      S => c1_num_desp_aux(2),
      O => c1_num_out_aux_shift0001(8)
    );
  c1_num_out_aux_shift0001_8_48_F : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => c1_num_out_aux_shift0001_10_43,
      I1 => c1_num_desp_aux(3),
      I2 => c1_Sh8_859,
      I3 => c1_Sh16_843,
      O => N408
    );
  c1_num_out_aux_shift0001_8_48_G : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => c1_num_out_aux_shift0001_10_43,
      I1 => c1_num_desp_aux(3),
      I2 => c1_Sh12_839,
      I3 => c1_Sh20_847,
      O => N409
    );
  c1_num_out_aux_shift0001_11_48 : MUXF5
    port map (
      I0 => N410,
      I1 => N411,
      S => c1_num_desp_aux(2),
      O => c1_num_out_aux_shift0001(11)
    );
  c1_num_out_aux_shift0001_11_48_F : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => c1_num_out_aux_shift0001_10_43,
      I1 => c1_num_desp_aux(3),
      I2 => c1_Sh11_838,
      I3 => c1_Sh19_846,
      O => N410
    );
  c1_num_out_aux_shift0001_11_48_G : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => c1_num_out_aux_shift0001_10_43,
      I1 => c1_num_desp_aux(3),
      I2 => c1_Sh15_842,
      I3 => c1_Sh23,
      O => N411
    );
  c1_num_out_aux_shift0001_10_48 : MUXF5
    port map (
      I0 => N412,
      I1 => N413,
      S => c1_num_desp_aux(2),
      O => c1_num_out_aux_shift0001(10)
    );
  c1_num_out_aux_shift0001_10_48_F : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => c1_num_out_aux_shift0001_10_43,
      I1 => c1_num_desp_aux(3),
      I2 => c1_Sh10_837,
      I3 => c1_Sh18_845,
      O => N412
    );
  c1_num_out_aux_shift0001_10_48_G : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => c1_num_out_aux_shift0001_10_43,
      I1 => c1_num_desp_aux(3),
      I2 => c1_Sh14_841,
      I3 => c1_Sh22,
      O => N413
    );
  c1_num_out_aux_shift0001_15_36 : MUXF5
    port map (
      I0 => N414,
      I1 => N415,
      S => c1_num_desp_aux(3),
      O => c1_num_out_aux_shift0001(15)
    );
  c1_num_out_aux_shift0001_15_36_F : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => c1_num_out_aux_shift0001_10_43,
      I1 => c1_num_desp_aux(2),
      I2 => c1_Sh15_842,
      I3 => c1_Sh19_846,
      O => N414
    );
  c1_num_out_aux_shift0001_15_36_G : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => c1_num_out_aux_shift0001_10_43,
      I1 => c1_Sh23,
      I2 => c1_num_desp_aux(2),
      O => N415
    );
  c1_num_out_aux_shift0001_14_36 : MUXF5
    port map (
      I0 => N416,
      I1 => N417,
      S => c1_num_desp_aux(3),
      O => c1_num_out_aux_shift0001(14)
    );
  c1_num_out_aux_shift0001_14_36_F : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => c1_num_out_aux_shift0001_10_43,
      I1 => c1_num_desp_aux(2),
      I2 => c1_Sh14_841,
      I3 => c1_Sh18_845,
      O => N416
    );
  c1_num_out_aux_shift0001_14_36_G : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => c1_num_out_aux_shift0001_10_43,
      I1 => c1_Sh22,
      I2 => c1_num_desp_aux(2),
      O => N417
    );
  c1_num_out_aux_shift0001_12_36 : MUXF5
    port map (
      I0 => N418,
      I1 => N419,
      S => c1_num_desp_aux(3),
      O => c1_num_out_aux_shift0001(12)
    );
  c1_num_out_aux_shift0001_12_36_F : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => c1_num_out_aux_shift0001_10_43,
      I1 => c1_num_desp_aux(2),
      I2 => c1_Sh12_839,
      I3 => c1_Sh16_843,
      O => N418
    );
  c1_num_out_aux_shift0001_12_36_G : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => c1_num_out_aux_shift0001_10_43,
      I1 => c1_Sh20_847,
      I2 => c1_num_desp_aux(2),
      O => N419
    );
  c0_A_max_mux0009_0_3 : MUXF5
    port map (
      I0 => N420,
      I1 => N421,
      S => c0_Mcompar_mux0000_cmp_lt0000_cy(7),
      O => c0_N14
    );
  c0_A_max_mux0009_0_3_F : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => c0_mux0000_and0004,
      I1 => c0_mux0000_or0001,
      I2 => c0_N6,
      I3 => c0_mux0000_and0005,
      O => N420
    );
  c0_A_max_mux0009_0_3_G : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => c0_B_despl_and0000,
      I1 => c0_B_despl_or0003_595,
      I2 => c0_N6,
      O => N421
    );
  c6_contador_ceros_mux0046_7_61 : MUXF5
    port map (
      I0 => N422,
      I1 => N423,
      S => c6_Madd_contador_ceros_addsub0021_lut(7),
      O => c6_contador_ceros_mux0046(7)
    );
  c6_contador_ceros_mux0046_7_61_F : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => rest_norm_M(1),
      I1 => rest_norm_M(2),
      I2 => c6_N87,
      I3 => c6_contador_ceros_mux0046_7_45_1399,
      O => N422
    );
  c6_contador_ceros_mux0046_7_61_G : LUT4
    generic map(
      INIT => X"FF4D"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0021_lut(6),
      I1 => c6_N47,
      I2 => c6_Madd_contador_ceros_addsub0021_cy(5),
      I3 => c6_N124,
      O => N423
    );
  c6_mantisa_aux_shift0001_21_87_SW0 : MUXF5
    port map (
      I0 => N424,
      I1 => N425,
      S => c6_contador_ceros_mux0046_2_1,
      O => N340
    );
  c6_mantisa_aux_shift0001_21_87_SW0_F : LUT4
    generic map(
      INIT => X"AF27"
    )
    port map (
      I0 => c6_contador_ceros_mux0046_3_1,
      I1 => c6_N74,
      I2 => c6_mantisa_aux_shift0001_21_23,
      I3 => c6_contador_ceros_mux0046_4_1,
      O => N424
    );
  c6_mantisa_aux_shift0001_21_87_SW0_G : LUT4
    generic map(
      INIT => X"AF27"
    )
    port map (
      I0 => c6_contador_ceros_mux0046_3_1,
      I1 => c6_N41,
      I2 => c6_N135,
      I3 => c6_contador_ceros_mux0046_4_1,
      O => N425
    );
  c6_mantisa_aux_shift0001_14_111 : LUT4
    generic map(
      INIT => X"FE54"
    )
    port map (
      I0 => c6_contador_ceros_mux0046_3_1,
      I1 => c6_contador_ceros_mux0046_1_1,
      I2 => N27,
      I3 => c6_N44,
      O => c6_mantisa_aux_shift0001_14_11
    );
  c6_mantisa_aux_shift0001_14_112 : LUT4
    generic map(
      INIT => X"AE04"
    )
    port map (
      I0 => c6_contador_ceros_mux0046_3_1,
      I1 => N27,
      I2 => c6_contador_ceros_mux0046_1_1,
      I3 => c6_N44,
      O => c6_mantisa_aux_shift0001_14_111_1456
    );
  c6_mantisa_aux_shift0001_14_11_f5 : MUXF5
    port map (
      I0 => c6_mantisa_aux_shift0001_14_111_1456,
      I1 => c6_mantisa_aux_shift0001_14_11,
      S => N28,
      O => c6_N111
    );
  c6_mantisa_aux_shift0001_12_111 : LUT4
    generic map(
      INIT => X"FE54"
    )
    port map (
      I0 => c6_contador_ceros_mux0046_3_1,
      I1 => c6_contador_ceros_mux0046_0_1_1391,
      I2 => c6_N1210,
      I3 => c6_N162,
      O => c6_mantisa_aux_shift0001_12_11
    );
  c6_mantisa_aux_shift0001_12_112 : LUT4
    generic map(
      INIT => X"AE04"
    )
    port map (
      I0 => c6_contador_ceros_mux0046_3_1,
      I1 => c6_N1210,
      I2 => c6_contador_ceros_mux0046_0_1_1391,
      I3 => c6_N162,
      O => c6_mantisa_aux_shift0001_12_111_1448
    );
  c6_mantisa_aux_shift0001_12_11_f5 : MUXF5
    port map (
      I0 => c6_mantisa_aux_shift0001_12_111_1448,
      I1 => c6_mantisa_aux_shift0001_12_11,
      S => c6_N921,
      O => c6_N84
    );
  c6_mantisa_aux_shift0001_13_12 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => c6_N160,
      I1 => c6_N110,
      O => c6_mantisa_aux_shift0001_13_1
    );
  c6_mantisa_aux_shift0001_13_13 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => c6_N160,
      I1 => c6_contador_ceros_mux0046_2_1,
      I2 => c6_N74,
      I3 => c6_N41,
      O => c6_mantisa_aux_shift0001_13_11_1452
    );
  c6_mantisa_aux_shift0001_13_1_f5 : MUXF5
    port map (
      I0 => c6_mantisa_aux_shift0001_13_11_1452,
      I1 => c6_mantisa_aux_shift0001_13_1,
      S => c6_contador_ceros_mux0046_3_1,
      O => c6_mantisa_aux_shift0001(13)
    );
  c1_num_desp_aux_cmp_le000011 : LUT4
    generic map(
      INIT => X"0111"
    )
    port map (
      I0 => c0_e_dif(6),
      I1 => c0_e_dif(5),
      I2 => c0_e_dif(4),
      I3 => c0_e_dif(3),
      O => c1_num_desp_aux_cmp_le000011_875
    );
  c1_num_desp_aux_cmp_le00001_f5 : MUXF5
    port map (
      I0 => c1_num_desp_aux_cmp_le000011_875,
      I1 => N0,
      S => c0_e_dif(7),
      O => c1_num_desp_aux_cmp_le00001
    );
  c6_mantisa_aux_shift0001_21_41 : LUT4
    generic map(
      INIT => X"FB51"
    )
    port map (
      I0 => c6_contador_ceros_mux0046_4_1,
      I1 => c6_contador_ceros_mux0046_1_1,
      I2 => rest_norm_M(18),
      I3 => c6_N132,
      O => c6_mantisa_aux_shift0001_21_4
    );
  c6_mantisa_aux_shift0001_21_42 : LUT4
    generic map(
      INIT => X"EA40"
    )
    port map (
      I0 => c6_contador_ceros_mux0046_4_1,
      I1 => c6_contador_ceros_mux0046_1_1,
      I2 => rest_norm_M(18),
      I3 => c6_N132,
      O => c6_mantisa_aux_shift0001_21_41_1489
    );
  c6_mantisa_aux_shift0001_21_4_f5 : MUXF5
    port map (
      I0 => c6_mantisa_aux_shift0001_21_41_1489,
      I1 => c6_mantisa_aux_shift0001_21_4,
      S => rest_norm_M(20),
      O => c6_N103
    );
  c6_mantisa_aux_shift0001_21_31 : LUT4
    generic map(
      INIT => X"FB51"
    )
    port map (
      I0 => c6_contador_ceros_mux0046_1_1,
      I1 => c6_contador_ceros_mux0046_0_1_1391,
      I2 => rest_norm_M(12),
      I3 => N31,
      O => c6_mantisa_aux_shift0001_21_3
    );
  c6_mantisa_aux_shift0001_21_32 : LUT4
    generic map(
      INIT => X"EA40"
    )
    port map (
      I0 => c6_contador_ceros_mux0046_1_1,
      I1 => c6_contador_ceros_mux0046_0_1_1391,
      I2 => rest_norm_M(12),
      I3 => N31,
      O => c6_mantisa_aux_shift0001_21_31_1487
    );
  c6_mantisa_aux_shift0001_21_3_f5 : MUXF5
    port map (
      I0 => c6_mantisa_aux_shift0001_21_31_1487,
      I1 => c6_mantisa_aux_shift0001_21_3,
      S => rest_norm_M(13),
      O => c6_N74
    );
  c6_Sh111 : LUT4
    generic map(
      INIT => X"F7A2"
    )
    port map (
      I0 => c6_contador_ceros_mux0046_1_1,
      I1 => c6_contador_ceros_mux0046_0_1_1391,
      I2 => rest_norm_M(8),
      I3 => N31,
      O => c6_Sh111_1354
    );
  c6_Sh112 : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => c6_contador_ceros_mux0046_1_1,
      I1 => N31,
      I2 => c6_contador_ceros_mux0046_0_1_1391,
      I3 => rest_norm_M(8),
      O => c6_Sh112_1355
    );
  c6_Sh11_f5 : MUXF5
    port map (
      I0 => c6_Sh112_1355,
      I1 => c6_Sh111_1354,
      S => rest_norm_M(9),
      O => c6_Sh11
    );
  c6_mantisa_aux_or0000821 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0021_cy(4),
      I1 => c6_Madd_contador_ceros_addsub0021_lut(5),
      I2 => c6_mantisa_aux_or000071_1438,
      O => c6_mantisa_aux_or0000821_1440
    );
  c6_mantisa_aux_or0000822 : LUT3
    generic map(
      INIT => X"F1"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0021_lut(6),
      I1 => c6_Madd_contador_ceros_addsub0021_cy(5),
      I2 => c6_mantisa_aux_or000071_1438,
      O => c6_mantisa_aux_or0000822_1441
    );
  c6_mantisa_aux_or000082_f5 : MUXF5
    port map (
      I0 => c6_mantisa_aux_or0000822_1441,
      I1 => c6_mantisa_aux_or0000821_1440,
      S => c6_N52,
      O => c6_mantisa_aux_or000082
    );
  c6_mantisa_aux_shift0001_22_1281 : LUT4
    generic map(
      INIT => X"FB51"
    )
    port map (
      I0 => c6_contador_ceros_mux0046_1_1,
      I1 => c6_contador_ceros_mux0046_0_1_1391,
      I2 => rest_norm_M(17),
      I3 => c6_N113,
      O => c6_mantisa_aux_shift0001_22_1281_1494
    );
  c6_mantisa_aux_shift0001_22_1282 : LUT4
    generic map(
      INIT => X"EA40"
    )
    port map (
      I0 => c6_contador_ceros_mux0046_1_1,
      I1 => c6_contador_ceros_mux0046_0_1_1391,
      I2 => rest_norm_M(17),
      I3 => c6_N113,
      O => c6_mantisa_aux_shift0001_22_1282_1495
    );
  c6_mantisa_aux_shift0001_22_128_f5 : MUXF5
    port map (
      I0 => c6_mantisa_aux_shift0001_22_1282_1495,
      I1 => c6_mantisa_aux_shift0001_22_1281_1494,
      S => rest_norm_M(18),
      O => c6_mantisa_aux_shift0001_22_128
    );
  c6_mantisa_aux_shift0001_21_231 : LUT4
    generic map(
      INIT => X"FB51"
    )
    port map (
      I0 => c6_contador_ceros_mux0046_0_1_1391,
      I1 => c6_contador_ceros_mux0046_4_1,
      I2 => c6_N123,
      I3 => c6_N103,
      O => c6_mantisa_aux_shift0001_21_231_1484
    );
  c6_mantisa_aux_shift0001_21_232 : LUT4
    generic map(
      INIT => X"EA40"
    )
    port map (
      I0 => c6_contador_ceros_mux0046_0_1_1391,
      I1 => c6_contador_ceros_mux0046_4_1,
      I2 => c6_N123,
      I3 => c6_N103,
      O => c6_mantisa_aux_shift0001_21_232_1485
    );
  c6_mantisa_aux_shift0001_21_23_f5 : MUXF5
    port map (
      I0 => c6_mantisa_aux_shift0001_21_232_1485,
      I1 => c6_mantisa_aux_shift0001_21_231_1484,
      S => c6_N137,
      O => c6_mantisa_aux_shift0001_21_23
    );
  c6_mantisa_aux_shift0001_19_2611 : LUT4
    generic map(
      INIT => X"F7A2"
    )
    port map (
      I0 => c6_contador_ceros_mux0046_0_1_1391,
      I1 => c6_contador_ceros_mux0046_1_1,
      I2 => rest_norm_M(16),
      I3 => c6_N136,
      O => c6_mantisa_aux_shift0001_19_2611_1468
    );
  c6_mantisa_aux_shift0001_19_2612 : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => c6_contador_ceros_mux0046_0_1_1391,
      I1 => c6_N136,
      I2 => c6_contador_ceros_mux0046_1_1,
      I3 => rest_norm_M(16),
      O => c6_mantisa_aux_shift0001_19_2612_1469
    );
  c6_mantisa_aux_shift0001_19_261_f5 : MUXF5
    port map (
      I0 => c6_mantisa_aux_shift0001_19_2612_1469,
      I1 => c6_mantisa_aux_shift0001_19_2611_1468,
      S => rest_norm_M(18),
      O => c6_mantisa_aux_shift0001_19_261
    );
  c6_mantisa_aux_shift0001_19_851 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => c6_N160,
      I1 => c6_contador_ceros_mux0046_2_1,
      I2 => c6_Sh11,
      I3 => c6_N46,
      O => c6_mantisa_aux_shift0001_19_851_1471
    );
  c6_mantisa_aux_shift0001_19_852 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => c6_N160,
      I1 => c6_contador_ceros_mux0046_2_1,
      I2 => c6_mantisa_aux_shift0001_19_261,
      I3 => c6_N46,
      O => c6_mantisa_aux_shift0001_19_852_1472
    );
  c6_mantisa_aux_shift0001_19_85_f5 : MUXF5
    port map (
      I0 => c6_mantisa_aux_shift0001_19_852_1472,
      I1 => c6_mantisa_aux_shift0001_19_851_1471,
      S => c6_contador_ceros_mux0046_3_1,
      O => c6_mantisa_aux_shift0001_19_85
    );
  c6_mantisa_aux_shift0001_22_281 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => c6_N158,
      I1 => c6_contador_ceros_mux0046_0_1_1391,
      I2 => rest_norm_M(20),
      I3 => c6_N137,
      O => c6_mantisa_aux_shift0001_22_281_1497
    );
  c6_mantisa_aux_shift0001_22_282 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => c6_N158,
      I1 => c6_contador_ceros_mux0046_0_1_1391,
      I2 => rest_norm_M(22),
      I3 => c6_N137,
      O => c6_mantisa_aux_shift0001_22_282_1498
    );
  c6_mantisa_aux_shift0001_22_28_f5 : MUXF5
    port map (
      I0 => c6_mantisa_aux_shift0001_22_282_1498,
      I1 => c6_mantisa_aux_shift0001_22_281_1497,
      S => c6_contador_ceros_mux0046_1_1,
      O => c6_mantisa_aux_shift0001_22_28
    );
  c6_mantisa_aux_shift0001_22_591 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => c6_N6,
      I1 => c6_mantisa_aux_or0000,
      O => c6_mantisa_aux_shift0001_22_591_1500
    );
  c6_mantisa_aux_shift0001_22_592 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => c6_contador_ceros_mux0046_4_1,
      I1 => c6_mantisa_aux_or0000,
      I2 => c6_contador_ceros_mux0046_3_1,
      I3 => c6_N43,
      O => c6_mantisa_aux_shift0001_22_592_1501
    );
  c6_mantisa_aux_shift0001_22_59_f5 : MUXF5
    port map (
      I0 => c6_mantisa_aux_shift0001_22_592_1501,
      I1 => c6_mantisa_aux_shift0001_22_591_1500,
      S => c6_contador_ceros_mux0046_2_1,
      O => c6_mantisa_aux_shift0001_22_59
    );
  c6_mantisa_aux_shift0001_22_771 : LUT4
    generic map(
      INIT => X"FEEE"
    )
    port map (
      I0 => c6_mantisa_aux_shift0001_22_28,
      I1 => c6_mantisa_aux_shift0001_22_59,
      I2 => c6_N163,
      I3 => c6_contador_ceros_mux0046_4_1,
      O => c6_mantisa_aux_shift0001_22_77
    );
  c6_mantisa_aux_shift0001_22_772 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => c6_mantisa_aux_shift0001_22_28,
      I1 => c6_mantisa_aux_shift0001_22_59,
      O => c6_mantisa_aux_shift0001_22_771_1503
    );
  c6_mantisa_aux_shift0001_22_77_f5 : MUXF5
    port map (
      I0 => c6_mantisa_aux_shift0001_22_771_1503,
      I1 => c6_mantisa_aux_shift0001_22_77,
      S => c6_Sh6,
      O => c6_mantisa_aux_shift0001(22)
    );
  c0_mux0000_and0001171 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => Exponente_2_1_IBUF_25,
      I1 => Exponente_2_2_IBUF_26,
      I2 => Exponente_2_3_IBUF_27,
      I3 => Exponente_2_4_IBUF_28,
      O => c0_mux0000_and0001171_791
    );
  c0_mux0000_and000117_f5 : MUXF5
    port map (
      I0 => c0_mux0000_and0001171_791,
      I1 => N0,
      S => Mantisa_2_17_IBUF_142,
      O => c0_mux0000_and000117
    );
  c0_e_dif_or00002171 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => Exponente_1_1_IBUF_9,
      I1 => Exponente_1_2_IBUF_10,
      I2 => Exponente_1_3_IBUF_11,
      I3 => Exponente_1_4_IBUF_12,
      O => c0_e_dif_or00002171_751
    );
  c0_e_dif_or0000217_f5 : MUXF5
    port map (
      I0 => c0_e_dif_or00002171_751,
      I1 => N0,
      S => Mantisa_1_17_IBUF_96,
      O => c0_e_dif_or0000217
    );
  c0_mux0000_and0005181 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => Mantisa_2_1_IBUF_145,
      I1 => Mantisa_2_20_IBUF_146,
      I2 => Mantisa_2_5_IBUF_152,
      I3 => Mantisa_2_17_IBUF_142,
      O => c0_mux0000_and0005181_812
    );
  c0_mux0000_and000518_f5 : MUXF5
    port map (
      I0 => N0,
      I1 => c0_mux0000_and0005181_812,
      S => Mantisa_2_7_IBUF_154,
      O => c0_mux0000_and000518
    );
  c0_mux0000_and0004181 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => Mantisa_1_1_IBUF_99,
      I1 => Mantisa_1_20_IBUF_100,
      I2 => Mantisa_1_5_IBUF_106,
      I3 => Mantisa_1_17_IBUF_96,
      O => c0_mux0000_and0004181_808
    );
  c0_mux0000_and000418_f5 : MUXF5
    port map (
      I0 => N0,
      I1 => c0_mux0000_and0004181_808,
      S => Mantisa_1_7_IBUF_108,
      O => c0_mux0000_and000418
    );
  c6_contador_ceros_mux0030_4_1 : LUT4
    generic map(
      INIT => X"69F0"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0015_cy(3),
      I1 => c6_N54,
      I2 => c6_Madd_contador_ceros_addsub0015_lut(4),
      I3 => c6_flag_mux0013,
      O => c6_contador_ceros_mux0030(4)
    );
  c6_contador_ceros_mux0030_4_f5 : MUXF5
    port map (
      I0 => c6_contador_ceros_mux0030(4),
      I1 => c6_Madd_contador_ceros_addsub0015_lut(4),
      S => rest_norm_M(9),
      O => c6_Madd_contador_ceros_addsub0014_lut(4)
    );
  c6_contador_ceros_mux0038_5_41 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0020_lut(1),
      I1 => c6_Madd_contador_ceros_addsub0020_lut(3),
      I2 => c6_Madd_contador_ceros_addsub0020_lut(2),
      I3 => c6_Madd_contador_ceros_addsub0020_cy(0),
      O => c6_contador_ceros_mux0038_5_4
    );
  c6_contador_ceros_mux0038_5_4_f5 : MUXF5
    port map (
      I0 => N0,
      I1 => c6_contador_ceros_mux0038_5_4,
      S => c6_Madd_contador_ceros_addsub0020_lut(4),
      O => c6_N151
    );
  c6_contador_ceros_mux0026_4_51 : LUT4
    generic map(
      INIT => X"FFEF"
    )
    port map (
      I0 => rest_norm_M(14),
      I1 => rest_norm_M(15),
      I2 => c6_N153,
      I3 => rest_norm_M(13),
      O => c6_contador_ceros_mux0026_4_5
    );
  c6_contador_ceros_mux0026_4_5_f5 : MUXF5
    port map (
      I0 => c6_contador_ceros_mux0026_4_5,
      I1 => N1,
      S => rest_norm_M(18),
      O => c6_N150
    );
  c6_Madd_contador_ceros_addsub0012_cy_2_13281 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0007_lut(1),
      I1 => c6_N150,
      I2 => c6_Madd_contador_ceros_addsub0007_cy(0),
      I3 => c6_N11,
      O => c6_Madd_contador_ceros_addsub0012_cy_2_13281_1178
    );
  c6_Madd_contador_ceros_addsub0012_cy_2_13282 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => c6_Madd_contador_ceros_addsub0007_lut(1),
      I1 => c6_N150,
      I2 => rest_norm_M(11),
      I3 => c6_N11,
      O => c6_Madd_contador_ceros_addsub0012_cy_2_13282_1179
    );
  c6_Madd_contador_ceros_addsub0012_cy_2_1328_f5 : MUXF5
    port map (
      I0 => c6_Madd_contador_ceros_addsub0012_cy_2_13282_1179,
      I1 => c6_Madd_contador_ceros_addsub0012_cy_2_13281_1178,
      S => rest_norm_M(12),
      O => c6_Madd_contador_ceros_addsub0012_cy_2_1328
    );
  c0_e_dif_mux0009_0_1 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => c0_e_dif_or0001,
      I1 => c0_mux0000_and0000,
      I2 => Exponente_1_0_IBUF_8,
      I3 => Exponente_2_0_IBUF_24,
      O => c0_e_dif_mux0009_0_1_726
    );
  c0_e_dif_mux0009_0_2 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => c0_e_dif_or0001,
      I1 => c0_mux0000_and0000,
      I2 => c0_mux0002_addsub0000(0),
      I3 => Exponente_2_0_IBUF_24,
      O => c0_e_dif_mux0009_0_2_727
    );
  c0_e_dif_mux0009_0_f5 : MUXF5
    port map (
      I0 => c0_e_dif_mux0009_0_2_727,
      I1 => c0_e_dif_mux0009_0_1_726,
      S => c0_mux0000_and0001,
      O => c0_e_dif_mux0009(0)
    );
  c0_e_dif_mux0009_1_1 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => c0_e_dif_or0001,
      I1 => c0_mux0000_and0000,
      I2 => Exponente_1_1_IBUF_9,
      I3 => Exponente_2_1_IBUF_25,
      O => c0_e_dif_mux0009_1_1_729
    );
  c0_e_dif_mux0009_1_2 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => c0_e_dif_or0001,
      I1 => c0_mux0000_and0000,
      I2 => c0_mux0002_addsub0000(1),
      I3 => Exponente_2_1_IBUF_25,
      O => c0_e_dif_mux0009_1_2_730
    );
  c0_e_dif_mux0009_1_f5 : MUXF5
    port map (
      I0 => c0_e_dif_mux0009_1_2_730,
      I1 => c0_e_dif_mux0009_1_1_729,
      S => c0_mux0000_and0001,
      O => c0_e_dif_mux0009(1)
    );
  c0_e_dif_mux0009_2_1 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => c0_e_dif_or0001,
      I1 => c0_mux0000_and0000,
      I2 => Exponente_1_2_IBUF_10,
      I3 => Exponente_2_2_IBUF_26,
      O => c0_e_dif_mux0009_2_1_732
    );
  c0_e_dif_mux0009_2_2 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => c0_e_dif_or0001,
      I1 => c0_mux0000_and0000,
      I2 => c0_mux0002_addsub0000(2),
      I3 => Exponente_2_2_IBUF_26,
      O => c0_e_dif_mux0009_2_2_733
    );
  c0_e_dif_mux0009_2_f5 : MUXF5
    port map (
      I0 => c0_e_dif_mux0009_2_2_733,
      I1 => c0_e_dif_mux0009_2_1_732,
      S => c0_mux0000_and0001,
      O => c0_e_dif_mux0009(2)
    );
  c0_e_dif_mux0009_3_1 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => c0_e_dif_or0001,
      I1 => c0_mux0000_and0000,
      I2 => Exponente_1_3_IBUF_11,
      I3 => Exponente_2_3_IBUF_27,
      O => c0_e_dif_mux0009_3_1_735
    );
  c0_e_dif_mux0009_3_2 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => c0_e_dif_or0001,
      I1 => c0_mux0000_and0000,
      I2 => c0_mux0002_addsub0000(3),
      I3 => Exponente_2_3_IBUF_27,
      O => c0_e_dif_mux0009_3_2_736
    );
  c0_e_dif_mux0009_3_f5 : MUXF5
    port map (
      I0 => c0_e_dif_mux0009_3_2_736,
      I1 => c0_e_dif_mux0009_3_1_735,
      S => c0_mux0000_and0001,
      O => c0_e_dif_mux0009(3)
    );
  c0_e_dif_mux0009_4_1 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => c0_e_dif_or0001,
      I1 => c0_mux0000_and0000,
      I2 => Exponente_1_4_IBUF_12,
      I3 => Exponente_2_4_IBUF_28,
      O => c0_e_dif_mux0009_4_1_738
    );
  c0_e_dif_mux0009_4_2 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => c0_e_dif_or0001,
      I1 => c0_mux0000_and0000,
      I2 => c0_mux0002_addsub0000(4),
      I3 => Exponente_2_4_IBUF_28,
      O => c0_e_dif_mux0009_4_2_739
    );
  c0_e_dif_mux0009_4_f5 : MUXF5
    port map (
      I0 => c0_e_dif_mux0009_4_2_739,
      I1 => c0_e_dif_mux0009_4_1_738,
      S => c0_mux0000_and0001,
      O => c0_e_dif_mux0009(4)
    );
  c0_e_dif_mux0009_5_1 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => c0_e_dif_or0001,
      I1 => c0_mux0000_and0000,
      I2 => Exponente_1_5_IBUF_13,
      I3 => Exponente_2_5_IBUF_29,
      O => c0_e_dif_mux0009_5_1_741
    );
  c0_e_dif_mux0009_5_2 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => c0_e_dif_or0001,
      I1 => c0_mux0000_and0000,
      I2 => c0_mux0002_addsub0000(5),
      I3 => Exponente_2_5_IBUF_29,
      O => c0_e_dif_mux0009_5_2_742
    );
  c0_e_dif_mux0009_5_f5 : MUXF5
    port map (
      I0 => c0_e_dif_mux0009_5_2_742,
      I1 => c0_e_dif_mux0009_5_1_741,
      S => c0_mux0000_and0001,
      O => c0_e_dif_mux0009(5)
    );
  c0_e_dif_mux0009_6_1 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => c0_e_dif_or0001,
      I1 => c0_mux0000_and0000,
      I2 => Exponente_1_6_IBUF_14,
      I3 => Exponente_2_6_IBUF_30,
      O => c0_e_dif_mux0009_6_1_744
    );
  c0_e_dif_mux0009_6_2 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => c0_e_dif_or0001,
      I1 => c0_mux0000_and0000,
      I2 => c0_mux0002_addsub0000(6),
      I3 => Exponente_2_6_IBUF_30,
      O => c0_e_dif_mux0009_6_2_745
    );
  c0_e_dif_mux0009_6_f5 : MUXF5
    port map (
      I0 => c0_e_dif_mux0009_6_2_745,
      I1 => c0_e_dif_mux0009_6_1_744,
      S => c0_mux0000_and0001,
      O => c0_e_dif_mux0009(6)
    );
  c0_e_dif_mux0009_7_1 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => c0_e_dif_or0001,
      I1 => c0_mux0000_and0000,
      I2 => Exponente_1_7_IBUF_15,
      I3 => Exponente_2_7_IBUF_31,
      O => c0_e_dif_mux0009_7_1_747
    );
  c0_e_dif_mux0009_7_2 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => c0_e_dif_or0001,
      I1 => c0_mux0000_and0000,
      I2 => c0_mux0002_addsub0000(7),
      I3 => Exponente_2_7_IBUF_31,
      O => c0_e_dif_mux0009_7_2_748
    );
  c0_e_dif_mux0009_7_f5 : MUXF5
    port map (
      I0 => c0_e_dif_mux0009_7_2_748,
      I1 => c0_e_dif_mux0009_7_1_747,
      S => c0_mux0000_and0001,
      O => c0_e_dif_mux0009(7)
    );
  c6_mantisa_aux_shift0001_21_21 : LUT4
    generic map(
      INIT => X"FB51"
    )
    port map (
      I0 => c6_contador_ceros_mux0046_0_1_1391,
      I1 => c6_contador_ceros_mux0046_1_1,
      I2 => rest_norm_M(7),
      I3 => c6_N1210,
      O => c6_mantisa_aux_shift0001_21_2
    );
  c6_mantisa_aux_shift0001_21_22 : LUT4
    generic map(
      INIT => X"EA40"
    )
    port map (
      I0 => c6_contador_ceros_mux0046_0_1_1391,
      I1 => c6_contador_ceros_mux0046_1_1,
      I2 => rest_norm_M(7),
      I3 => c6_N1210,
      O => c6_mantisa_aux_shift0001_21_21_1482
    );
  c6_mantisa_aux_shift0001_21_2_f5 : MUXF5
    port map (
      I0 => c6_mantisa_aux_shift0001_21_21_1482,
      I1 => c6_mantisa_aux_shift0001_21_2,
      S => rest_norm_M(9),
      O => c6_N41
    );
  c6_mantisa_aux_shift0001_14_1 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => c6_N160,
      I1 => c6_contador_ceros_mux0046_2_1,
      I2 => c6_Sh6,
      I3 => c6_N111,
      O => c6_mantisa_aux_shift0001_14_1_1454
    );
  c6_mantisa_aux_shift0001_14_2 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => c6_N160,
      I1 => c6_contador_ceros_mux0046_2_1,
      I2 => c6_N43,
      I3 => c6_N111,
      O => c6_mantisa_aux_shift0001_14_2_1457
    );
  c6_mantisa_aux_shift0001_14_f5 : MUXF5
    port map (
      I0 => c6_mantisa_aux_shift0001_14_2_1457,
      I1 => c6_mantisa_aux_shift0001_14_1_1454,
      S => c6_contador_ceros_mux0046_3_1,
      O => c6_mantisa_aux_shift0001(14)
    );
  c6_mantisa_aux_shift0001_12_1 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => c6_N160,
      I1 => c6_contador_ceros_mux0046_2_1,
      I2 => c6_Sh4,
      I3 => c6_N84,
      O => c6_mantisa_aux_shift0001_12_1_1446
    );
  c6_mantisa_aux_shift0001_12_2 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => c6_N160,
      I1 => c6_contador_ceros_mux0046_2_1,
      I2 => c6_N42,
      I3 => c6_N84,
      O => c6_mantisa_aux_shift0001_12_2_1449
    );
  c6_mantisa_aux_shift0001_12_f5 : MUXF5
    port map (
      I0 => c6_mantisa_aux_shift0001_12_2_1449,
      I1 => c6_mantisa_aux_shift0001_12_1_1446,
      S => c6_contador_ceros_mux0046_3_1,
      O => c6_mantisa_aux_shift0001(12)
    );
  c6_mantisa_aux_shift0001_21_6136_SW01 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => c6_contador_ceros_mux0046_0_1_1391,
      I1 => rest_norm_M(15),
      I2 => rest_norm_M(14),
      O => c6_mantisa_aux_shift0001_21_6136_SW0
    );
  c6_mantisa_aux_shift0001_21_6136_SW02 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => c6_contador_ceros_mux0046_0_1_1391,
      I1 => rest_norm_M(17),
      I2 => rest_norm_M(16),
      O => c6_mantisa_aux_shift0001_21_6136_SW01_1491
    );
  c6_mantisa_aux_shift0001_21_6136_SW0_f5 : MUXF5
    port map (
      I0 => c6_mantisa_aux_shift0001_21_6136_SW01_1491,
      I1 => c6_mantisa_aux_shift0001_21_6136_SW0,
      S => c6_contador_ceros_mux0046_1_1,
      O => N312
    );
  c1_Sh2411 : LUT2_D
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => c1_num_desp_aux(3),
      I1 => c1_num_desp_aux(2),
      LO => N426,
      O => c1_N01
    );
  c1_num_out_aux_or00001 : LUT3_D
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => c1_num_desp_aux(6),
      I1 => c1_num_desp_aux(7),
      I2 => c1_num_desp_aux(5),
      LO => N427,
      O => c1_num_out_aux_or0000
    );
  c1_Sh231 : LUT3_D
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => c0_B_despl(23),
      I1 => c1_num_desp_aux(1),
      I2 => c1_num_desp_aux(0),
      LO => N428,
      O => c1_Sh23
    );
  c1_Sh221 : LUT4_D
    generic map(
      INIT => X"0C0A"
    )
    port map (
      I0 => c0_B_despl(22),
      I1 => c0_B_despl(23),
      I2 => c1_num_desp_aux(1),
      I3 => c1_num_desp_aux(0),
      LO => N429,
      O => c1_Sh22
    );
  c1_Sh431 : LUT4_D
    generic map(
      INIT => X"5140"
    )
    port map (
      I0 => c1_num_desp_aux(3),
      I1 => c1_num_desp_aux(2),
      I2 => c1_Sh23,
      I3 => c1_Sh19_846,
      LO => N430,
      O => c1_Sh43
    );
  c1_Sh421 : LUT4_D
    generic map(
      INIT => X"5140"
    )
    port map (
      I0 => c1_num_desp_aux(3),
      I1 => c1_num_desp_aux(2),
      I2 => c1_Sh22,
      I3 => c1_Sh18_845,
      LO => N431,
      O => c1_Sh42
    );
  c1_Sh411 : LUT4_D
    generic map(
      INIT => X"3210"
    )
    port map (
      I0 => c1_num_desp_aux(2),
      I1 => c1_num_desp_aux(3),
      I2 => c1_Sh17_844,
      I3 => c1_Sh21_848,
      LO => N432,
      O => c1_Sh41
    );
  c1_Sh21_SW0 : LUT3_L
    generic map(
      INIT => X"35"
    )
    port map (
      I0 => c0_B_despl(21),
      I1 => c0_B_despl(22),
      I2 => c1_num_desp_aux_0_1_862,
      LO => N49
    );
  c1_Sh20_SW0 : LUT3_D
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => c0_B_despl(21),
      I1 => c0_B_despl(20),
      I2 => c1_num_desp_aux_0_3_864,
      LO => N433,
      O => N51
    );
  c1_num_out_aux_shift0001_13_20 : LUT4_L
    generic map(
      INIT => X"5410"
    )
    port map (
      I0 => c1_num_desp_aux(2),
      I1 => c1_num_desp_aux(3),
      I2 => c1_Sh13_840,
      I3 => c1_Sh21_848,
      LO => c1_num_out_aux_shift0001_13_20_912
    );
  c1_num_out_aux_shift0001_4_33 : LUT3_L
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => c1_num_desp_aux(3),
      I1 => c1_Sh4_851,
      I2 => c1_Sh12_839,
      LO => c1_num_out_aux_shift0001_0_8
    );
  c1_num_out_aux_shift0001_0_42 : LUT4_L
    generic map(
      INIT => X"0C0A"
    )
    port map (
      I0 => c0_B_despl(0),
      I1 => c0_B_despl(2),
      I2 => c1_num_desp_aux_0_2_863,
      I3 => c1_num_desp_aux_1_1_866,
      LO => c1_num_out_aux_shift0001_0_42_904
    );
  c1_num_out_aux_shift0001_5_12_SW0 : LUT3_D
    generic map(
      INIT => X"FB"
    )
    port map (
      I0 => c1_num_desp_aux(3),
      I1 => c1_num_desp_aux(4),
      I2 => c1_num_desp_aux(2),
      LO => N434,
      O => N202
    );

end Structure;

