--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.49d
--  \   \         Application: netgen
--  /   /         Filename: normalizador_synthesis.vhd
-- /___/   /\     Timestamp: Wed Jan 06 20:40:53 2016
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm normalizador -w -dir netgen/synthesis -ofmt vhdl -sim normalizador.ngc normalizador_synthesis.vhd 
-- Device	: xc3s100e-4-vq100
-- Input file	: normalizador.ngc
-- Output file	: C:\FPGA\PracticoFinal\netgen\synthesis\normalizador_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: normalizador
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

entity normalizador is
  port (
    error : out STD_LOGIC; 
    mantisa_normalizada : out STD_LOGIC_VECTOR ( 22 downto 0 ); 
    exponente_out : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    mantisa_desnormalizada : in STD_LOGIC_VECTOR ( 23 downto 0 ); 
    exponente_in : in STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end normalizador;

architecture Structure of normalizador is
  signal Madd_contador_ceros_addsub0012_cy_0_Q : STD_LOGIC; 
  signal Madd_contador_ceros_addsub0012_cy_2_Q : STD_LOGIC; 
  signal Madd_contador_ceros_addsub0012_cy_2_1314_8 : STD_LOGIC; 
  signal Madd_contador_ceros_addsub0012_cy_2_1328_9 : STD_LOGIC; 
  signal Madd_contador_ceros_addsub0014_cy_3_154_11 : STD_LOGIC; 
  signal Madd_contador_ceros_addsub0014_cy_3_171_SW0 : STD_LOGIC; 
  signal Madd_contador_ceros_addsub0014_cy_3_171_SW01_13 : STD_LOGIC; 
  signal Madd_contador_ceros_addsub0015_cy_3_1118_21 : STD_LOGIC; 
  signal Madd_contador_ceros_addsub0015_cy_3_1133_22 : STD_LOGIC; 
  signal Madd_contador_ceros_addsub0015_cy_3_1151_SW0 : STD_LOGIC; 
  signal Madd_contador_ceros_addsub0015_cy_3_1151_SW01 : STD_LOGIC; 
  signal Madd_contador_ceros_addsub0016_cy_1_140_28 : STD_LOGIC; 
  signal Madd_contador_ceros_addsub0018_cy_4_139_36 : STD_LOGIC; 
  signal Madd_contador_ceros_addsub0018_cy_4_159_37 : STD_LOGIC; 
  signal Madd_contador_ceros_addsub0018_cy_4_168_38 : STD_LOGIC; 
  signal Madd_contador_ceros_addsub0018_cy_4_186_39 : STD_LOGIC; 
  signal Madd_contador_ceros_addsub0021_cy_5_135_53 : STD_LOGIC; 
  signal Madd_contador_ceros_addsub0021_cy_5_166_54 : STD_LOGIC; 
  signal Madd_contador_ceros_addsub0021_cy_5_195_55 : STD_LOGIC; 
  signal Mcompar_mantisa_aux_cmp_lt0000_cy_7_1 : STD_LOGIC; 
  signal N02 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal N103 : STD_LOGIC; 
  signal N104 : STD_LOGIC; 
  signal N11 : STD_LOGIC; 
  signal N110 : STD_LOGIC; 
  signal N113 : STD_LOGIC; 
  signal N115 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal N1210 : STD_LOGIC; 
  signal N122 : STD_LOGIC; 
  signal N123 : STD_LOGIC; 
  signal N124 : STD_LOGIC; 
  signal N126 : STD_LOGIC; 
  signal N127 : STD_LOGIC; 
  signal N1281 : STD_LOGIC; 
  signal N132 : STD_LOGIC; 
  signal N134 : STD_LOGIC; 
  signal N135 : STD_LOGIC; 
  signal N136 : STD_LOGIC; 
  signal N137 : STD_LOGIC; 
  signal N138 : STD_LOGIC; 
  signal N139 : STD_LOGIC; 
  signal N1391 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal N141 : STD_LOGIC; 
  signal N1431 : STD_LOGIC; 
  signal N1481 : STD_LOGIC; 
  signal N150 : STD_LOGIC; 
  signal N151 : STD_LOGIC; 
  signal N1511 : STD_LOGIC; 
  signal N153 : STD_LOGIC; 
  signal N155 : STD_LOGIC; 
  signal N1551 : STD_LOGIC; 
  signal N158 : STD_LOGIC; 
  signal N1581 : STD_LOGIC; 
  signal N159 : STD_LOGIC; 
  signal N160 : STD_LOGIC; 
  signal N161 : STD_LOGIC; 
  signal N162 : STD_LOGIC; 
  signal N165 : STD_LOGIC; 
  signal N167 : STD_LOGIC; 
  signal N17 : STD_LOGIC; 
  signal N170 : STD_LOGIC; 
  signal N173 : STD_LOGIC; 
  signal N176 : STD_LOGIC; 
  signal N184 : STD_LOGIC; 
  signal N188 : STD_LOGIC; 
  signal N195 : STD_LOGIC; 
  signal N197 : STD_LOGIC; 
  signal N206 : STD_LOGIC; 
  signal N207 : STD_LOGIC; 
  signal N209 : STD_LOGIC; 
  signal N21 : STD_LOGIC; 
  signal N213 : STD_LOGIC; 
  signal N219 : STD_LOGIC; 
  signal N221 : STD_LOGIC; 
  signal N225 : STD_LOGIC; 
  signal N226 : STD_LOGIC; 
  signal N228 : STD_LOGIC; 
  signal N229 : STD_LOGIC; 
  signal N23 : STD_LOGIC; 
  signal N234 : STD_LOGIC; 
  signal N236 : STD_LOGIC; 
  signal N238 : STD_LOGIC; 
  signal N239 : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal N243 : STD_LOGIC; 
  signal N245 : STD_LOGIC; 
  signal N247 : STD_LOGIC; 
  signal N253 : STD_LOGIC; 
  signal N255 : STD_LOGIC; 
  signal N257 : STD_LOGIC; 
  signal N261 : STD_LOGIC; 
  signal N269 : STD_LOGIC; 
  signal N271 : STD_LOGIC; 
  signal N273 : STD_LOGIC; 
  signal N275 : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal N285 : STD_LOGIC; 
  signal N289 : STD_LOGIC; 
  signal N293 : STD_LOGIC; 
  signal N295 : STD_LOGIC; 
  signal N297 : STD_LOGIC; 
  signal N299 : STD_LOGIC; 
  signal N301 : STD_LOGIC; 
  signal N303 : STD_LOGIC; 
  signal N305 : STD_LOGIC; 
  signal N317 : STD_LOGIC; 
  signal N319 : STD_LOGIC; 
  signal N321 : STD_LOGIC; 
  signal N323 : STD_LOGIC; 
  signal N325 : STD_LOGIC; 
  signal N327 : STD_LOGIC; 
  signal N329 : STD_LOGIC; 
  signal N331 : STD_LOGIC; 
  signal N333 : STD_LOGIC; 
  signal N335 : STD_LOGIC; 
  signal N337 : STD_LOGIC; 
  signal N339 : STD_LOGIC; 
  signal N341 : STD_LOGIC; 
  signal N343 : STD_LOGIC; 
  signal N345 : STD_LOGIC; 
  signal N347 : STD_LOGIC; 
  signal N349 : STD_LOGIC; 
  signal N351 : STD_LOGIC; 
  signal N353 : STD_LOGIC; 
  signal N355 : STD_LOGIC; 
  signal N357 : STD_LOGIC; 
  signal N359 : STD_LOGIC; 
  signal N361 : STD_LOGIC; 
  signal N3611 : STD_LOGIC; 
  signal N363 : STD_LOGIC; 
  signal N365 : STD_LOGIC; 
  signal N366 : STD_LOGIC; 
  signal N367 : STD_LOGIC; 
  signal N368 : STD_LOGIC; 
  signal N369 : STD_LOGIC; 
  signal N37 : STD_LOGIC; 
  signal N370 : STD_LOGIC; 
  signal N371 : STD_LOGIC; 
  signal N372 : STD_LOGIC; 
  signal N373 : STD_LOGIC; 
  signal N374 : STD_LOGIC; 
  signal N375 : STD_LOGIC; 
  signal N376 : STD_LOGIC; 
  signal N377 : STD_LOGIC; 
  signal N378 : STD_LOGIC; 
  signal N379 : STD_LOGIC; 
  signal N380 : STD_LOGIC; 
  signal N381 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N40 : STD_LOGIC; 
  signal N41 : STD_LOGIC; 
  signal N42 : STD_LOGIC; 
  signal N43 : STD_LOGIC; 
  signal N44 : STD_LOGIC; 
  signal N45 : STD_LOGIC; 
  signal N46 : STD_LOGIC; 
  signal N471 : STD_LOGIC; 
  signal N49 : STD_LOGIC; 
  signal N5 : STD_LOGIC; 
  signal N52 : STD_LOGIC; 
  signal N53 : STD_LOGIC; 
  signal N54 : STD_LOGIC; 
  signal N57 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal N63 : STD_LOGIC; 
  signal N64 : STD_LOGIC; 
  signal N7 : STD_LOGIC; 
  signal N73 : STD_LOGIC; 
  signal N74 : STD_LOGIC; 
  signal N75 : STD_LOGIC; 
  signal N77 : STD_LOGIC; 
  signal N87 : STD_LOGIC; 
  signal N89 : STD_LOGIC; 
  signal N90 : STD_LOGIC; 
  signal N921 : STD_LOGIC; 
  signal N95 : STD_LOGIC; 
  signal N96 : STD_LOGIC; 
  signal N98 : STD_LOGIC; 
  signal Sh4 : STD_LOGIC; 
  signal Sh5 : STD_LOGIC; 
  signal Sh6 : STD_LOGIC; 
  signal Sh7 : STD_LOGIC; 
  signal Sh8 : STD_LOGIC; 
  signal contador_ceros_mux0018_0_14_276 : STD_LOGIC; 
  signal contador_ceros_mux0018_0_2_277 : STD_LOGIC; 
  signal contador_ceros_mux0018_0_23_278 : STD_LOGIC; 
  signal contador_ceros_mux0018_1_9_279 : STD_LOGIC; 
  signal contador_ceros_mux0022_0_25_280 : STD_LOGIC; 
  signal contador_ceros_mux0026_3_81 : STD_LOGIC; 
  signal contador_ceros_mux0026_3_96 : STD_LOGIC; 
  signal contador_ceros_mux0026_4_23_283 : STD_LOGIC; 
  signal contador_ceros_mux0026_4_47_284 : STD_LOGIC; 
  signal contador_ceros_mux0030_1_110 : STD_LOGIC; 
  signal contador_ceros_mux0030_1_1101_286 : STD_LOGIC; 
  signal contador_ceros_mux0030_1_12 : STD_LOGIC; 
  signal contador_ceros_mux0030_1_121 : STD_LOGIC; 
  signal contador_ceros_mux0030_1_24_289 : STD_LOGIC; 
  signal contador_ceros_mux0030_1_83 : STD_LOGIC; 
  signal contador_ceros_mux0030_1_831_291 : STD_LOGIC; 
  signal contador_ceros_mux0030_1_832_292 : STD_LOGIC; 
  signal contador_ceros_mux0030_2_123_293 : STD_LOGIC; 
  signal contador_ceros_mux0030_2_142_294 : STD_LOGIC; 
  signal contador_ceros_mux0030_2_183_295 : STD_LOGIC; 
  signal contador_ceros_mux0030_2_41_296 : STD_LOGIC; 
  signal contador_ceros_mux0030_2_69_297 : STD_LOGIC; 
  signal contador_ceros_mux0030_2_75_298 : STD_LOGIC; 
  signal contador_ceros_mux0030_4_1_300 : STD_LOGIC; 
  signal contador_ceros_mux0034_5_21_301 : STD_LOGIC; 
  signal contador_ceros_mux0034_5_71 : STD_LOGIC; 
  signal contador_ceros_mux0034_5_711_303 : STD_LOGIC; 
  signal contador_ceros_mux0036_1_21_304 : STD_LOGIC; 
  signal contador_ceros_mux0036_1_34 : STD_LOGIC; 
  signal contador_ceros_mux0036_1_341_306 : STD_LOGIC; 
  signal contador_ceros_mux0036_1_5_307 : STD_LOGIC; 
  signal contador_ceros_mux0036_4_0 : STD_LOGIC; 
  signal contador_ceros_mux0036_4_30 : STD_LOGIC; 
  signal contador_ceros_mux0036_4_301_310 : STD_LOGIC; 
  signal contador_ceros_mux0036_4_302_311 : STD_LOGIC; 
  signal contador_ceros_mux0036_4_89 : STD_LOGIC; 
  signal contador_ceros_mux0036_4_891_313 : STD_LOGIC; 
  signal contador_ceros_mux0036_4_892_314 : STD_LOGIC; 
  signal contador_ceros_mux0038_5_41 : STD_LOGIC; 
  signal contador_ceros_mux0038_6_21_316 : STD_LOGIC; 
  signal contador_ceros_mux0038_6_27_317 : STD_LOGIC; 
  signal contador_ceros_mux0038_6_54 : STD_LOGIC; 
  signal contador_ceros_mux0038_6_68_319 : STD_LOGIC; 
  signal contador_ceros_mux0038_7_25_320 : STD_LOGIC; 
  signal contador_ceros_mux0042_7_27_321 : STD_LOGIC; 
  signal contador_ceros_mux0042_7_34_322 : STD_LOGIC; 
  signal contador_ceros_mux0046_0_1_323 : STD_LOGIC; 
  signal contador_ceros_mux0046_1_1 : STD_LOGIC; 
  signal contador_ceros_mux0046_2_1 : STD_LOGIC; 
  signal contador_ceros_mux0046_3_1 : STD_LOGIC; 
  signal contador_ceros_mux0046_4_1 : STD_LOGIC; 
  signal contador_ceros_mux0046_7_SW1 : STD_LOGIC; 
  signal contador_ceros_mux0046_7_SW11_332 : STD_LOGIC; 
  signal error_OBUF_334 : STD_LOGIC; 
  signal exponente_in_0_IBUF_343 : STD_LOGIC; 
  signal exponente_in_1_IBUF_344 : STD_LOGIC; 
  signal exponente_in_2_IBUF_345 : STD_LOGIC; 
  signal exponente_in_3_IBUF_346 : STD_LOGIC; 
  signal exponente_in_4_IBUF_347 : STD_LOGIC; 
  signal exponente_in_5_IBUF_348 : STD_LOGIC; 
  signal exponente_in_6_IBUF_349 : STD_LOGIC; 
  signal exponente_in_7_IBUF_350 : STD_LOGIC; 
  signal exponente_out_0_OBUF_359 : STD_LOGIC; 
  signal exponente_out_1_OBUF_360 : STD_LOGIC; 
  signal exponente_out_2_OBUF_361 : STD_LOGIC; 
  signal exponente_out_3_OBUF_362 : STD_LOGIC; 
  signal exponente_out_4_OBUF_363 : STD_LOGIC; 
  signal exponente_out_5_OBUF_364 : STD_LOGIC; 
  signal exponente_out_6_OBUF_365 : STD_LOGIC; 
  signal exponente_out_7_OBUF_366 : STD_LOGIC; 
  signal flag_mux0013 : STD_LOGIC; 
  signal mantisa_aux_cmp_lt0000 : STD_LOGIC; 
  signal mantisa_aux_or0000 : STD_LOGIC; 
  signal mantisa_aux_or0000108_401 : STD_LOGIC; 
  signal mantisa_aux_or000012 : STD_LOGIC; 
  signal mantisa_aux_or000026_403 : STD_LOGIC; 
  signal mantisa_aux_or000046_404 : STD_LOGIC; 
  signal mantisa_aux_or000072_405 : STD_LOGIC; 
  signal mantisa_aux_or00008_406 : STD_LOGIC; 
  signal mantisa_aux_shift0001_10_1 : STD_LOGIC; 
  signal mantisa_aux_shift0001_10_11_410 : STD_LOGIC; 
  signal mantisa_aux_shift0001_11_11 : STD_LOGIC; 
  signal mantisa_aux_shift0001_11_111_413 : STD_LOGIC; 
  signal mantisa_aux_shift0001_17_20_420 : STD_LOGIC; 
  signal mantisa_aux_shift0001_19_1_423 : STD_LOGIC; 
  signal mantisa_aux_shift0001_19_213_424 : STD_LOGIC; 
  signal mantisa_aux_shift0001_19_216_425 : STD_LOGIC; 
  signal mantisa_aux_shift0001_19_32 : STD_LOGIC; 
  signal mantisa_aux_shift0001_19_321_427 : STD_LOGIC; 
  signal mantisa_aux_shift0001_19_322_428 : STD_LOGIC; 
  signal mantisa_aux_shift0001_19_68_429 : STD_LOGIC; 
  signal mantisa_aux_shift0001_20_10_432 : STD_LOGIC; 
  signal mantisa_aux_shift0001_20_331 : STD_LOGIC; 
  signal mantisa_aux_shift0001_20_38 : STD_LOGIC; 
  signal mantisa_aux_shift0001_20_54_435 : STD_LOGIC; 
  signal mantisa_aux_shift0001_21_1_437 : STD_LOGIC; 
  signal mantisa_aux_shift0001_21_16_438 : STD_LOGIC; 
  signal mantisa_aux_shift0001_21_3 : STD_LOGIC; 
  signal mantisa_aux_shift0001_21_31_440 : STD_LOGIC; 
  signal mantisa_aux_shift0001_21_40_441 : STD_LOGIC; 
  signal mantisa_aux_shift0001_21_6139 : STD_LOGIC; 
  signal mantisa_aux_shift0001_21_61391_443 : STD_LOGIC; 
  signal mantisa_aux_shift0001_21_67_444 : STD_LOGIC; 
  signal mantisa_aux_shift0001_22_131 : STD_LOGIC; 
  signal mantisa_aux_shift0001_22_1311_447 : STD_LOGIC; 
  signal mantisa_aux_shift0001_22_1312_448 : STD_LOGIC; 
  signal mantisa_aux_shift0001_22_64 : STD_LOGIC; 
  signal mantisa_aux_shift0001_22_641_450 : STD_LOGIC; 
  signal mantisa_aux_shift0001_22_642_451 : STD_LOGIC; 
  signal mantisa_aux_shift0001_8_1 : STD_LOGIC; 
  signal mantisa_aux_shift0001_8_11_460 : STD_LOGIC; 
  signal mantisa_desnormalizada_0_IBUF_486 : STD_LOGIC; 
  signal mantisa_desnormalizada_10_IBUF_487 : STD_LOGIC; 
  signal mantisa_desnormalizada_11_IBUF_488 : STD_LOGIC; 
  signal mantisa_desnormalizada_12_IBUF_489 : STD_LOGIC; 
  signal mantisa_desnormalizada_13_IBUF_490 : STD_LOGIC; 
  signal mantisa_desnormalizada_14_IBUF_491 : STD_LOGIC; 
  signal mantisa_desnormalizada_15_IBUF_492 : STD_LOGIC; 
  signal mantisa_desnormalizada_16_IBUF_493 : STD_LOGIC; 
  signal mantisa_desnormalizada_17_IBUF_494 : STD_LOGIC; 
  signal mantisa_desnormalizada_18_IBUF_495 : STD_LOGIC; 
  signal mantisa_desnormalizada_19_IBUF_496 : STD_LOGIC; 
  signal mantisa_desnormalizada_1_IBUF_497 : STD_LOGIC; 
  signal mantisa_desnormalizada_20_IBUF_498 : STD_LOGIC; 
  signal mantisa_desnormalizada_21_IBUF_499 : STD_LOGIC; 
  signal mantisa_desnormalizada_22_IBUF_500 : STD_LOGIC; 
  signal mantisa_desnormalizada_2_IBUF_501 : STD_LOGIC; 
  signal mantisa_desnormalizada_3_IBUF_502 : STD_LOGIC; 
  signal mantisa_desnormalizada_4_IBUF_503 : STD_LOGIC; 
  signal mantisa_desnormalizada_5_IBUF_504 : STD_LOGIC; 
  signal mantisa_desnormalizada_6_IBUF_505 : STD_LOGIC; 
  signal mantisa_desnormalizada_7_IBUF_506 : STD_LOGIC; 
  signal mantisa_desnormalizada_8_IBUF_507 : STD_LOGIC; 
  signal mantisa_desnormalizada_9_IBUF_508 : STD_LOGIC; 
  signal mantisa_normalizada_0_OBUF_532 : STD_LOGIC; 
  signal mantisa_normalizada_10_OBUF_533 : STD_LOGIC; 
  signal mantisa_normalizada_11_OBUF_534 : STD_LOGIC; 
  signal mantisa_normalizada_12_OBUF_535 : STD_LOGIC; 
  signal mantisa_normalizada_13_OBUF_536 : STD_LOGIC; 
  signal mantisa_normalizada_14_OBUF_537 : STD_LOGIC; 
  signal mantisa_normalizada_15_OBUF_538 : STD_LOGIC; 
  signal mantisa_normalizada_16_OBUF_539 : STD_LOGIC; 
  signal mantisa_normalizada_17_OBUF_540 : STD_LOGIC; 
  signal mantisa_normalizada_18_OBUF_541 : STD_LOGIC; 
  signal mantisa_normalizada_19_OBUF_542 : STD_LOGIC; 
  signal mantisa_normalizada_1_OBUF_543 : STD_LOGIC; 
  signal mantisa_normalizada_20_OBUF_544 : STD_LOGIC; 
  signal mantisa_normalizada_21_OBUF_545 : STD_LOGIC; 
  signal mantisa_normalizada_22_OBUF_546 : STD_LOGIC; 
  signal mantisa_normalizada_2_OBUF_547 : STD_LOGIC; 
  signal mantisa_normalizada_3_OBUF_548 : STD_LOGIC; 
  signal mantisa_normalizada_4_OBUF_549 : STD_LOGIC; 
  signal mantisa_normalizada_5_OBUF_550 : STD_LOGIC; 
  signal mantisa_normalizada_6_OBUF_551 : STD_LOGIC; 
  signal mantisa_normalizada_7_OBUF_552 : STD_LOGIC; 
  signal mantisa_normalizada_8_OBUF_553 : STD_LOGIC; 
  signal mantisa_normalizada_9_OBUF_554 : STD_LOGIC; 
  signal Madd_contador_ceros_addsub0000_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Madd_contador_ceros_addsub0007_cy : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal Madd_contador_ceros_addsub0007_lut : STD_LOGIC_VECTOR ( 2 downto 1 ); 
  signal Madd_contador_ceros_addsub0011_cy : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Madd_contador_ceros_addsub0014_cy : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal Madd_contador_ceros_addsub0014_lut : STD_LOGIC_VECTOR ( 5 downto 1 ); 
  signal Madd_contador_ceros_addsub0015_cy : STD_LOGIC_VECTOR ( 3 downto 2 ); 
  signal Madd_contador_ceros_addsub0015_lut : STD_LOGIC_VECTOR ( 4 downto 3 ); 
  signal Madd_contador_ceros_addsub0016_cy : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal Madd_contador_ceros_addsub0016_lut : STD_LOGIC_VECTOR ( 3 downto 1 ); 
  signal Madd_contador_ceros_addsub0017_cy : STD_LOGIC_VECTOR ( 4 downto 4 ); 
  signal Madd_contador_ceros_addsub0017_lut : STD_LOGIC_VECTOR ( 6 downto 5 ); 
  signal Madd_contador_ceros_addsub0018_cy : STD_LOGIC_VECTOR ( 4 downto 4 ); 
  signal Madd_contador_ceros_addsub0018_lut : STD_LOGIC_VECTOR ( 5 downto 5 ); 
  signal Madd_contador_ceros_addsub0019_cy : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Madd_contador_ceros_addsub0019_lut : STD_LOGIC_VECTOR ( 4 downto 1 ); 
  signal Madd_contador_ceros_addsub0020_cy : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Madd_contador_ceros_addsub0020_lut : STD_LOGIC_VECTOR ( 4 downto 1 ); 
  signal Madd_contador_ceros_addsub0021_cy : STD_LOGIC_VECTOR ( 5 downto 4 ); 
  signal Madd_contador_ceros_addsub0021_lut : STD_LOGIC_VECTOR ( 7 downto 5 ); 
  signal Madd_contador_ceros_addsub0022_cy : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal Madd_contador_ceros_addsub0022_lut : STD_LOGIC_VECTOR ( 4 downto 4 ); 
  signal Mcompar_error_cmp_gt0000_cy : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Mcompar_error_cmp_gt0000_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Mcompar_mantisa_aux_cmp_lt0000_cy : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Mcompar_mantisa_aux_cmp_lt0000_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Msub_exponente_out_addsub0000_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal Msub_exponente_out_addsub0000_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal contador_ceros_mux0030 : STD_LOGIC_VECTOR ( 4 downto 4 ); 
  signal contador_ceros_mux0046 : STD_LOGIC_VECTOR ( 7 downto 5 ); 
  signal exponente_out_addsub0000 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal mantisa_aux : STD_LOGIC_VECTOR ( 22 downto 0 ); 
  signal mantisa_aux_shift0001 : STD_LOGIC_VECTOR ( 22 downto 0 ); 
begin
  XST_VCC : VCC
    port map (
      P => N1
    );
  Msub_exponente_out_addsub0000_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => exponente_in_0_IBUF_343,
      I1 => contador_ceros_mux0046_0_1_323,
      O => Msub_exponente_out_addsub0000_lut(0)
    );
  Msub_exponente_out_addsub0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => exponente_in_0_IBUF_343,
      S => Msub_exponente_out_addsub0000_lut(0),
      O => Msub_exponente_out_addsub0000_cy(0)
    );
  Msub_exponente_out_addsub0000_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => Msub_exponente_out_addsub0000_lut(0),
      O => exponente_out_addsub0000(0)
    );
  Msub_exponente_out_addsub0000_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => exponente_in_1_IBUF_344,
      I1 => contador_ceros_mux0046_1_1,
      O => Msub_exponente_out_addsub0000_lut(1)
    );
  Msub_exponente_out_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => Msub_exponente_out_addsub0000_cy(0),
      DI => exponente_in_1_IBUF_344,
      S => Msub_exponente_out_addsub0000_lut(1),
      O => Msub_exponente_out_addsub0000_cy(1)
    );
  Msub_exponente_out_addsub0000_xor_1_Q : XORCY
    port map (
      CI => Msub_exponente_out_addsub0000_cy(0),
      LI => Msub_exponente_out_addsub0000_lut(1),
      O => exponente_out_addsub0000(1)
    );
  Msub_exponente_out_addsub0000_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => exponente_in_2_IBUF_345,
      I1 => contador_ceros_mux0046_2_1,
      O => Msub_exponente_out_addsub0000_lut(2)
    );
  Msub_exponente_out_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => Msub_exponente_out_addsub0000_cy(1),
      DI => exponente_in_2_IBUF_345,
      S => Msub_exponente_out_addsub0000_lut(2),
      O => Msub_exponente_out_addsub0000_cy(2)
    );
  Msub_exponente_out_addsub0000_xor_2_Q : XORCY
    port map (
      CI => Msub_exponente_out_addsub0000_cy(1),
      LI => Msub_exponente_out_addsub0000_lut(2),
      O => exponente_out_addsub0000(2)
    );
  Msub_exponente_out_addsub0000_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => exponente_in_3_IBUF_346,
      I1 => contador_ceros_mux0046_3_1,
      O => Msub_exponente_out_addsub0000_lut(3)
    );
  Msub_exponente_out_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => Msub_exponente_out_addsub0000_cy(2),
      DI => exponente_in_3_IBUF_346,
      S => Msub_exponente_out_addsub0000_lut(3),
      O => Msub_exponente_out_addsub0000_cy(3)
    );
  Msub_exponente_out_addsub0000_xor_3_Q : XORCY
    port map (
      CI => Msub_exponente_out_addsub0000_cy(2),
      LI => Msub_exponente_out_addsub0000_lut(3),
      O => exponente_out_addsub0000(3)
    );
  Msub_exponente_out_addsub0000_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => exponente_in_4_IBUF_347,
      I1 => contador_ceros_mux0046_4_1,
      O => Msub_exponente_out_addsub0000_lut(4)
    );
  Msub_exponente_out_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => Msub_exponente_out_addsub0000_cy(3),
      DI => exponente_in_4_IBUF_347,
      S => Msub_exponente_out_addsub0000_lut(4),
      O => Msub_exponente_out_addsub0000_cy(4)
    );
  Msub_exponente_out_addsub0000_xor_4_Q : XORCY
    port map (
      CI => Msub_exponente_out_addsub0000_cy(3),
      LI => Msub_exponente_out_addsub0000_lut(4),
      O => exponente_out_addsub0000(4)
    );
  Msub_exponente_out_addsub0000_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => exponente_in_5_IBUF_348,
      I1 => contador_ceros_mux0046(5),
      O => Msub_exponente_out_addsub0000_lut(5)
    );
  Msub_exponente_out_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => Msub_exponente_out_addsub0000_cy(4),
      DI => exponente_in_5_IBUF_348,
      S => Msub_exponente_out_addsub0000_lut(5),
      O => Msub_exponente_out_addsub0000_cy(5)
    );
  Msub_exponente_out_addsub0000_xor_5_Q : XORCY
    port map (
      CI => Msub_exponente_out_addsub0000_cy(4),
      LI => Msub_exponente_out_addsub0000_lut(5),
      O => exponente_out_addsub0000(5)
    );
  Msub_exponente_out_addsub0000_lut_6_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => exponente_in_6_IBUF_349,
      I1 => contador_ceros_mux0046(6),
      O => Msub_exponente_out_addsub0000_lut(6)
    );
  Msub_exponente_out_addsub0000_cy_6_Q : MUXCY
    port map (
      CI => Msub_exponente_out_addsub0000_cy(5),
      DI => exponente_in_6_IBUF_349,
      S => Msub_exponente_out_addsub0000_lut(6),
      O => Msub_exponente_out_addsub0000_cy(6)
    );
  Msub_exponente_out_addsub0000_xor_6_Q : XORCY
    port map (
      CI => Msub_exponente_out_addsub0000_cy(5),
      LI => Msub_exponente_out_addsub0000_lut(6),
      O => exponente_out_addsub0000(6)
    );
  Msub_exponente_out_addsub0000_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => exponente_in_7_IBUF_350,
      I1 => contador_ceros_mux0046(7),
      O => Msub_exponente_out_addsub0000_lut(7)
    );
  Msub_exponente_out_addsub0000_xor_7_Q : XORCY
    port map (
      CI => Msub_exponente_out_addsub0000_cy(6),
      LI => Msub_exponente_out_addsub0000_lut(7),
      O => exponente_out_addsub0000(7)
    );
  Mcompar_error_cmp_gt0000_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => exponente_in_0_IBUF_343,
      I1 => contador_ceros_mux0046_0_1_323,
      O => Mcompar_error_cmp_gt0000_lut(0)
    );
  Mcompar_error_cmp_gt0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => exponente_in_0_IBUF_343,
      S => Mcompar_error_cmp_gt0000_lut(0),
      O => Mcompar_error_cmp_gt0000_cy(0)
    );
  Mcompar_error_cmp_gt0000_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => exponente_in_1_IBUF_344,
      I1 => contador_ceros_mux0046_1_1,
      O => Mcompar_error_cmp_gt0000_lut(1)
    );
  Mcompar_error_cmp_gt0000_cy_1_Q : MUXCY
    port map (
      CI => Mcompar_error_cmp_gt0000_cy(0),
      DI => exponente_in_1_IBUF_344,
      S => Mcompar_error_cmp_gt0000_lut(1),
      O => Mcompar_error_cmp_gt0000_cy(1)
    );
  Mcompar_error_cmp_gt0000_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => exponente_in_2_IBUF_345,
      I1 => contador_ceros_mux0046_2_1,
      O => Mcompar_error_cmp_gt0000_lut(2)
    );
  Mcompar_error_cmp_gt0000_cy_2_Q : MUXCY
    port map (
      CI => Mcompar_error_cmp_gt0000_cy(1),
      DI => exponente_in_2_IBUF_345,
      S => Mcompar_error_cmp_gt0000_lut(2),
      O => Mcompar_error_cmp_gt0000_cy(2)
    );
  Mcompar_error_cmp_gt0000_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => exponente_in_3_IBUF_346,
      I1 => contador_ceros_mux0046_3_1,
      O => Mcompar_error_cmp_gt0000_lut(3)
    );
  Mcompar_error_cmp_gt0000_cy_3_Q : MUXCY
    port map (
      CI => Mcompar_error_cmp_gt0000_cy(2),
      DI => exponente_in_3_IBUF_346,
      S => Mcompar_error_cmp_gt0000_lut(3),
      O => Mcompar_error_cmp_gt0000_cy(3)
    );
  Mcompar_error_cmp_gt0000_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => exponente_in_4_IBUF_347,
      I1 => contador_ceros_mux0046_4_1,
      O => Mcompar_error_cmp_gt0000_lut(4)
    );
  Mcompar_error_cmp_gt0000_cy_4_Q : MUXCY
    port map (
      CI => Mcompar_error_cmp_gt0000_cy(3),
      DI => exponente_in_4_IBUF_347,
      S => Mcompar_error_cmp_gt0000_lut(4),
      O => Mcompar_error_cmp_gt0000_cy(4)
    );
  Mcompar_error_cmp_gt0000_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => exponente_in_5_IBUF_348,
      I1 => contador_ceros_mux0046(5),
      O => Mcompar_error_cmp_gt0000_lut(5)
    );
  Mcompar_error_cmp_gt0000_cy_5_Q : MUXCY
    port map (
      CI => Mcompar_error_cmp_gt0000_cy(4),
      DI => exponente_in_5_IBUF_348,
      S => Mcompar_error_cmp_gt0000_lut(5),
      O => Mcompar_error_cmp_gt0000_cy(5)
    );
  Mcompar_error_cmp_gt0000_lut_6_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => exponente_in_6_IBUF_349,
      I1 => contador_ceros_mux0046(6),
      O => Mcompar_error_cmp_gt0000_lut(6)
    );
  Mcompar_error_cmp_gt0000_cy_6_Q : MUXCY
    port map (
      CI => Mcompar_error_cmp_gt0000_cy(5),
      DI => exponente_in_6_IBUF_349,
      S => Mcompar_error_cmp_gt0000_lut(6),
      O => Mcompar_error_cmp_gt0000_cy(6)
    );
  Mcompar_error_cmp_gt0000_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => exponente_in_7_IBUF_350,
      I1 => contador_ceros_mux0046(7),
      O => Mcompar_error_cmp_gt0000_lut(7)
    );
  Mcompar_error_cmp_gt0000_cy_7_Q : MUXCY
    port map (
      CI => Mcompar_error_cmp_gt0000_cy(6),
      DI => exponente_in_7_IBUF_350,
      S => Mcompar_error_cmp_gt0000_lut(7),
      O => Mcompar_error_cmp_gt0000_cy(7)
    );
  Mcompar_mantisa_aux_cmp_lt0000_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => contador_ceros_mux0046_0_1_323,
      I1 => exponente_in_0_IBUF_343,
      O => Mcompar_mantisa_aux_cmp_lt0000_lut(0)
    );
  Mcompar_mantisa_aux_cmp_lt0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => contador_ceros_mux0046_0_1_323,
      S => Mcompar_mantisa_aux_cmp_lt0000_lut(0),
      O => Mcompar_mantisa_aux_cmp_lt0000_cy(0)
    );
  Mcompar_mantisa_aux_cmp_lt0000_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => contador_ceros_mux0046_1_1,
      I1 => exponente_in_1_IBUF_344,
      O => Mcompar_mantisa_aux_cmp_lt0000_lut(1)
    );
  Mcompar_mantisa_aux_cmp_lt0000_cy_1_Q : MUXCY
    port map (
      CI => Mcompar_mantisa_aux_cmp_lt0000_cy(0),
      DI => contador_ceros_mux0046_1_1,
      S => Mcompar_mantisa_aux_cmp_lt0000_lut(1),
      O => Mcompar_mantisa_aux_cmp_lt0000_cy(1)
    );
  Mcompar_mantisa_aux_cmp_lt0000_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => contador_ceros_mux0046_2_1,
      I1 => exponente_in_2_IBUF_345,
      O => Mcompar_mantisa_aux_cmp_lt0000_lut(2)
    );
  Mcompar_mantisa_aux_cmp_lt0000_cy_2_Q : MUXCY
    port map (
      CI => Mcompar_mantisa_aux_cmp_lt0000_cy(1),
      DI => contador_ceros_mux0046_2_1,
      S => Mcompar_mantisa_aux_cmp_lt0000_lut(2),
      O => Mcompar_mantisa_aux_cmp_lt0000_cy(2)
    );
  Mcompar_mantisa_aux_cmp_lt0000_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => contador_ceros_mux0046_3_1,
      I1 => exponente_in_3_IBUF_346,
      O => Mcompar_mantisa_aux_cmp_lt0000_lut(3)
    );
  Mcompar_mantisa_aux_cmp_lt0000_cy_3_Q : MUXCY
    port map (
      CI => Mcompar_mantisa_aux_cmp_lt0000_cy(2),
      DI => contador_ceros_mux0046_3_1,
      S => Mcompar_mantisa_aux_cmp_lt0000_lut(3),
      O => Mcompar_mantisa_aux_cmp_lt0000_cy(3)
    );
  Mcompar_mantisa_aux_cmp_lt0000_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => contador_ceros_mux0046_4_1,
      I1 => exponente_in_4_IBUF_347,
      O => Mcompar_mantisa_aux_cmp_lt0000_lut(4)
    );
  Mcompar_mantisa_aux_cmp_lt0000_cy_4_Q : MUXCY
    port map (
      CI => Mcompar_mantisa_aux_cmp_lt0000_cy(3),
      DI => contador_ceros_mux0046_4_1,
      S => Mcompar_mantisa_aux_cmp_lt0000_lut(4),
      O => Mcompar_mantisa_aux_cmp_lt0000_cy(4)
    );
  Mcompar_mantisa_aux_cmp_lt0000_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => contador_ceros_mux0046(5),
      I1 => exponente_in_5_IBUF_348,
      O => Mcompar_mantisa_aux_cmp_lt0000_lut(5)
    );
  Mcompar_mantisa_aux_cmp_lt0000_cy_5_Q : MUXCY
    port map (
      CI => Mcompar_mantisa_aux_cmp_lt0000_cy(4),
      DI => contador_ceros_mux0046(5),
      S => Mcompar_mantisa_aux_cmp_lt0000_lut(5),
      O => Mcompar_mantisa_aux_cmp_lt0000_cy(5)
    );
  Mcompar_mantisa_aux_cmp_lt0000_lut_6_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => contador_ceros_mux0046(6),
      I1 => exponente_in_6_IBUF_349,
      O => Mcompar_mantisa_aux_cmp_lt0000_lut(6)
    );
  Mcompar_mantisa_aux_cmp_lt0000_cy_6_Q : MUXCY
    port map (
      CI => Mcompar_mantisa_aux_cmp_lt0000_cy(5),
      DI => contador_ceros_mux0046(6),
      S => Mcompar_mantisa_aux_cmp_lt0000_lut(6),
      O => Mcompar_mantisa_aux_cmp_lt0000_cy(6)
    );
  Mcompar_mantisa_aux_cmp_lt0000_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => contador_ceros_mux0046(7),
      I1 => exponente_in_7_IBUF_350,
      O => Mcompar_mantisa_aux_cmp_lt0000_lut(7)
    );
  Mcompar_mantisa_aux_cmp_lt0000_cy_7_Q : MUXCY
    port map (
      CI => Mcompar_mantisa_aux_cmp_lt0000_cy(6),
      DI => contador_ceros_mux0046(7),
      S => Mcompar_mantisa_aux_cmp_lt0000_lut(7),
      O => Mcompar_mantisa_aux_cmp_lt0000_cy_7_1
    );
  mantisa_aux_0 : LD
    port map (
      D => mantisa_aux_shift0001(0),
      G => mantisa_aux_cmp_lt0000,
      Q => mantisa_aux(0)
    );
  mantisa_aux_1 : LD
    port map (
      D => mantisa_aux_shift0001(1),
      G => mantisa_aux_cmp_lt0000,
      Q => mantisa_aux(1)
    );
  mantisa_aux_2 : LD
    port map (
      D => mantisa_aux_shift0001(2),
      G => mantisa_aux_cmp_lt0000,
      Q => mantisa_aux(2)
    );
  mantisa_aux_3 : LD
    port map (
      D => mantisa_aux_shift0001(3),
      G => mantisa_aux_cmp_lt0000,
      Q => mantisa_aux(3)
    );
  mantisa_aux_4 : LD
    port map (
      D => mantisa_aux_shift0001(4),
      G => mantisa_aux_cmp_lt0000,
      Q => mantisa_aux(4)
    );
  mantisa_aux_5 : LD
    port map (
      D => mantisa_aux_shift0001(5),
      G => mantisa_aux_cmp_lt0000,
      Q => mantisa_aux(5)
    );
  mantisa_aux_6 : LD
    port map (
      D => mantisa_aux_shift0001(6),
      G => mantisa_aux_cmp_lt0000,
      Q => mantisa_aux(6)
    );
  mantisa_aux_7 : LD
    port map (
      D => mantisa_aux_shift0001(7),
      G => mantisa_aux_cmp_lt0000,
      Q => mantisa_aux(7)
    );
  mantisa_aux_8 : LD
    port map (
      D => mantisa_aux_shift0001(8),
      G => mantisa_aux_cmp_lt0000,
      Q => mantisa_aux(8)
    );
  mantisa_aux_9 : LD
    port map (
      D => mantisa_aux_shift0001(9),
      G => mantisa_aux_cmp_lt0000,
      Q => mantisa_aux(9)
    );
  mantisa_aux_10 : LD
    port map (
      D => mantisa_aux_shift0001(10),
      G => mantisa_aux_cmp_lt0000,
      Q => mantisa_aux(10)
    );
  mantisa_aux_11 : LD
    port map (
      D => mantisa_aux_shift0001(11),
      G => mantisa_aux_cmp_lt0000,
      Q => mantisa_aux(11)
    );
  mantisa_aux_12 : LD
    port map (
      D => mantisa_aux_shift0001(12),
      G => mantisa_aux_cmp_lt0000,
      Q => mantisa_aux(12)
    );
  mantisa_aux_13 : LD
    port map (
      D => mantisa_aux_shift0001(13),
      G => mantisa_aux_cmp_lt0000,
      Q => mantisa_aux(13)
    );
  mantisa_aux_14 : LD
    port map (
      D => mantisa_aux_shift0001(14),
      G => mantisa_aux_cmp_lt0000,
      Q => mantisa_aux(14)
    );
  mantisa_aux_15 : LD
    port map (
      D => mantisa_aux_shift0001(15),
      G => mantisa_aux_cmp_lt0000,
      Q => mantisa_aux(15)
    );
  mantisa_aux_16 : LD
    port map (
      D => mantisa_aux_shift0001(16),
      G => mantisa_aux_cmp_lt0000,
      Q => mantisa_aux(16)
    );
  mantisa_aux_17 : LD
    port map (
      D => mantisa_aux_shift0001(17),
      G => mantisa_aux_cmp_lt0000,
      Q => mantisa_aux(17)
    );
  mantisa_aux_18 : LD
    port map (
      D => mantisa_aux_shift0001(18),
      G => mantisa_aux_cmp_lt0000,
      Q => mantisa_aux(18)
    );
  mantisa_aux_19 : LD
    port map (
      D => mantisa_aux_shift0001(19),
      G => mantisa_aux_cmp_lt0000,
      Q => mantisa_aux(19)
    );
  mantisa_aux_20 : LD
    port map (
      D => mantisa_aux_shift0001(20),
      G => mantisa_aux_cmp_lt0000,
      Q => mantisa_aux(20)
    );
  mantisa_aux_21 : LD
    port map (
      D => mantisa_aux_shift0001(21),
      G => mantisa_aux_cmp_lt0000,
      Q => mantisa_aux(21)
    );
  mantisa_aux_22 : LD
    port map (
      D => mantisa_aux_shift0001(22),
      G => mantisa_aux_cmp_lt0000,
      Q => mantisa_aux(22)
    );
  mantisa_aux_shift0001_19_12 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => contador_ceros_mux0046_0_1_323,
      I1 => N122,
      I2 => N10,
      O => N4
    );
  mantisa_aux_shift0001_13_11 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => contador_ceros_mux0046_2_1,
      I1 => Sh5,
      I2 => N1511,
      O => N110
    );
  mantisa_aux_shift0001_20_33_SW0 : LUT4
    generic map(
      INIT => X"C9CC"
    )
    port map (
      I0 => N87,
      I1 => Madd_contador_ceros_addsub0019_cy(0),
      I2 => mantisa_desnormalizada_2_IBUF_501,
      I3 => mantisa_desnormalizada_1_IBUF_497,
      O => N159
    );
  mantisa_aux_shift0001_20_33 : LUT4
    generic map(
      INIT => X"0060"
    )
    port map (
      I0 => N271,
      I1 => Madd_contador_ceros_addsub0019_lut(1),
      I2 => mantisa_desnormalizada_0_IBUF_486,
      I3 => N159,
      O => N162
    );
  mantisa_aux_shift0001_19_211 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => contador_ceros_mux0046_0_1_323,
      I1 => mantisa_desnormalizada_15_IBUF_492,
      I2 => mantisa_desnormalizada_14_IBUF_491,
      O => N95
    );
  mantisa_aux_shift0001_9_11_SW0 : LUT4
    generic map(
      INIT => X"FC60"
    )
    port map (
      I0 => N64,
      I1 => Madd_contador_ceros_addsub0019_cy(0),
      I2 => mantisa_desnormalizada_1_IBUF_497,
      I3 => mantisa_desnormalizada_0_IBUF_486,
      O => N161
    );
  mantisa_aux_shift0001_9_11 : LUT3
    generic map(
      INIT => X"60"
    )
    port map (
      I0 => N271,
      I1 => Madd_contador_ceros_addsub0019_lut(1),
      I2 => N161,
      O => N1511
    );
  mantisa_aux_shift0001_13_21 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => contador_ceros_mux0046_2_1,
      I1 => N74,
      I2 => N41,
      O => N134
    );
  Sh811 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => contador_ceros_mux0046_1_1,
      I1 => mantisa_desnormalizada_8_IBUF_507,
      I2 => mantisa_desnormalizada_6_IBUF_505,
      O => N1210
    );
  Sh81 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => contador_ceros_mux0046_0_1_323,
      I1 => N1210,
      I2 => N921,
      O => Sh8
    );
  Sh721 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => contador_ceros_mux0046_1_1,
      I1 => mantisa_desnormalizada_7_IBUF_506,
      I2 => mantisa_desnormalizada_5_IBUF_504,
      O => N921
    );
  Sh711 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => contador_ceros_mux0046_1_1,
      I1 => mantisa_desnormalizada_6_IBUF_505,
      I2 => mantisa_desnormalizada_4_IBUF_503,
      O => N115
    );
  Sh71 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => contador_ceros_mux0046_0_1_323,
      I1 => N921,
      I2 => N115,
      O => Sh7
    );
  Sh61 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => contador_ceros_mux0046_0_1_323,
      I1 => N115,
      I2 => N123,
      O => Sh6
    );
  Sh51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => contador_ceros_mux0046_0_1_323,
      I1 => N123,
      I2 => N132,
      O => Sh5
    );
  Sh41 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => contador_ceros_mux0046_0_1_323,
      I1 => N132,
      I2 => N122,
      O => Sh4
    );
  mantisa_aux_shift0001_22_2_SW0 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => contador_ceros_mux0046_0_1_323,
      I1 => mantisa_desnormalizada_14_IBUF_491,
      I2 => mantisa_desnormalizada_13_IBUF_490,
      O => mantisa_aux_shift0001_20_38
    );
  mantisa_aux_shift0001_22_2_SW1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => contador_ceros_mux0046_0_1_323,
      I1 => mantisa_desnormalizada_12_IBUF_489,
      I2 => mantisa_desnormalizada_11_IBUF_488,
      O => N167
    );
  mantisa_aux_shift0001_22_2 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => contador_ceros_mux0046_1_1,
      I1 => mantisa_aux_shift0001_20_38,
      I2 => N167,
      O => N43
    );
  mantisa_aux_shift0001_21_3_SW1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => contador_ceros_mux0046_0_1_323,
      I1 => mantisa_desnormalizada_11_IBUF_488,
      I2 => mantisa_desnormalizada_10_IBUF_487,
      O => N170
    );
  mantisa_aux_shift0001_20_2_SW1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => contador_ceros_mux0046_0_1_323,
      I1 => mantisa_desnormalizada_10_IBUF_487,
      I2 => mantisa_desnormalizada_9_IBUF_508,
      O => N173
    );
  mantisa_aux_shift0001_20_2 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => contador_ceros_mux0046_1_1,
      I1 => N167,
      I2 => N173,
      O => N42
    );
  Sh11_SW1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => contador_ceros_mux0046_0_1_323,
      I1 => mantisa_desnormalizada_9_IBUF_508,
      I2 => mantisa_desnormalizada_8_IBUF_507,
      O => N176
    );
  mantisa_aux_shift0001_19_213 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => contador_ceros_mux0046_1_1,
      I1 => contador_ceros_mux0046_0_1_323,
      I2 => mantisa_desnormalizada_13_IBUF_490,
      I3 => mantisa_desnormalizada_12_IBUF_489,
      O => mantisa_aux_shift0001_19_213_424
    );
  mantisa_aux_shift0001_19_240 : LUT4
    generic map(
      INIT => X"FE54"
    )
    port map (
      I0 => contador_ceros_mux0046_3_1,
      I1 => mantisa_aux_shift0001_19_213_424,
      I2 => mantisa_aux_shift0001_19_216_425,
      I3 => Sh7,
      O => N46
    );
  mantisa_aux_shift0001_21_621 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => contador_ceros_mux0046_1_1,
      I1 => mantisa_desnormalizada_21_IBUF_499,
      I2 => mantisa_desnormalizada_19_IBUF_496,
      O => N137
    );
  mantisa_aux_shift0001_21_51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => contador_ceros_mux0046_1_1,
      I1 => mantisa_desnormalizada_5_IBUF_504,
      I2 => mantisa_desnormalizada_3_IBUF_502,
      O => N123
    );
  mantisa_aux_shift0001_21_411 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => contador_ceros_mux0046_1_1,
      I1 => mantisa_desnormalizada_4_IBUF_503,
      I2 => mantisa_desnormalizada_2_IBUF_501,
      O => N132
    );
  mantisa_aux_shift0001_20_511 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => contador_ceros_mux0046_1_1,
      I1 => mantisa_desnormalizada_19_IBUF_496,
      I2 => mantisa_desnormalizada_17_IBUF_494,
      O => N136
    );
  mantisa_aux_shift0001_20_41 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => contador_ceros_mux0046_1_1,
      I1 => mantisa_desnormalizada_3_IBUF_502,
      I2 => mantisa_desnormalizada_1_IBUF_497,
      O => N122
    );
  mantisa_aux_shift0001_20_311 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => contador_ceros_mux0046_0_1_323,
      I1 => mantisa_desnormalizada_16_IBUF_493,
      I2 => mantisa_desnormalizada_15_IBUF_492,
      O => N113
    );
  contador_ceros_mux0046_0_1 : LUT4
    generic map(
      INIT => X"C3E1"
    )
    port map (
      I0 => mantisa_desnormalizada_0_IBUF_486,
      I1 => N64,
      I2 => Madd_contador_ceros_addsub0019_cy(0),
      I3 => mantisa_desnormalizada_1_IBUF_497,
      O => contador_ceros_mux0046_0_1_323
    );
  contador_ceros_mux0046_3_31 : LUT3
    generic map(
      INIT => X"FB"
    )
    port map (
      I0 => mantisa_desnormalizada_0_IBUF_486,
      I1 => Madd_contador_ceros_addsub0019_cy(0),
      I2 => mantisa_desnormalizada_1_IBUF_497,
      O => N89
    );
  mantisa_aux_shift0001_22_12_SW1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => contador_ceros_mux0046_0_1_323,
      I1 => mantisa_desnormalizada_8_IBUF_507,
      I2 => mantisa_desnormalizada_7_IBUF_506,
      O => N184
    );
  mantisa_aux_shift0001_22_12 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => contador_ceros_mux0046_1_1,
      I1 => N173,
      I2 => N184,
      O => N77
    );
  mantisa_aux_shift0001_19_111 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => contador_ceros_mux0046_1_1,
      I1 => mantisa_desnormalizada_2_IBUF_501,
      I2 => mantisa_desnormalizada_0_IBUF_486,
      O => N10
    );
  mantisa_aux_shift0001_22_111 : LUT4
    generic map(
      INIT => X"44E4"
    )
    port map (
      I0 => contador_ceros_mux0046_0_1_323,
      I1 => N10,
      I2 => mantisa_desnormalizada_1_IBUF_497,
      I3 => contador_ceros_mux0046_1_1,
      O => N44
    );
  mantisa_aux_shift0001_20_3311 : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => contador_ceros_mux0046_1_1,
      I1 => N113,
      I2 => contador_ceros_mux0046_4_1,
      I3 => mantisa_aux_shift0001_20_38,
      O => mantisa_aux_shift0001_20_331
    );
  mantisa_aux_shift0001_21_4_SW0 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => contador_ceros_mux0046_1_1,
      I1 => mantisa_desnormalizada_20_IBUF_498,
      I2 => mantisa_desnormalizada_18_IBUF_495,
      O => N188
    );
  mantisa_aux_shift0001_21_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => contador_ceros_mux0046_4_1,
      I1 => N188,
      I2 => N132,
      O => N103
    );
  contador_ceros_mux0026_4_4 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => mantisa_desnormalizada_11_IBUF_488,
      I1 => mantisa_desnormalizada_10_IBUF_487,
      O => contador_ceros_mux0026_3_81
    );
  contador_ceros_mux0026_4_19 : LUT3
    generic map(
      INIT => X"32"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0007_lut(2),
      I1 => mantisa_desnormalizada_12_IBUF_489,
      I2 => Madd_contador_ceros_addsub0007_cy(1),
      O => contador_ceros_mux0026_3_96
    );
  contador_ceros_mux0026_4_23 : LUT4
    generic map(
      INIT => X"F020"
    )
    port map (
      I0 => contador_ceros_mux0026_3_81,
      I1 => Madd_contador_ceros_addsub0007_lut(1),
      I2 => contador_ceros_mux0026_3_96,
      I3 => N57,
      O => contador_ceros_mux0026_4_23_283
    );
  contador_ceros_mux0030_5_1 : LUT4
    generic map(
      INIT => X"0B02"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0015_cy(3),
      I1 => N54,
      I2 => N155,
      I3 => Madd_contador_ceros_addsub0015_lut(4),
      O => Madd_contador_ceros_addsub0014_lut(5)
    );
  contador_ceros_mux0046_1_211 : LUT3
    generic map(
      INIT => X"F4"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0019_cy(0),
      I1 => mantisa_desnormalizada_1_IBUF_497,
      I2 => N64,
      O => N271
    );
  contador_ceros_mux0040_2_11 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => mantisa_desnormalizada_3_IBUF_502,
      I1 => Madd_contador_ceros_addsub0020_cy(0),
      O => N02
    );
  mantisa_aux_shift0001_18_SW0 : LUT4
    generic map(
      INIT => X"FF1B"
    )
    port map (
      I0 => contador_ceros_mux0046_3_1,
      I1 => N43,
      I2 => Sh6,
      I3 => contador_ceros_mux0046_4_1,
      O => N195
    );
  mantisa_aux_shift0001_18_Q : LUT4
    generic map(
      INIT => X"0454"
    )
    port map (
      I0 => mantisa_aux_or0000,
      I1 => N6,
      I2 => contador_ceros_mux0046_2_1,
      I3 => N195,
      O => mantisa_aux_shift0001(18)
    );
  mantisa_aux_shift0001_16_SW0 : LUT4
    generic map(
      INIT => X"FF1B"
    )
    port map (
      I0 => contador_ceros_mux0046_3_1,
      I1 => N42,
      I2 => Sh4,
      I3 => contador_ceros_mux0046_4_1,
      O => N197
    );
  mantisa_aux_shift0001_16_Q : LUT4
    generic map(
      INIT => X"0454"
    )
    port map (
      I0 => mantisa_aux_or0000,
      I1 => N75,
      I2 => contador_ceros_mux0046_2_1,
      I3 => N197,
      O => mantisa_aux_shift0001(16)
    );
  mantisa_aux_shift0001_21_16 : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => contador_ceros_mux0046_4_1,
      I1 => N137,
      I2 => contador_ceros_mux0046_0_1_323,
      I3 => N123,
      O => mantisa_aux_shift0001_21_16_438
    );
  mantisa_aux_shift0001_21_40 : LUT4
    generic map(
      INIT => X"FE54"
    )
    port map (
      I0 => contador_ceros_mux0046_2_1,
      I1 => mantisa_aux_shift0001_21_1_437,
      I2 => mantisa_aux_shift0001_21_16_438,
      I3 => N135,
      O => mantisa_aux_shift0001_21_40_441
    );
  mantisa_aux_shift0001_21_67 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => N134,
      I1 => contador_ceros_mux0046_3_1,
      I2 => contador_ceros_mux0046_4_1,
      O => mantisa_aux_shift0001_21_67_444
    );
  mantisa_aux_shift0001_21_88 : LUT4
    generic map(
      INIT => X"0F02"
    )
    port map (
      I0 => mantisa_aux_shift0001_21_40_441,
      I1 => contador_ceros_mux0046_3_1,
      I2 => mantisa_aux_or0000,
      I3 => mantisa_aux_shift0001_21_67_444,
      O => mantisa_aux_shift0001(21)
    );
  contador_ceros_mux0046_5_1 : LUT4
    generic map(
      INIT => X"AA69"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0021_lut(5),
      I1 => Madd_contador_ceros_addsub0021_cy(4),
      I2 => N52,
      I3 => N124,
      O => contador_ceros_mux0046(5)
    );
  Madd_contador_ceros_addsub0017_cy_4_111 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => mantisa_desnormalizada_4_IBUF_503,
      I1 => N126,
      O => N23
    );
  Madd_contador_ceros_addsub0021_cy_4_11 : LUT4
    generic map(
      INIT => X"9000"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0019_cy(0),
      I1 => N64,
      I2 => N1481,
      I3 => Madd_contador_ceros_addsub0019_lut(4),
      O => Madd_contador_ceros_addsub0021_cy(4)
    );
  mantisa_aux_shift0001_9_SW0 : LUT3
    generic map(
      INIT => X"27"
    )
    port map (
      I0 => contador_ceros_mux0046_2_1,
      I1 => Sh5,
      I2 => N41,
      O => N206
    );
  mantisa_aux_shift0001_9_Q : LUT4
    generic map(
      INIT => X"082A"
    )
    port map (
      I0 => N160,
      I1 => contador_ceros_mux0046_3_1,
      I2 => N207,
      I3 => N206,
      O => mantisa_aux_shift0001(9)
    );
  Madd_contador_ceros_addsub0015_cy_3_1133 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0011_cy(0),
      I1 => N11,
      I2 => N150,
      I3 => Madd_contador_ceros_addsub0007_lut(1),
      O => Madd_contador_ceros_addsub0015_cy_3_1133_22
    );
  contador_ceros_mux0028_0_111 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => N150,
      I1 => mantisa_desnormalizada_12_IBUF_489,
      I2 => mantisa_desnormalizada_11_IBUF_488,
      O => N1281
    );
  mantisa_aux_shift0001_15_1 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => N160,
      I1 => contador_ceros_mux0046_2_1,
      I2 => N46,
      I3 => N90,
      O => mantisa_aux_shift0001(15)
    );
  mantisa_aux_shift0001_13_1 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => N160,
      I1 => contador_ceros_mux0046_3_1,
      I2 => N134,
      I3 => N110,
      O => mantisa_aux_shift0001(13)
    );
  contador_ceros_mux0036_1_21 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0012_cy_0_Q,
      I1 => mantisa_desnormalizada_5_IBUF_504,
      I2 => mantisa_desnormalizada_6_IBUF_505,
      I3 => contador_ceros_mux0036_4_0,
      O => contador_ceros_mux0036_1_21_304
    );
  contador_ceros_mux0036_1_64 : LUT4
    generic map(
      INIT => X"FE54"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0016_lut(1),
      I1 => contador_ceros_mux0036_1_21_304,
      I2 => contador_ceros_mux0036_1_34,
      I3 => contador_ceros_mux0036_1_5_307,
      O => Madd_contador_ceros_addsub0020_lut(1)
    );
  mantisa_aux_shift0001_19_68 : LUT4
    generic map(
      INIT => X"FE54"
    )
    port map (
      I0 => contador_ceros_mux0046_2_1,
      I1 => mantisa_aux_shift0001_19_1_423,
      I2 => mantisa_aux_shift0001_19_32,
      I3 => N46,
      O => mantisa_aux_shift0001_19_68_429
    );
  mantisa_aux_or000011 : LUT3
    generic map(
      INIT => X"BF"
    )
    port map (
      I0 => mantisa_desnormalizada_0_IBUF_486,
      I1 => Madd_contador_ceros_addsub0022_cy(3),
      I2 => Madd_contador_ceros_addsub0022_lut(4),
      O => N52
    );
  contador_ceros_mux0044_4_1 : LUT3
    generic map(
      INIT => X"9C"
    )
    port map (
      I0 => N271,
      I1 => Madd_contador_ceros_addsub0019_lut(4),
      I2 => N1481,
      O => Madd_contador_ceros_addsub0022_lut(4)
    );
  contador_ceros_mux0030_4_21 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => flag_mux0013,
      I1 => mantisa_desnormalizada_9_IBUF_508,
      O => N155
    );
  contador_ceros_mux0030_4_11 : LUT4
    generic map(
      INIT => X"FDDF"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0012_cy_2_Q,
      I1 => mantisa_desnormalizada_8_IBUF_507,
      I2 => Madd_contador_ceros_addsub0015_lut(3),
      I3 => Madd_contador_ceros_addsub0015_cy(2),
      O => N54
    );
  contador_ceros_mux0040_2_1 : LUT4
    generic map(
      INIT => X"AA6A"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0020_lut(2),
      I1 => Madd_contador_ceros_addsub0020_lut(1),
      I2 => N02,
      I3 => N23,
      O => Madd_contador_ceros_addsub0019_lut(2)
    );
  contador_ceros_mux0034_6_1 : LUT4
    generic map(
      INIT => X"DC40"
    )
    port map (
      I0 => N471,
      I1 => Madd_contador_ceros_addsub0014_lut(4),
      I2 => N209,
      I3 => Madd_contador_ceros_addsub0014_cy(3),
      O => N17
    );
  Madd_contador_ceros_addsub0017_cy_4_1_SW0 : LUT4
    generic map(
      INIT => X"F7FF"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0020_lut(2),
      I1 => Madd_contador_ceros_addsub0020_lut(3),
      I2 => Madd_contador_ceros_addsub0020_cy(0),
      I3 => Madd_contador_ceros_addsub0020_lut(1),
      O => N213
    );
  Madd_contador_ceros_addsub0017_cy_4_1 : LUT4
    generic map(
      INIT => X"BA10"
    )
    port map (
      I0 => N23,
      I1 => N213,
      I2 => Madd_contador_ceros_addsub0020_lut(4),
      I3 => N151,
      O => Madd_contador_ceros_addsub0017_cy(4)
    );
  contador_ceros_mux0034_5_21 : LUT4
    generic map(
      INIT => X"F7FF"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0016_cy(1),
      I1 => Madd_contador_ceros_addsub0016_lut(2),
      I2 => mantisa_desnormalizada_6_IBUF_505,
      I3 => Madd_contador_ceros_addsub0016_lut(3),
      O => contador_ceros_mux0034_5_21_301
    );
  contador_ceros_mux0030_2_69 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => mantisa_desnormalizada_10_IBUF_487,
      I1 => Madd_contador_ceros_addsub0011_cy(0),
      I2 => mantisa_desnormalizada_9_IBUF_508,
      O => contador_ceros_mux0030_2_69_297
    );
  contador_ceros_mux0030_2_142 : LUT4
    generic map(
      INIT => X"40C0"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0011_cy(0),
      I1 => contador_ceros_mux0026_3_81,
      I2 => N73,
      I3 => mantisa_desnormalizada_9_IBUF_508,
      O => contador_ceros_mux0030_2_142_294
    );
  contador_ceros_mux0030_2_183 : LUT4
    generic map(
      INIT => X"0089"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0007_cy(1),
      I1 => Madd_contador_ceros_addsub0007_lut(2),
      I2 => N150,
      I3 => mantisa_desnormalizada_12_IBUF_489,
      O => contador_ceros_mux0030_2_183_295
    );
  Madd_contador_ceros_addsub0012_cy_2_121 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0007_cy(0),
      I1 => Madd_contador_ceros_addsub0007_lut(1),
      O => N73
    );
  Madd_contador_ceros_addsub0012_cy_2_111 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0007_cy(1),
      I1 => Madd_contador_ceros_addsub0007_lut(2),
      O => N11
    );
  contador_ceros_mux0044_4_21 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0019_lut(3),
      I1 => Madd_contador_ceros_addsub0019_lut(2),
      I2 => Madd_contador_ceros_addsub0019_lut(1),
      O => N1481
    );
  mantisa_aux_shift0001_11_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N138,
      I1 => N90,
      I2 => Sh7,
      I3 => N165,
      O => mantisa_aux_shift0001(11)
    );
  contador_ceros_mux0042_7_21 : LUT4
    generic map(
      INIT => X"F7FF"
    )
    port map (
      I0 => N1481,
      I1 => Madd_contador_ceros_addsub0019_lut(4),
      I2 => mantisa_desnormalizada_2_IBUF_501,
      I3 => Madd_contador_ceros_addsub0019_cy(0),
      O => N49
    );
  contador_ceros_mux0038_7_14 : LUT4
    generic map(
      INIT => X"DC40"
    )
    port map (
      I0 => mantisa_desnormalizada_4_IBUF_503,
      I1 => Madd_contador_ceros_addsub0018_cy(4),
      I2 => N151,
      I3 => Madd_contador_ceros_addsub0018_lut(5),
      O => contador_ceros_mux0038_6_54
    );
  contador_ceros_mux0038_7_25 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => N17,
      I1 => Madd_contador_ceros_addsub0014_lut(5),
      I2 => N126,
      I3 => contador_ceros_mux0036_4_0,
      O => contador_ceros_mux0038_7_25_320
    );
  contador_ceros_mux0040_4_Q : LUT4
    generic map(
      INIT => X"AA6A"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0020_lut(4),
      I1 => Madd_contador_ceros_addsub0020_lut(2),
      I2 => Madd_contador_ceros_addsub0020_lut(3),
      I3 => N219,
      O => Madd_contador_ceros_addsub0019_lut(4)
    );
  contador_ceros_mux0040_3_Q : LUT4
    generic map(
      INIT => X"AA6A"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0020_lut(3),
      I1 => Madd_contador_ceros_addsub0020_lut(2),
      I2 => Madd_contador_ceros_addsub0020_lut(1),
      I3 => N221,
      O => Madd_contador_ceros_addsub0019_lut(3)
    );
  Madd_contador_ceros_addsub0012_cy_2_1_SW0 : LUT4
    generic map(
      INIT => X"FEFF"
    )
    port map (
      I0 => mantisa_desnormalizada_10_IBUF_487,
      I1 => N73,
      I2 => N11,
      I3 => N1551,
      O => N225
    );
  Madd_contador_ceros_addsub0012_cy_2_1_SW1 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => N1431,
      I1 => mantisa_desnormalizada_10_IBUF_487,
      O => N226
    );
  Madd_contador_ceros_addsub0012_cy_2_1 : LUT4
    generic map(
      INIT => X"FF1B"
    )
    port map (
      I0 => mantisa_desnormalizada_9_IBUF_508,
      I1 => N225,
      I2 => N226,
      I3 => N104,
      O => Madd_contador_ceros_addsub0012_cy_2_Q
    );
  Madd_contador_ceros_addsub0012_cy_2_151_SW0 : LUT4
    generic map(
      INIT => X"FEFF"
    )
    port map (
      I0 => mantisa_desnormalizada_12_IBUF_489,
      I1 => N150,
      I2 => Madd_contador_ceros_addsub0007_lut(1),
      I3 => N11,
      O => N228
    );
  Madd_contador_ceros_addsub0012_cy_2_151_SW1 : LUT4
    generic map(
      INIT => X"FFBF"
    )
    port map (
      I0 => mantisa_desnormalizada_12_IBUF_489,
      I1 => N40,
      I2 => Madd_contador_ceros_addsub0007_lut(1),
      I3 => mantisa_desnormalizada_11_IBUF_488,
      O => N229
    );
  Madd_contador_ceros_addsub0012_cy_2_151 : LUT4
    generic map(
      INIT => X"082A"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0011_cy(0),
      I1 => Madd_contador_ceros_addsub0007_cy(0),
      I2 => N229,
      I3 => N228,
      O => N1431
    );
  contador_ceros_mux0038_6_21 : LUT4
    generic map(
      INIT => X"FF71"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0018_lut(5),
      I1 => Madd_contador_ceros_addsub0018_cy(4),
      I2 => N14,
      I3 => N126,
      O => contador_ceros_mux0038_6_21_316
    );
  contador_ceros_mux0038_6_85 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => contador_ceros_mux0038_6_21_316,
      I1 => contador_ceros_mux0038_6_27_317,
      I2 => contador_ceros_mux0038_6_54,
      I3 => contador_ceros_mux0038_6_68_319,
      O => Madd_contador_ceros_addsub0017_lut(6)
    );
  contador_ceros_mux0018_1_9 : LUT4
    generic map(
      INIT => X"FFAB"
    )
    port map (
      I0 => mantisa_desnormalizada_16_IBUF_493,
      I1 => mantisa_desnormalizada_14_IBUF_491,
      I2 => mantisa_desnormalizada_15_IBUF_492,
      I3 => mantisa_desnormalizada_17_IBUF_494,
      O => contador_ceros_mux0018_1_9_279
    );
  mantisa_aux_shift0001_20_10 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => contador_ceros_mux0046_4_1,
      I1 => N136,
      I2 => N122,
      O => mantisa_aux_shift0001_20_10_432
    );
  contador_ceros_mux0046_6_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0021_cy(4),
      I1 => Madd_contador_ceros_addsub0021_lut(5),
      O => N12
    );
  contador_ceros_mux0042_5_1 : LUT4
    generic map(
      INIT => X"AA69"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0017_lut(5),
      I1 => N49,
      I2 => Madd_contador_ceros_addsub0017_cy(4),
      I3 => N87,
      O => Madd_contador_ceros_addsub0021_lut(5)
    );
  Madd_contador_ceros_addsub0021_cy_5_135 : LUT4
    generic map(
      INIT => X"AA09"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0019_cy(0),
      I1 => mantisa_desnormalizada_2_IBUF_501,
      I2 => Madd_contador_ceros_addsub0017_cy(4),
      I3 => N87,
      O => Madd_contador_ceros_addsub0021_cy_5_135_53
    );
  Madd_contador_ceros_addsub0021_cy_5_1100 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0021_cy_5_195_55,
      I1 => Madd_contador_ceros_addsub0017_lut(5),
      I2 => Madd_contador_ceros_addsub0021_cy_5_166_54,
      I3 => Madd_contador_ceros_addsub0021_cy_5_135_53,
      O => Madd_contador_ceros_addsub0021_cy(5)
    );
  Madd_contador_ceros_addsub0012_cy_2_1321 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => mantisa_desnormalizada_11_IBUF_488,
      I1 => mantisa_desnormalizada_12_IBUF_489,
      I2 => N150,
      O => N139
    );
  Madd_contador_ceros_addsub0012_cy_2_1311 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => mantisa_desnormalizada_12_IBUF_489,
      I1 => mantisa_desnormalizada_11_IBUF_488,
      I2 => Madd_contador_ceros_addsub0007_cy(0),
      O => N127
    );
  contador_ceros_mux0036_4_611 : LUT3
    generic map(
      INIT => X"2B"
    )
    port map (
      I0 => N28,
      I1 => Madd_contador_ceros_addsub0016_cy(1),
      I2 => Madd_contador_ceros_addsub0016_lut(2),
      O => N98
    );
  contador_ceros_mux0030_2_111 : LUT3
    generic map(
      INIT => X"26"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0007_lut(1),
      I1 => Madd_contador_ceros_addsub0007_cy(0),
      I2 => mantisa_desnormalizada_11_IBUF_488,
      O => N57
    );
  contador_ceros_mux0042_6_11 : LUT4
    generic map(
      INIT => X"FF71"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0017_lut(5),
      I1 => Madd_contador_ceros_addsub0017_cy(4),
      I2 => N49,
      I3 => N87,
      O => N24
    );
  contador_ceros_mux0018_2_SW0 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => mantisa_desnormalizada_19_IBUF_496,
      I1 => mantisa_desnormalizada_18_IBUF_495,
      I2 => mantisa_desnormalizada_17_IBUF_494,
      I3 => mantisa_desnormalizada_16_IBUF_493,
      O => N234
    );
  contador_ceros_mux0018_2_Q : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => N1581,
      I1 => mantisa_desnormalizada_22_IBUF_500,
      I2 => mantisa_desnormalizada_20_IBUF_498,
      I3 => N234,
      O => Madd_contador_ceros_addsub0007_lut(2)
    );
  Madd_contador_ceros_addsub0007_cy_1_1_SW0 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => mantisa_desnormalizada_16_IBUF_493,
      I1 => mantisa_desnormalizada_19_IBUF_496,
      I2 => mantisa_desnormalizada_18_IBUF_495,
      I3 => mantisa_desnormalizada_17_IBUF_494,
      O => N236
    );
  Madd_contador_ceros_addsub0007_cy_1_1 : LUT4
    generic map(
      INIT => X"0C08"
    )
    port map (
      I0 => mantisa_desnormalizada_20_IBUF_498,
      I1 => N1581,
      I2 => mantisa_desnormalizada_22_IBUF_500,
      I3 => N236,
      O => Madd_contador_ceros_addsub0007_cy(1)
    );
  contador_ceros_mux0042_7_34 : LUT4
    generic map(
      INIT => X"B020"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0017_lut(5),
      I1 => N49,
      I2 => contador_ceros_mux0042_7_27_321,
      I3 => Madd_contador_ceros_addsub0017_cy(4),
      O => contador_ceros_mux0042_7_34_322
    );
  contador_ceros_mux0046_7_SW0 : LUT4
    generic map(
      INIT => X"45DF"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0021_lut(6),
      I1 => N52,
      I2 => N12,
      I3 => Madd_contador_ceros_addsub0021_cy(5),
      O => N238
    );
  contador_ceros_mux0046_7_Q : LUT4
    generic map(
      INIT => X"A8AD"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0021_lut(7),
      I1 => N239,
      I2 => N124,
      I3 => N238,
      O => contador_ceros_mux0046(7)
    );
  mantisa_aux_shift0001_17_21 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => contador_ceros_mux0046_4_1,
      I1 => mantisa_aux_or0000,
      O => N160
    );
  Madd_contador_ceros_addsub0018_cy_4_1121 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0016_cy(1),
      I1 => mantisa_desnormalizada_6_IBUF_505,
      O => N471
    );
  Madd_contador_ceros_addsub0007_cy_1_1111 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => mantisa_desnormalizada_21_IBUF_499,
      I1 => Madd_contador_ceros_addsub0000_lut(0),
      O => N1581
    );
  contador_ceros_mux0036_2_11 : LUT3
    generic map(
      INIT => X"BF"
    )
    port map (
      I0 => mantisa_desnormalizada_5_IBUF_504,
      I1 => Madd_contador_ceros_addsub0016_lut(1),
      I2 => N361,
      O => N28
    );
  Madd_contador_ceros_addsub0015_cy_2_11 : LUT3
    generic map(
      INIT => X"F4"
    )
    port map (
      I0 => mantisa_desnormalizada_10_IBUF_487,
      I1 => N1431,
      I2 => N104,
      O => Madd_contador_ceros_addsub0015_cy(2)
    );
  contador_ceros_mux0032_2_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0014_lut(2),
      I1 => N1391,
      I2 => N37,
      O => Madd_contador_ceros_addsub0016_lut(2)
    );
  contador_ceros_mux0036_4_21 : LUT3
    generic map(
      INIT => X"B2"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0016_lut(2),
      I1 => N28,
      I2 => Madd_contador_ceros_addsub0016_cy(1),
      O => N45
    );
  contador_ceros_mux0030_2_21 : LUT3
    generic map(
      INIT => X"26"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0007_lut(2),
      I1 => Madd_contador_ceros_addsub0007_cy(1),
      I2 => N150,
      O => N40
    );
  mantisa_aux_shift0001_7_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N158,
      I1 => Sh7,
      I2 => N4,
      I3 => N165,
      O => mantisa_aux_shift0001(7)
    );
  mantisa_aux_shift0001_6_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N158,
      I1 => Sh6,
      I2 => N44,
      I3 => N165,
      O => mantisa_aux_shift0001(6)
    );
  mantisa_aux_shift0001_4_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N158,
      I1 => Sh4,
      I2 => N162,
      I3 => N165,
      O => mantisa_aux_shift0001(4)
    );
  Madd_contador_ceros_addsub0015_cy_3_1311 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => N11,
      I1 => N73,
      I2 => mantisa_desnormalizada_10_IBUF_487,
      I3 => N1551,
      O => N96
    );
  contador_ceros_mux0032_3_1 : LUT4
    generic map(
      INIT => X"EA62"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0014_lut(3),
      I1 => Madd_contador_ceros_addsub0014_lut(2),
      I2 => N1391,
      I3 => N37,
      O => Madd_contador_ceros_addsub0016_lut(3)
    );
  contador_ceros_mux0026_4_5_SW0 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => mantisa_desnormalizada_14_IBUF_491,
      I1 => mantisa_desnormalizada_13_IBUF_490,
      O => N243
    );
  contador_ceros_mux0026_4_5 : LUT4
    generic map(
      INIT => X"FEFF"
    )
    port map (
      I0 => N243,
      I1 => mantisa_desnormalizada_18_IBUF_495,
      I2 => mantisa_desnormalizada_15_IBUF_492,
      I3 => N153,
      O => N150
    );
  contador_ceros_mux0038_5_1_SW0 : LUT3
    generic map(
      INIT => X"BF"
    )
    port map (
      I0 => mantisa_desnormalizada_4_IBUF_503,
      I1 => Madd_contador_ceros_addsub0020_cy(0),
      I2 => Madd_contador_ceros_addsub0020_lut(2),
      O => N245
    );
  contador_ceros_mux0038_5_1 : LUT4
    generic map(
      INIT => X"F7FF"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0020_lut(4),
      I1 => Madd_contador_ceros_addsub0020_lut(3),
      I2 => N245,
      I3 => Madd_contador_ceros_addsub0020_lut(1),
      O => N14
    );
  contador_ceros_mux0018_4_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => mantisa_desnormalizada_22_IBUF_500,
      I1 => mantisa_desnormalizada_20_IBUF_498,
      I2 => mantisa_desnormalizada_19_IBUF_496,
      I3 => N247,
      O => N153
    );
  contador_ceros_mux0038_5_411 : LUT4
    generic map(
      INIT => X"BA10"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0018_cy(4),
      I1 => mantisa_desnormalizada_4_IBUF_503,
      I2 => N151,
      I3 => N14,
      O => contador_ceros_mux0038_5_41
    );
  Madd_contador_ceros_addsub0014_cy_3_154 : LUT4
    generic map(
      INIT => X"8228"
    )
    port map (
      I0 => N141,
      I1 => Madd_contador_ceros_addsub0012_cy_2_Q,
      I2 => Madd_contador_ceros_addsub0015_cy(2),
      I3 => Madd_contador_ceros_addsub0015_lut(3),
      O => Madd_contador_ceros_addsub0014_cy_3_154_11
    );
  Madd_contador_ceros_addsub0018_cy_4_168 : LUT4
    generic map(
      INIT => X"9000"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0016_lut(2),
      I1 => N471,
      I2 => Madd_contador_ceros_addsub0014_cy(3),
      I3 => Madd_contador_ceros_addsub0018_cy_4_159_37,
      O => Madd_contador_ceros_addsub0018_cy_4_168_38
    );
  Madd_contador_ceros_addsub0018_cy_4_186 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0016_lut(3),
      I1 => Madd_contador_ceros_addsub0016_lut(1),
      I2 => N361,
      O => Madd_contador_ceros_addsub0018_cy_4_186_39
    );
  Madd_contador_ceros_addsub0018_cy_4_188 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0018_cy_4_186_39,
      I1 => Madd_contador_ceros_addsub0018_cy_4_139_36,
      I2 => Madd_contador_ceros_addsub0018_cy_4_168_38,
      O => Madd_contador_ceros_addsub0018_cy(4)
    );
  mantisa_aux_or000026 : LUT4
    generic map(
      INIT => X"FF8A"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0021_lut(6),
      I1 => mantisa_aux_or000012,
      I2 => Madd_contador_ceros_addsub0021_lut(7),
      I3 => mantisa_aux_or00008_406,
      O => mantisa_aux_or000026_403
    );
  mantisa_aux_or000046 : LUT4
    generic map(
      INIT => X"FF13"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0021_lut(6),
      I1 => N12,
      I2 => Madd_contador_ceros_addsub0021_cy(5),
      I3 => N124,
      O => mantisa_aux_or000046_404
    );
  mantisa_aux_or000072 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => N52,
      I1 => Madd_contador_ceros_addsub0021_cy(4),
      I2 => Madd_contador_ceros_addsub0021_lut(5),
      O => mantisa_aux_or000072_405
    );
  mantisa_aux_or0000120 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => mantisa_aux_or000026_403,
      I1 => Madd_contador_ceros_addsub0021_lut(7),
      I2 => mantisa_aux_or000046_404,
      I3 => mantisa_aux_or0000108_401,
      O => mantisa_aux_or0000
    );
  contador_ceros_mux0018_0_14 : LUT4
    generic map(
      INIT => X"0F02"
    )
    port map (
      I0 => mantisa_desnormalizada_14_IBUF_491,
      I1 => mantisa_desnormalizada_15_IBUF_492,
      I2 => mantisa_desnormalizada_17_IBUF_494,
      I3 => mantisa_desnormalizada_16_IBUF_493,
      O => contador_ceros_mux0018_0_14_276
    );
  contador_ceros_mux0018_0_35 : LUT4
    generic map(
      INIT => X"FFC8"
    )
    port map (
      I0 => mantisa_desnormalizada_18_IBUF_495,
      I1 => contador_ceros_mux0018_0_23_278,
      I2 => contador_ceros_mux0018_0_14_276,
      I3 => contador_ceros_mux0018_0_2_277,
      O => Madd_contador_ceros_addsub0007_cy(0)
    );
  contador_ceros_mux0032_1_SW1 : LUT4
    generic map(
      INIT => X"E545"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0011_cy(0),
      I1 => N1281,
      I2 => mantisa_desnormalizada_10_IBUF_487,
      I3 => N139,
      O => N253
    );
  contador_ceros_mux0036_4_101 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => contador_ceros_mux0036_4_89,
      I1 => Madd_contador_ceros_addsub0014_lut(4),
      I2 => contador_ceros_mux0036_4_30,
      O => Madd_contador_ceros_addsub0020_lut(4)
    );
  Madd_contador_ceros_addsub0012_cy_2_1328 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => N127,
      I1 => N11,
      I2 => Madd_contador_ceros_addsub0007_lut(1),
      I3 => N150,
      O => Madd_contador_ceros_addsub0012_cy_2_1328_9
    );
  Madd_contador_ceros_addsub0012_cy_2_1354 : LUT4
    generic map(
      INIT => X"FFC8"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0012_cy_2_1314_8,
      I1 => Madd_contador_ceros_addsub0011_cy(0),
      I2 => Madd_contador_ceros_addsub0012_cy_2_1328_9,
      I3 => N96,
      O => N104
    );
  contador_ceros_mux0022_0_56 : LUT4
    generic map(
      INIT => X"FFC8"
    )
    port map (
      I0 => mantisa_desnormalizada_18_IBUF_495,
      I1 => contador_ceros_mux0018_0_23_278,
      I2 => contador_ceros_mux0022_0_25_280,
      I3 => contador_ceros_mux0018_0_2_277,
      O => Madd_contador_ceros_addsub0011_cy(0)
    );
  mantisa_desnormalizada_23_IBUF : IBUF
    port map (
      I => mantisa_desnormalizada(23),
      O => Madd_contador_ceros_addsub0000_lut(0)
    );
  mantisa_desnormalizada_22_IBUF : IBUF
    port map (
      I => mantisa_desnormalizada(22),
      O => mantisa_desnormalizada_22_IBUF_500
    );
  mantisa_desnormalizada_21_IBUF : IBUF
    port map (
      I => mantisa_desnormalizada(21),
      O => mantisa_desnormalizada_21_IBUF_499
    );
  mantisa_desnormalizada_20_IBUF : IBUF
    port map (
      I => mantisa_desnormalizada(20),
      O => mantisa_desnormalizada_20_IBUF_498
    );
  mantisa_desnormalizada_19_IBUF : IBUF
    port map (
      I => mantisa_desnormalizada(19),
      O => mantisa_desnormalizada_19_IBUF_496
    );
  mantisa_desnormalizada_18_IBUF : IBUF
    port map (
      I => mantisa_desnormalizada(18),
      O => mantisa_desnormalizada_18_IBUF_495
    );
  mantisa_desnormalizada_17_IBUF : IBUF
    port map (
      I => mantisa_desnormalizada(17),
      O => mantisa_desnormalizada_17_IBUF_494
    );
  mantisa_desnormalizada_16_IBUF : IBUF
    port map (
      I => mantisa_desnormalizada(16),
      O => mantisa_desnormalizada_16_IBUF_493
    );
  mantisa_desnormalizada_15_IBUF : IBUF
    port map (
      I => mantisa_desnormalizada(15),
      O => mantisa_desnormalizada_15_IBUF_492
    );
  mantisa_desnormalizada_14_IBUF : IBUF
    port map (
      I => mantisa_desnormalizada(14),
      O => mantisa_desnormalizada_14_IBUF_491
    );
  mantisa_desnormalizada_13_IBUF : IBUF
    port map (
      I => mantisa_desnormalizada(13),
      O => mantisa_desnormalizada_13_IBUF_490
    );
  mantisa_desnormalizada_12_IBUF : IBUF
    port map (
      I => mantisa_desnormalizada(12),
      O => mantisa_desnormalizada_12_IBUF_489
    );
  mantisa_desnormalizada_11_IBUF : IBUF
    port map (
      I => mantisa_desnormalizada(11),
      O => mantisa_desnormalizada_11_IBUF_488
    );
  mantisa_desnormalizada_10_IBUF : IBUF
    port map (
      I => mantisa_desnormalizada(10),
      O => mantisa_desnormalizada_10_IBUF_487
    );
  mantisa_desnormalizada_9_IBUF : IBUF
    port map (
      I => mantisa_desnormalizada(9),
      O => mantisa_desnormalizada_9_IBUF_508
    );
  mantisa_desnormalizada_8_IBUF : IBUF
    port map (
      I => mantisa_desnormalizada(8),
      O => mantisa_desnormalizada_8_IBUF_507
    );
  mantisa_desnormalizada_7_IBUF : IBUF
    port map (
      I => mantisa_desnormalizada(7),
      O => mantisa_desnormalizada_7_IBUF_506
    );
  mantisa_desnormalizada_6_IBUF : IBUF
    port map (
      I => mantisa_desnormalizada(6),
      O => mantisa_desnormalizada_6_IBUF_505
    );
  mantisa_desnormalizada_5_IBUF : IBUF
    port map (
      I => mantisa_desnormalizada(5),
      O => mantisa_desnormalizada_5_IBUF_504
    );
  mantisa_desnormalizada_4_IBUF : IBUF
    port map (
      I => mantisa_desnormalizada(4),
      O => mantisa_desnormalizada_4_IBUF_503
    );
  mantisa_desnormalizada_3_IBUF : IBUF
    port map (
      I => mantisa_desnormalizada(3),
      O => mantisa_desnormalizada_3_IBUF_502
    );
  mantisa_desnormalizada_2_IBUF : IBUF
    port map (
      I => mantisa_desnormalizada(2),
      O => mantisa_desnormalizada_2_IBUF_501
    );
  mantisa_desnormalizada_1_IBUF : IBUF
    port map (
      I => mantisa_desnormalizada(1),
      O => mantisa_desnormalizada_1_IBUF_497
    );
  mantisa_desnormalizada_0_IBUF : IBUF
    port map (
      I => mantisa_desnormalizada(0),
      O => mantisa_desnormalizada_0_IBUF_486
    );
  exponente_in_7_IBUF : IBUF
    port map (
      I => exponente_in(7),
      O => exponente_in_7_IBUF_350
    );
  exponente_in_6_IBUF : IBUF
    port map (
      I => exponente_in(6),
      O => exponente_in_6_IBUF_349
    );
  exponente_in_5_IBUF : IBUF
    port map (
      I => exponente_in(5),
      O => exponente_in_5_IBUF_348
    );
  exponente_in_4_IBUF : IBUF
    port map (
      I => exponente_in(4),
      O => exponente_in_4_IBUF_347
    );
  exponente_in_3_IBUF : IBUF
    port map (
      I => exponente_in(3),
      O => exponente_in_3_IBUF_346
    );
  exponente_in_2_IBUF : IBUF
    port map (
      I => exponente_in(2),
      O => exponente_in_2_IBUF_345
    );
  exponente_in_1_IBUF : IBUF
    port map (
      I => exponente_in(1),
      O => exponente_in_1_IBUF_344
    );
  exponente_in_0_IBUF : IBUF
    port map (
      I => exponente_in(0),
      O => exponente_in_0_IBUF_343
    );
  error_OBUF : OBUF
    port map (
      I => error_OBUF_334,
      O => error
    );
  mantisa_normalizada_22_OBUF : OBUF
    port map (
      I => mantisa_normalizada_22_OBUF_546,
      O => mantisa_normalizada(22)
    );
  mantisa_normalizada_21_OBUF : OBUF
    port map (
      I => mantisa_normalizada_21_OBUF_545,
      O => mantisa_normalizada(21)
    );
  mantisa_normalizada_20_OBUF : OBUF
    port map (
      I => mantisa_normalizada_20_OBUF_544,
      O => mantisa_normalizada(20)
    );
  mantisa_normalizada_19_OBUF : OBUF
    port map (
      I => mantisa_normalizada_19_OBUF_542,
      O => mantisa_normalizada(19)
    );
  mantisa_normalizada_18_OBUF : OBUF
    port map (
      I => mantisa_normalizada_18_OBUF_541,
      O => mantisa_normalizada(18)
    );
  mantisa_normalizada_17_OBUF : OBUF
    port map (
      I => mantisa_normalizada_17_OBUF_540,
      O => mantisa_normalizada(17)
    );
  mantisa_normalizada_16_OBUF : OBUF
    port map (
      I => mantisa_normalizada_16_OBUF_539,
      O => mantisa_normalizada(16)
    );
  mantisa_normalizada_15_OBUF : OBUF
    port map (
      I => mantisa_normalizada_15_OBUF_538,
      O => mantisa_normalizada(15)
    );
  mantisa_normalizada_14_OBUF : OBUF
    port map (
      I => mantisa_normalizada_14_OBUF_537,
      O => mantisa_normalizada(14)
    );
  mantisa_normalizada_13_OBUF : OBUF
    port map (
      I => mantisa_normalizada_13_OBUF_536,
      O => mantisa_normalizada(13)
    );
  mantisa_normalizada_12_OBUF : OBUF
    port map (
      I => mantisa_normalizada_12_OBUF_535,
      O => mantisa_normalizada(12)
    );
  mantisa_normalizada_11_OBUF : OBUF
    port map (
      I => mantisa_normalizada_11_OBUF_534,
      O => mantisa_normalizada(11)
    );
  mantisa_normalizada_10_OBUF : OBUF
    port map (
      I => mantisa_normalizada_10_OBUF_533,
      O => mantisa_normalizada(10)
    );
  mantisa_normalizada_9_OBUF : OBUF
    port map (
      I => mantisa_normalizada_9_OBUF_554,
      O => mantisa_normalizada(9)
    );
  mantisa_normalizada_8_OBUF : OBUF
    port map (
      I => mantisa_normalizada_8_OBUF_553,
      O => mantisa_normalizada(8)
    );
  mantisa_normalizada_7_OBUF : OBUF
    port map (
      I => mantisa_normalizada_7_OBUF_552,
      O => mantisa_normalizada(7)
    );
  mantisa_normalizada_6_OBUF : OBUF
    port map (
      I => mantisa_normalizada_6_OBUF_551,
      O => mantisa_normalizada(6)
    );
  mantisa_normalizada_5_OBUF : OBUF
    port map (
      I => mantisa_normalizada_5_OBUF_550,
      O => mantisa_normalizada(5)
    );
  mantisa_normalizada_4_OBUF : OBUF
    port map (
      I => mantisa_normalizada_4_OBUF_549,
      O => mantisa_normalizada(4)
    );
  mantisa_normalizada_3_OBUF : OBUF
    port map (
      I => mantisa_normalizada_3_OBUF_548,
      O => mantisa_normalizada(3)
    );
  mantisa_normalizada_2_OBUF : OBUF
    port map (
      I => mantisa_normalizada_2_OBUF_547,
      O => mantisa_normalizada(2)
    );
  mantisa_normalizada_1_OBUF : OBUF
    port map (
      I => mantisa_normalizada_1_OBUF_543,
      O => mantisa_normalizada(1)
    );
  mantisa_normalizada_0_OBUF : OBUF
    port map (
      I => mantisa_normalizada_0_OBUF_532,
      O => mantisa_normalizada(0)
    );
  exponente_out_7_OBUF : OBUF
    port map (
      I => exponente_out_7_OBUF_366,
      O => exponente_out(7)
    );
  exponente_out_6_OBUF : OBUF
    port map (
      I => exponente_out_6_OBUF_365,
      O => exponente_out(6)
    );
  exponente_out_5_OBUF : OBUF
    port map (
      I => exponente_out_5_OBUF_364,
      O => exponente_out(5)
    );
  exponente_out_4_OBUF : OBUF
    port map (
      I => exponente_out_4_OBUF_363,
      O => exponente_out(4)
    );
  exponente_out_3_OBUF : OBUF
    port map (
      I => exponente_out_3_OBUF_362,
      O => exponente_out(3)
    );
  exponente_out_2_OBUF : OBUF
    port map (
      I => exponente_out_2_OBUF_361,
      O => exponente_out(2)
    );
  exponente_out_1_OBUF : OBUF
    port map (
      I => exponente_out_1_OBUF_360,
      O => exponente_out(1)
    );
  exponente_out_0_OBUF : OBUF
    port map (
      I => exponente_out_0_OBUF_359,
      O => exponente_out(0)
    );
  contador_ceros_mux0030_2_41 : LUT4
    generic map(
      INIT => X"0150"
    )
    port map (
      I0 => N255,
      I1 => mantisa_desnormalizada_11_IBUF_488,
      I2 => Madd_contador_ceros_addsub0007_cy(0),
      I3 => Madd_contador_ceros_addsub0007_lut(1),
      O => contador_ceros_mux0030_2_41_296
    );
  contador_ceros_mux0026_3_35_SW0 : LUT4
    generic map(
      INIT => X"E5E4"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0007_lut(1),
      I1 => mantisa_desnormalizada_11_IBUF_488,
      I2 => Madd_contador_ceros_addsub0007_cy(0),
      I3 => mantisa_desnormalizada_10_IBUF_487,
      O => N257
    );
  contador_ceros_mux0018_1_36_SW0 : LUT4
    generic map(
      INIT => X"FF02"
    )
    port map (
      I0 => contador_ceros_mux0018_1_9_279,
      I1 => mantisa_desnormalizada_18_IBUF_495,
      I2 => mantisa_desnormalizada_19_IBUF_496,
      I3 => mantisa_desnormalizada_21_IBUF_499,
      O => N261
    );
  contador_ceros_mux0018_1_36 : LUT4
    generic map(
      INIT => X"0302"
    )
    port map (
      I0 => mantisa_desnormalizada_20_IBUF_498,
      I1 => Madd_contador_ceros_addsub0000_lut(0),
      I2 => mantisa_desnormalizada_22_IBUF_500,
      I3 => N261,
      O => Madd_contador_ceros_addsub0007_lut(1)
    );
  contador_ceros_mux0030_2_123 : LUT4
    generic map(
      INIT => X"4460"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0007_cy(0),
      I1 => Madd_contador_ceros_addsub0007_lut(1),
      I2 => N255,
      I3 => mantisa_desnormalizada_11_IBUF_488,
      O => contador_ceros_mux0030_2_123_293
    );
  mantisa_aux_shift0001_21_2_SW2 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => contador_ceros_mux0046_1_1,
      I1 => mantisa_desnormalizada_9_IBUF_508,
      I2 => mantisa_desnormalizada_7_IBUF_506,
      O => N269
    );
  mantisa_aux_shift0001_21_2 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => contador_ceros_mux0046_0_1_323,
      I1 => N269,
      I2 => N1210,
      O => N41
    );
  contador_ceros_mux0038_5_57 : LUT4
    generic map(
      INIT => X"D9C8"
    )
    port map (
      I0 => N126,
      I1 => Madd_contador_ceros_addsub0018_lut(5),
      I2 => N273,
      I3 => contador_ceros_mux0038_5_41,
      O => Madd_contador_ceros_addsub0017_lut(5)
    );
  mantisa_aux_shift0001_21_6121_SW0 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => contador_ceros_mux0046_0_1_323,
      I1 => mantisa_desnormalizada_17_IBUF_494,
      I2 => mantisa_desnormalizada_16_IBUF_493,
      O => N275
    );
  mantisa_aux_shift0001_20_90 : LUT4
    generic map(
      INIT => X"44E4"
    )
    port map (
      I0 => contador_ceros_mux0046_2_1,
      I1 => mantisa_aux_shift0001_20_54_435,
      I2 => N75,
      I3 => mantisa_aux_or0000,
      O => mantisa_aux_shift0001(20)
    );
  Madd_contador_ceros_addsub0016_cy_1_140 : LUT4
    generic map(
      INIT => X"1808"
    )
    port map (
      I0 => mantisa_desnormalizada_7_IBUF_506,
      I1 => Madd_contador_ceros_addsub0014_lut(1),
      I2 => Madd_contador_ceros_addsub0012_cy_0_Q,
      I3 => N5,
      O => Madd_contador_ceros_addsub0016_cy_1_140_28
    );
  Madd_contador_ceros_addsub0018_cy_4_139 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0014_lut(4),
      I1 => contador_ceros_mux0036_4_0,
      I2 => N285,
      I3 => Madd_contador_ceros_addsub0016_lut(2),
      O => Madd_contador_ceros_addsub0018_cy_4_139_36
    );
  mantisa_aux_or0000108_SW0 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0021_cy(5),
      I1 => Madd_contador_ceros_addsub0021_lut(7),
      I2 => Madd_contador_ceros_addsub0021_lut(6),
      I3 => N52,
      O => N289
    );
  mantisa_aux_or0000108 : LUT4
    generic map(
      INIT => X"0302"
    )
    port map (
      I0 => mantisa_aux_or000072_405,
      I1 => N64,
      I2 => mantisa_desnormalizada_1_IBUF_497,
      I3 => N289,
      O => mantisa_aux_or0000108_401
    );
  contador_ceros_mux0038_6_68 : LUT4
    generic map(
      INIT => X"3313"
    )
    port map (
      I0 => N17,
      I1 => N126,
      I2 => Madd_contador_ceros_addsub0014_lut(5),
      I3 => contador_ceros_mux0036_4_0,
      O => contador_ceros_mux0038_6_68_319
    );
  exponente_out_0_21 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Mcompar_mantisa_aux_cmp_lt0000_cy_7_1,
      I1 => Mcompar_error_cmp_gt0000_cy(7),
      O => error_OBUF_334
    );
  Madd_contador_ceros_addsub0016_cy_1_160 : LUT4
    generic map(
      INIT => X"FF02"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0016_cy_1_140_28,
      I1 => N155,
      I2 => mantisa_desnormalizada_8_IBUF_507,
      I3 => N293,
      O => Madd_contador_ceros_addsub0016_cy(1)
    );
  Madd_contador_ceros_addsub0014_cy_3_171 : LUT4
    generic map(
      INIT => X"C080"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0014_cy_3_154_11,
      I1 => Madd_contador_ceros_addsub0014_lut(2),
      I2 => Madd_contador_ceros_addsub0014_lut(1),
      I3 => N295,
      O => Madd_contador_ceros_addsub0014_cy(3)
    );
  mantisa_aux_or00008 : LUT4
    generic map(
      INIT => X"F020"
    )
    port map (
      I0 => N52,
      I1 => Madd_contador_ceros_addsub0021_cy(4),
      I2 => Madd_contador_ceros_addsub0021_lut(5),
      I3 => N124,
      O => mantisa_aux_or00008_406
    );
  contador_ceros_mux0018_0_2 : LUT4
    generic map(
      INIT => X"0F02"
    )
    port map (
      I0 => mantisa_desnormalizada_20_IBUF_498,
      I1 => mantisa_desnormalizada_21_IBUF_499,
      I2 => Madd_contador_ceros_addsub0000_lut(0),
      I3 => mantisa_desnormalizada_22_IBUF_500,
      O => contador_ceros_mux0018_0_2_277
    );
  contador_ceros_mux0022_0_25_SW0 : LUT3
    generic map(
      INIT => X"F4"
    )
    port map (
      I0 => mantisa_desnormalizada_13_IBUF_490,
      I1 => mantisa_desnormalizada_12_IBUF_489,
      I2 => mantisa_desnormalizada_14_IBUF_491,
      O => N297
    );
  contador_ceros_mux0022_0_25 : LUT4
    generic map(
      INIT => X"0F02"
    )
    port map (
      I0 => N297,
      I1 => mantisa_desnormalizada_15_IBUF_492,
      I2 => mantisa_desnormalizada_17_IBUF_494,
      I3 => mantisa_desnormalizada_16_IBUF_493,
      O => contador_ceros_mux0022_0_25_280
    );
  contador_ceros_mux0046_1_SW1 : LUT4
    generic map(
      INIT => X"FF46"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0019_cy(0),
      I1 => mantisa_desnormalizada_1_IBUF_497,
      I2 => mantisa_desnormalizada_0_IBUF_486,
      I3 => N64,
      O => N299
    );
  contador_ceros_mux0046_1_Q : LUT4
    generic map(
      INIT => X"96A5"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0020_lut(1),
      I1 => N23,
      I2 => N299,
      I3 => N02,
      O => contador_ceros_mux0046_1_1
    );
  contador_ceros_mux0034_6_1_SW0 : LUT4
    generic map(
      INIT => X"D880"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0014_lut(2),
      I1 => N37,
      I2 => N1391,
      I3 => Madd_contador_ceros_addsub0014_lut(3),
      O => N209
    );
  contador_ceros_mux0046_3_21 : LUT4
    generic map(
      INIT => X"A2B2"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0019_lut(1),
      I1 => mantisa_desnormalizada_1_IBUF_497,
      I2 => Madd_contador_ceros_addsub0019_cy(0),
      I3 => mantisa_desnormalizada_0_IBUF_486,
      O => N63
    );
  contador_ceros_mux0026_4_47 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => N153,
      I1 => mantisa_desnormalizada_18_IBUF_495,
      I2 => N243,
      I3 => mantisa_desnormalizada_15_IBUF_492,
      O => contador_ceros_mux0026_4_47_284
    );
  contador_ceros_mux0040_0_1 : LUT4
    generic map(
      INIT => X"C9CC"
    )
    port map (
      I0 => mantisa_desnormalizada_4_IBUF_503,
      I1 => Madd_contador_ceros_addsub0020_cy(0),
      I2 => N126,
      I3 => mantisa_desnormalizada_3_IBUF_502,
      O => Madd_contador_ceros_addsub0019_cy(0)
    );
  mantisa_aux_shift0001_19_97_SW0 : LUT3
    generic map(
      INIT => X"FB"
    )
    port map (
      I0 => contador_ceros_mux0046_2_1,
      I1 => N4,
      I2 => contador_ceros_mux0046_3_1,
      O => N301
    );
  mantisa_aux_shift0001_19_97 : LUT4
    generic map(
      INIT => X"0454"
    )
    port map (
      I0 => mantisa_aux_or0000,
      I1 => mantisa_aux_shift0001_19_68_429,
      I2 => contador_ceros_mux0046_4_1,
      I3 => N301,
      O => mantisa_aux_shift0001(19)
    );
  contador_ceros_mux0030_2_75_SW0 : LUT4
    generic map(
      INIT => X"BB90"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0007_cy(0),
      I1 => Madd_contador_ceros_addsub0007_lut(1),
      I2 => contador_ceros_mux0030_2_69_297,
      I3 => mantisa_desnormalizada_11_IBUF_488,
      O => N303
    );
  contador_ceros_mux0030_2_75 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => contador_ceros_mux0030_2_41_296,
      I1 => mantisa_desnormalizada_12_IBUF_489,
      I2 => N303,
      O => contador_ceros_mux0030_2_75_298
    );
  contador_ceros_mux0030_2_200_SW0 : LUT4
    generic map(
      INIT => X"9A88"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0007_lut(2),
      I1 => N150,
      I2 => Madd_contador_ceros_addsub0007_cy(1),
      I3 => contador_ceros_mux0030_2_75_298,
      O => N305
    );
  contador_ceros_mux0030_2_200 : LUT4
    generic map(
      INIT => X"FFC8"
    )
    port map (
      I0 => contador_ceros_mux0030_2_123_293,
      I1 => contador_ceros_mux0030_2_183_295,
      I2 => contador_ceros_mux0030_2_142_294,
      I3 => N305,
      O => Madd_contador_ceros_addsub0014_lut(2)
    );
  contador_ceros_mux0032_1_Q : LUT4
    generic map(
      INIT => X"D9C8"
    )
    port map (
      I0 => contador_ceros_mux0036_4_0,
      I1 => Madd_contador_ceros_addsub0014_lut(1),
      I2 => N253,
      I3 => N5,
      O => Madd_contador_ceros_addsub0016_lut(1)
    );
  Madd_contador_ceros_addsub0016_cy_1_111 : LUT4
    generic map(
      INIT => X"EA62"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0011_cy(0),
      I1 => mantisa_desnormalizada_10_IBUF_487,
      I2 => N139,
      I3 => N1281,
      O => N5
    );
  contador_ceros_mux0030_1_11 : LUT3
    generic map(
      INIT => X"76"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0011_cy(0),
      I1 => mantisa_desnormalizada_9_IBUF_508,
      I2 => mantisa_desnormalizada_8_IBUF_507,
      O => N21
    );
  contador_ceros_mux0030_1_21 : LUT4
    generic map(
      INIT => X"EAEB"
    )
    port map (
      I0 => mantisa_desnormalizada_10_IBUF_487,
      I1 => mantisa_desnormalizada_9_IBUF_508,
      I2 => Madd_contador_ceros_addsub0011_cy(0),
      I3 => mantisa_desnormalizada_8_IBUF_507,
      O => N53
    );
  Madd_contador_ceros_addsub0012_cy_2_1314_SW0 : LUT4
    generic map(
      INIT => X"0060"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0007_lut(2),
      I1 => Madd_contador_ceros_addsub0007_cy(1),
      I2 => mantisa_desnormalizada_12_IBUF_489,
      I3 => Madd_contador_ceros_addsub0007_cy(0),
      O => N317
    );
  Madd_contador_ceros_addsub0012_cy_2_1314 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0007_lut(1),
      I1 => N150,
      I2 => N317,
      I3 => Madd_contador_ceros_addsub0007_lut(2),
      O => Madd_contador_ceros_addsub0012_cy_2_1314_8
    );
  mantisa_aux_shift0001_19_216 : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => contador_ceros_mux0046_0_1_323,
      I1 => mantisa_desnormalizada_15_IBUF_492,
      I2 => contador_ceros_mux0046_1_1,
      I3 => mantisa_desnormalizada_14_IBUF_491,
      O => mantisa_aux_shift0001_19_216_425
    );
  contador_ceros_mux0026_4_49 : LUT4
    generic map(
      INIT => X"A888"
    )
    port map (
      I0 => contador_ceros_mux0026_4_47_284,
      I1 => contador_ceros_mux0026_4_23_283,
      I2 => Madd_contador_ceros_addsub0007_cy(1),
      I3 => Madd_contador_ceros_addsub0007_lut(2),
      O => Madd_contador_ceros_addsub0015_lut(4)
    );
  mantisa_aux_shift0001_21_1 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => contador_ceros_mux0046_0_1_323,
      I1 => contador_ceros_mux0046_4_1,
      I2 => N188,
      I3 => N132,
      O => mantisa_aux_shift0001_21_1_437
    );
  mantisa_aux_shift0001_9_SW1 : LUT4
    generic map(
      INIT => X"FDDF"
    )
    port map (
      I0 => N161,
      I1 => contador_ceros_mux0046_2_1,
      I2 => Madd_contador_ceros_addsub0019_lut(1),
      I3 => N271,
      O => N207
    );
  Madd_contador_ceros_addsub0015_cy_3_1118_SW0 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0007_cy(0),
      I1 => mantisa_desnormalizada_10_IBUF_487,
      I2 => mantisa_desnormalizada_11_IBUF_488,
      I3 => mantisa_desnormalizada_12_IBUF_489,
      O => N319
    );
  Madd_contador_ceros_addsub0015_cy_3_1118 : LUT4
    generic map(
      INIT => X"20FD"
    )
    port map (
      I0 => N153,
      I1 => mantisa_desnormalizada_18_IBUF_495,
      I2 => N127,
      I3 => N319,
      O => Madd_contador_ceros_addsub0015_cy_3_1118_21
    );
  mantisa_aux_shift0001_5_1 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => N110,
      I1 => contador_ceros_mux0046_4_1,
      I2 => mantisa_aux_or0000,
      I3 => contador_ceros_mux0046_3_1,
      O => mantisa_aux_shift0001(5)
    );
  contador_ceros_mux0036_1_5 : LUT4
    generic map(
      INIT => X"FFAE"
    )
    port map (
      I0 => mantisa_desnormalizada_6_IBUF_505,
      I1 => mantisa_desnormalizada_5_IBUF_504,
      I2 => Madd_contador_ceros_addsub0012_cy_0_Q,
      I3 => contador_ceros_mux0036_4_0,
      O => contador_ceros_mux0036_1_5_307
    );
  mantisa_aux_shift0001_19_1 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => contador_ceros_mux0046_3_1,
      I1 => contador_ceros_mux0046_1_1,
      I2 => N170,
      I3 => N176,
      O => mantisa_aux_shift0001_19_1_423
    );
  flag_mux00131 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => mantisa_desnormalizada_11_IBUF_488,
      I1 => mantisa_desnormalizada_12_IBUF_489,
      I2 => N150,
      I3 => mantisa_desnormalizada_10_IBUF_487,
      O => flag_mux0013
    );
  Madd_contador_ceros_addsub0018_cy_1_111 : LUT3
    generic map(
      INIT => X"FB"
    )
    port map (
      I0 => mantisa_desnormalizada_8_IBUF_507,
      I1 => flag_mux0013,
      I2 => mantisa_desnormalizada_9_IBUF_508,
      O => N7
    );
  mantisa_aux_shift0001_17_32 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => contador_ceros_mux0046_2_1,
      I1 => contador_ceros_mux0046_4_1,
      I2 => mantisa_aux_or0000,
      I3 => contador_ceros_mux0046_3_1,
      O => N165
    );
  Madd_contador_ceros_addsub0018_cy_1_121 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => flag_mux0013,
      I1 => mantisa_desnormalizada_9_IBUF_508,
      I2 => mantisa_desnormalizada_8_IBUF_507,
      I3 => Madd_contador_ceros_addsub0012_cy_0_Q,
      O => N141
    );
  contador_ceros_mux0040_4_SW0 : LUT4
    generic map(
      INIT => X"FFBF"
    )
    port map (
      I0 => mantisa_desnormalizada_4_IBUF_503,
      I1 => Madd_contador_ceros_addsub0020_lut(1),
      I2 => N02,
      I3 => N126,
      O => N219
    );
  contador_ceros_mux0040_3_SW0 : LUT4
    generic map(
      INIT => X"FFAE"
    )
    port map (
      I0 => mantisa_desnormalizada_4_IBUF_503,
      I1 => mantisa_desnormalizada_3_IBUF_502,
      I2 => Madd_contador_ceros_addsub0020_cy(0),
      I3 => N126,
      O => N221
    );
  contador_ceros_mux0038_6_27 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => N17,
      I1 => Madd_contador_ceros_addsub0014_lut(5),
      I2 => mantisa_desnormalizada_7_IBUF_506,
      I3 => N7,
      O => contador_ceros_mux0038_6_27_317
    );
  Madd_contador_ceros_addsub0021_cy_5_195 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0019_lut(4),
      I1 => Madd_contador_ceros_addsub0019_lut(3),
      I2 => Madd_contador_ceros_addsub0019_lut(2),
      I3 => Madd_contador_ceros_addsub0019_lut(1),
      O => Madd_contador_ceros_addsub0021_cy_5_195_55
    );
  contador_ceros_mux0042_7_27 : LUT4
    generic map(
      INIT => X"040C"
    )
    port map (
      I0 => contador_ceros_mux0038_7_25_320,
      I1 => Madd_contador_ceros_addsub0017_lut(6),
      I2 => N87,
      I3 => contador_ceros_mux0038_6_54,
      O => contador_ceros_mux0042_7_27_321
    );
  mantisa_aux_shift0001_3_1 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => N158,
      I1 => contador_ceros_mux0046_0_1_323,
      I2 => N122,
      I3 => N10,
      O => mantisa_aux_shift0001(3)
    );
  mantisa_aux_shift0001_2_1 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => N44,
      I1 => N138,
      I2 => contador_ceros_mux0046_3_1,
      O => mantisa_aux_shift0001(2)
    );
  mantisa_aux_shift0001_1_1 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => N1511,
      I1 => N138,
      I2 => contador_ceros_mux0046_3_1,
      O => mantisa_aux_shift0001(1)
    );
  mantisa_aux_shift0001_19_41 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => contador_ceros_mux0046_4_1,
      I1 => mantisa_aux_or0000,
      I2 => contador_ceros_mux0046_2_1,
      O => N138
    );
  mantisa_aux_shift0001_0_1 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => N162,
      I1 => N138,
      I2 => contador_ceros_mux0046_3_1,
      O => mantisa_aux_shift0001(0)
    );
  contador_ceros_mux0032_3_21 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0014_lut(1),
      I1 => N141,
      I2 => mantisa_desnormalizada_7_IBUF_506,
      I3 => N7,
      O => N1391
    );
  contador_ceros_mux0032_2_11 : LUT4
    generic map(
      INIT => X"FEFF"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0012_cy_0_Q,
      I1 => N7,
      I2 => mantisa_desnormalizada_7_IBUF_506,
      I3 => Madd_contador_ceros_addsub0014_lut(1),
      O => N37
    );
  contador_ceros_mux0038_5_4_SW1 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0020_cy(0),
      I1 => Madd_contador_ceros_addsub0020_lut(1),
      I2 => Madd_contador_ceros_addsub0020_lut(2),
      I3 => Madd_contador_ceros_addsub0020_lut(3),
      O => N321
    );
  contador_ceros_mux0038_5_4 : LUT4
    generic map(
      INIT => X"A888"
    )
    port map (
      I0 => N321,
      I1 => contador_ceros_mux0036_4_89,
      I2 => Madd_contador_ceros_addsub0014_lut(4),
      I3 => contador_ceros_mux0036_4_30,
      O => N151
    );
  contador_ceros_mux0018_4_2_SW0 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => mantisa_desnormalizada_16_IBUF_493,
      I1 => mantisa_desnormalizada_21_IBUF_499,
      I2 => Madd_contador_ceros_addsub0000_lut(0),
      I3 => mantisa_desnormalizada_17_IBUF_494,
      O => N247
    );
  Madd_contador_ceros_addsub0018_cy_4_159 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0014_lut(4),
      I1 => mantisa_desnormalizada_7_IBUF_506,
      I2 => N7,
      O => Madd_contador_ceros_addsub0018_cy_4_159_37
    );
  contador_ceros_mux0030_1_24 : LUT4
    generic map(
      INIT => X"FF02"
    )
    port map (
      I0 => N21,
      I1 => mantisa_desnormalizada_11_IBUF_488,
      I2 => mantisa_desnormalizada_10_IBUF_487,
      I3 => mantisa_desnormalizada_12_IBUF_489,
      O => contador_ceros_mux0030_1_24_289
    );
  mantisa_aux_or0000121 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0022_lut(4),
      I1 => Madd_contador_ceros_addsub0021_cy(5),
      I2 => Madd_contador_ceros_addsub0022_cy(3),
      I3 => mantisa_desnormalizada_0_IBUF_486,
      O => mantisa_aux_or000012
    );
  contador_ceros_mux0018_0_23 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => mantisa_desnormalizada_21_IBUF_499,
      I1 => Madd_contador_ceros_addsub0000_lut(0),
      I2 => mantisa_desnormalizada_19_IBUF_496,
      O => contador_ceros_mux0018_0_23_278
    );
  contador_ceros_mux0026_3_143 : LUT4
    generic map(
      INIT => X"0C08"
    )
    port map (
      I0 => N150,
      I1 => N153,
      I2 => mantisa_desnormalizada_18_IBUF_495,
      I3 => N323,
      O => Madd_contador_ceros_addsub0015_lut(3)
    );
  contador_ceros_mux0046_4_SW2 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => mantisa_desnormalizada_0_IBUF_486,
      I1 => mantisa_desnormalizada_1_IBUF_497,
      I2 => mantisa_desnormalizada_2_IBUF_501,
      O => N325
    );
  contador_ceros_mux0046_4_Q : LUT4
    generic map(
      INIT => X"C9CC"
    )
    port map (
      I0 => N325,
      I1 => Madd_contador_ceros_addsub0022_lut(4),
      I2 => N87,
      I3 => Madd_contador_ceros_addsub0022_cy(3),
      O => contador_ceros_mux0046_4_1
    );
  Madd_contador_ceros_addsub0022_cy_3_1_SW2 : LUT4
    generic map(
      INIT => X"9082"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0019_cy(0),
      I1 => N64,
      I2 => Madd_contador_ceros_addsub0019_lut(1),
      I3 => mantisa_desnormalizada_1_IBUF_497,
      O => N327
    );
  Madd_contador_ceros_addsub0022_cy_3_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0019_lut(2),
      I1 => Madd_contador_ceros_addsub0019_lut(3),
      I2 => N327,
      O => Madd_contador_ceros_addsub0022_cy(3)
    );
  contador_ceros_mux0046_6_SW2 : LUT4
    generic map(
      INIT => X"0F69"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0021_lut(5),
      I1 => Madd_contador_ceros_addsub0021_cy(4),
      I2 => Madd_contador_ceros_addsub0021_cy(5),
      I3 => N52,
      O => N329
    );
  contador_ceros_mux0046_6_Q : LUT4
    generic map(
      INIT => X"AAA9"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0021_lut(6),
      I1 => N64,
      I2 => mantisa_desnormalizada_1_IBUF_497,
      I3 => N329,
      O => contador_ceros_mux0046(6)
    );
  contador_ceros_mux0026_3_143_SW0 : LUT4
    generic map(
      INIT => X"5F4D"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0007_cy(1),
      I1 => N257,
      I2 => Madd_contador_ceros_addsub0007_lut(2),
      I3 => mantisa_desnormalizada_12_IBUF_489,
      O => N323
    );
  Madd_contador_ceros_addsub0015_cy_3_1151 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0015_cy_3_1133_22,
      I1 => Madd_contador_ceros_addsub0015_cy_3_1118_21,
      I2 => N333,
      I3 => N153,
      O => Madd_contador_ceros_addsub0015_cy(3)
    );
  contador_ceros_mux0038_5_57_SW0 : LUT4
    generic map(
      INIT => X"44E4"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0018_cy(4),
      I1 => N14,
      I2 => N151,
      I3 => mantisa_desnormalizada_4_IBUF_503,
      O => N273
    );
  contador_ceros_mux0046_3_SW0 : LUT4
    generic map(
      INIT => X"3B2B"
    )
    port map (
      I0 => mantisa_desnormalizada_1_IBUF_497,
      I1 => Madd_contador_ceros_addsub0019_lut(1),
      I2 => Madd_contador_ceros_addsub0019_cy(0),
      I3 => mantisa_desnormalizada_0_IBUF_486,
      O => N337
    );
  contador_ceros_mux0046_3_Q : LUT4
    generic map(
      INIT => X"C9CC"
    )
    port map (
      I0 => N337,
      I1 => Madd_contador_ceros_addsub0019_lut(3),
      I2 => N64,
      I3 => Madd_contador_ceros_addsub0019_lut(2),
      O => contador_ceros_mux0046_3_1
    );
  contador_ceros_mux0036_0_SW1 : LUT4
    generic map(
      INIT => X"FF51"
    )
    port map (
      I0 => mantisa_desnormalizada_7_IBUF_506,
      I1 => mantisa_desnormalizada_5_IBUF_504,
      I2 => mantisa_desnormalizada_6_IBUF_505,
      I3 => mantisa_desnormalizada_9_IBUF_508,
      O => N339
    );
  contador_ceros_mux0036_0_Q : LUT4
    generic map(
      INIT => X"C9CC"
    )
    port map (
      I0 => N339,
      I1 => Madd_contador_ceros_addsub0012_cy_0_Q,
      I2 => mantisa_desnormalizada_8_IBUF_507,
      I3 => flag_mux0013,
      O => Madd_contador_ceros_addsub0020_cy(0)
    );
  Madd_contador_ceros_addsub0018_cy_1_13_SW1 : LUT3
    generic map(
      INIT => X"F4"
    )
    port map (
      I0 => mantisa_desnormalizada_7_IBUF_506,
      I1 => mantisa_desnormalizada_6_IBUF_505,
      I2 => mantisa_desnormalizada_9_IBUF_508,
      O => N341
    );
  Madd_contador_ceros_addsub0018_cy_1_13 : LUT4
    generic map(
      INIT => X"C9CC"
    )
    port map (
      I0 => N341,
      I1 => Madd_contador_ceros_addsub0012_cy_0_Q,
      I2 => mantisa_desnormalizada_8_IBUF_507,
      I3 => flag_mux0013,
      O => N361
    );
  Madd_contador_ceros_addsub0021_cy_5_166_SW1 : LUT4
    generic map(
      INIT => X"FEFF"
    )
    port map (
      I0 => N213,
      I1 => mantisa_desnormalizada_4_IBUF_503,
      I2 => mantisa_desnormalizada_3_IBUF_502,
      I3 => Madd_contador_ceros_addsub0020_lut(4),
      O => N343
    );
  Madd_contador_ceros_addsub0021_cy_5_166 : LUT4
    generic map(
      INIT => X"0041"
    )
    port map (
      I0 => N126,
      I1 => Madd_contador_ceros_addsub0020_cy(0),
      I2 => mantisa_desnormalizada_2_IBUF_501,
      I3 => N343,
      O => Madd_contador_ceros_addsub0021_cy_5_166_54
    );
  contador_ceros_mux0028_0_SW0 : LUT3
    generic map(
      INIT => X"F4"
    )
    port map (
      I0 => mantisa_desnormalizada_10_IBUF_487,
      I1 => mantisa_desnormalizada_9_IBUF_508,
      I2 => mantisa_desnormalizada_12_IBUF_489,
      O => N345
    );
  contador_ceros_mux0028_0_Q : LUT4
    generic map(
      INIT => X"AAA9"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0011_cy(0),
      I1 => N150,
      I2 => mantisa_desnormalizada_11_IBUF_488,
      I3 => N345,
      O => Madd_contador_ceros_addsub0012_cy_0_Q
    );
  mantisa_aux_shift0001_17_41_SW0 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => N135,
      I1 => contador_ceros_mux0046_2_1,
      I2 => contador_ceros_mux0046_3_1,
      O => N347
    );
  mantisa_aux_shift0001_17_41 : LUT4
    generic map(
      INIT => X"0F02"
    )
    port map (
      I0 => mantisa_aux_shift0001_17_20_420,
      I1 => contador_ceros_mux0046_4_1,
      I2 => mantisa_aux_or0000,
      I3 => N347,
      O => mantisa_aux_shift0001(17)
    );
  contador_ceros_mux0036_2_SW1 : LUT4
    generic map(
      INIT => X"5595"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0016_cy(1),
      I1 => Madd_contador_ceros_addsub0016_lut(1),
      I2 => N361,
      I3 => mantisa_desnormalizada_5_IBUF_504,
      O => N349
    );
  contador_ceros_mux0036_2_Q : LUT4
    generic map(
      INIT => X"AAA9"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0016_lut(2),
      I1 => contador_ceros_mux0036_4_0,
      I2 => mantisa_desnormalizada_6_IBUF_505,
      I3 => N349,
      O => Madd_contador_ceros_addsub0020_lut(2)
    );
  contador_ceros_mux0042_7_39_SW0 : LUT4
    generic map(
      INIT => X"FF13"
    )
    port map (
      I0 => contador_ceros_mux0038_6_27_317,
      I1 => contador_ceros_mux0038_6_68_319,
      I2 => contador_ceros_mux0038_6_21_316,
      I3 => N24,
      O => N351
    );
  contador_ceros_mux0042_7_39 : LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      I0 => contador_ceros_mux0038_6_54,
      I1 => contador_ceros_mux0038_7_25_320,
      I2 => N351,
      I3 => contador_ceros_mux0042_7_34_322,
      O => Madd_contador_ceros_addsub0021_lut(7)
    );
  mantisa_normalizada_9_1 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => Mcompar_mantisa_aux_cmp_lt0000_cy_7_1,
      I1 => mantisa_aux(9),
      I2 => Mcompar_error_cmp_gt0000_cy(7),
      O => mantisa_normalizada_9_OBUF_554
    );
  mantisa_normalizada_8_1 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => Mcompar_mantisa_aux_cmp_lt0000_cy_7_1,
      I1 => mantisa_aux(8),
      I2 => Mcompar_error_cmp_gt0000_cy(7),
      O => mantisa_normalizada_8_OBUF_553
    );
  mantisa_normalizada_7_1 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => Mcompar_mantisa_aux_cmp_lt0000_cy_7_1,
      I1 => mantisa_aux(7),
      I2 => Mcompar_error_cmp_gt0000_cy(7),
      O => mantisa_normalizada_7_OBUF_552
    );
  mantisa_normalizada_6_1 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => Mcompar_mantisa_aux_cmp_lt0000_cy_7_1,
      I1 => mantisa_aux(6),
      I2 => Mcompar_error_cmp_gt0000_cy(7),
      O => mantisa_normalizada_6_OBUF_551
    );
  mantisa_normalizada_5_1 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => Mcompar_mantisa_aux_cmp_lt0000_cy_7_1,
      I1 => mantisa_aux(5),
      I2 => Mcompar_error_cmp_gt0000_cy(7),
      O => mantisa_normalizada_5_OBUF_550
    );
  mantisa_normalizada_4_1 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => Mcompar_mantisa_aux_cmp_lt0000_cy_7_1,
      I1 => mantisa_aux(4),
      I2 => Mcompar_error_cmp_gt0000_cy(7),
      O => mantisa_normalizada_4_OBUF_549
    );
  mantisa_normalizada_3_1 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => Mcompar_mantisa_aux_cmp_lt0000_cy_7_1,
      I1 => mantisa_aux(3),
      I2 => Mcompar_error_cmp_gt0000_cy(7),
      O => mantisa_normalizada_3_OBUF_548
    );
  mantisa_normalizada_2_1 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => Mcompar_mantisa_aux_cmp_lt0000_cy_7_1,
      I1 => mantisa_aux(2),
      I2 => Mcompar_error_cmp_gt0000_cy(7),
      O => mantisa_normalizada_2_OBUF_547
    );
  mantisa_normalizada_22_1 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => Mcompar_mantisa_aux_cmp_lt0000_cy_7_1,
      I1 => mantisa_aux(22),
      I2 => Mcompar_error_cmp_gt0000_cy(7),
      O => mantisa_normalizada_22_OBUF_546
    );
  mantisa_normalizada_21_1 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => Mcompar_mantisa_aux_cmp_lt0000_cy_7_1,
      I1 => mantisa_aux(21),
      I2 => Mcompar_error_cmp_gt0000_cy(7),
      O => mantisa_normalizada_21_OBUF_545
    );
  mantisa_normalizada_20_1 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => Mcompar_mantisa_aux_cmp_lt0000_cy_7_1,
      I1 => mantisa_aux(20),
      I2 => Mcompar_error_cmp_gt0000_cy(7),
      O => mantisa_normalizada_20_OBUF_544
    );
  mantisa_normalizada_1_1 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => Mcompar_mantisa_aux_cmp_lt0000_cy_7_1,
      I1 => mantisa_aux(1),
      I2 => Mcompar_error_cmp_gt0000_cy(7),
      O => mantisa_normalizada_1_OBUF_543
    );
  mantisa_normalizada_19_1 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => Mcompar_mantisa_aux_cmp_lt0000_cy_7_1,
      I1 => mantisa_aux(19),
      I2 => Mcompar_error_cmp_gt0000_cy(7),
      O => mantisa_normalizada_19_OBUF_542
    );
  mantisa_normalizada_18_1 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => Mcompar_mantisa_aux_cmp_lt0000_cy_7_1,
      I1 => mantisa_aux(18),
      I2 => Mcompar_error_cmp_gt0000_cy(7),
      O => mantisa_normalizada_18_OBUF_541
    );
  mantisa_normalizada_17_1 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => Mcompar_mantisa_aux_cmp_lt0000_cy_7_1,
      I1 => mantisa_aux(17),
      I2 => Mcompar_error_cmp_gt0000_cy(7),
      O => mantisa_normalizada_17_OBUF_540
    );
  mantisa_normalizada_16_1 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => Mcompar_mantisa_aux_cmp_lt0000_cy_7_1,
      I1 => mantisa_aux(16),
      I2 => Mcompar_error_cmp_gt0000_cy(7),
      O => mantisa_normalizada_16_OBUF_539
    );
  mantisa_normalizada_15_1 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => Mcompar_mantisa_aux_cmp_lt0000_cy_7_1,
      I1 => mantisa_aux(15),
      I2 => Mcompar_error_cmp_gt0000_cy(7),
      O => mantisa_normalizada_15_OBUF_538
    );
  mantisa_normalizada_14_1 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => Mcompar_mantisa_aux_cmp_lt0000_cy_7_1,
      I1 => mantisa_aux(14),
      I2 => Mcompar_error_cmp_gt0000_cy(7),
      O => mantisa_normalizada_14_OBUF_537
    );
  mantisa_normalizada_13_1 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => Mcompar_mantisa_aux_cmp_lt0000_cy_7_1,
      I1 => mantisa_aux(13),
      I2 => Mcompar_error_cmp_gt0000_cy(7),
      O => mantisa_normalizada_13_OBUF_536
    );
  mantisa_normalizada_12_1 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => Mcompar_mantisa_aux_cmp_lt0000_cy_7_1,
      I1 => mantisa_aux(12),
      I2 => Mcompar_error_cmp_gt0000_cy(7),
      O => mantisa_normalizada_12_OBUF_535
    );
  mantisa_normalizada_11_1 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => Mcompar_mantisa_aux_cmp_lt0000_cy_7_1,
      I1 => mantisa_aux(11),
      I2 => Mcompar_error_cmp_gt0000_cy(7),
      O => mantisa_normalizada_11_OBUF_534
    );
  mantisa_normalizada_10_1 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => Mcompar_mantisa_aux_cmp_lt0000_cy_7_1,
      I1 => mantisa_aux(10),
      I2 => Mcompar_error_cmp_gt0000_cy(7),
      O => mantisa_normalizada_10_OBUF_533
    );
  mantisa_normalizada_0_1 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => Mcompar_mantisa_aux_cmp_lt0000_cy_7_1,
      I1 => mantisa_aux(0),
      I2 => Mcompar_error_cmp_gt0000_cy(7),
      O => mantisa_normalizada_0_OBUF_532
    );
  exponente_out_7_1 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => Mcompar_mantisa_aux_cmp_lt0000_cy_7_1,
      I1 => exponente_out_addsub0000(7),
      I2 => Mcompar_error_cmp_gt0000_cy(7),
      O => exponente_out_7_OBUF_366
    );
  exponente_out_6_1 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => Mcompar_mantisa_aux_cmp_lt0000_cy_7_1,
      I1 => exponente_out_addsub0000(6),
      I2 => Mcompar_error_cmp_gt0000_cy(7),
      O => exponente_out_6_OBUF_365
    );
  exponente_out_5_1 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => Mcompar_mantisa_aux_cmp_lt0000_cy_7_1,
      I1 => exponente_out_addsub0000(5),
      I2 => Mcompar_error_cmp_gt0000_cy(7),
      O => exponente_out_5_OBUF_364
    );
  exponente_out_4_1 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => Mcompar_mantisa_aux_cmp_lt0000_cy_7_1,
      I1 => exponente_out_addsub0000(4),
      I2 => Mcompar_error_cmp_gt0000_cy(7),
      O => exponente_out_4_OBUF_363
    );
  exponente_out_3_1 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => Mcompar_mantisa_aux_cmp_lt0000_cy_7_1,
      I1 => exponente_out_addsub0000(3),
      I2 => Mcompar_error_cmp_gt0000_cy(7),
      O => exponente_out_3_OBUF_362
    );
  exponente_out_2_1 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => Mcompar_mantisa_aux_cmp_lt0000_cy_7_1,
      I1 => exponente_out_addsub0000(2),
      I2 => Mcompar_error_cmp_gt0000_cy(7),
      O => exponente_out_2_OBUF_361
    );
  exponente_out_1_1 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => Mcompar_mantisa_aux_cmp_lt0000_cy_7_1,
      I1 => exponente_out_addsub0000(1),
      I2 => Mcompar_error_cmp_gt0000_cy(7),
      O => exponente_out_1_OBUF_360
    );
  exponente_out_0_1 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => Mcompar_mantisa_aux_cmp_lt0000_cy_7_1,
      I1 => exponente_out_addsub0000(0),
      I2 => Mcompar_error_cmp_gt0000_cy(7),
      O => exponente_out_0_OBUF_359
    );
  contador_ceros_mux0040_1_1 : LUT4
    generic map(
      INIT => X"C9CC"
    )
    port map (
      I0 => mantisa_desnormalizada_4_IBUF_503,
      I1 => Madd_contador_ceros_addsub0020_lut(1),
      I2 => N126,
      I3 => N02,
      O => Madd_contador_ceros_addsub0019_lut(1)
    );
  mantisa_aux_shift0001_22_41 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => contador_ceros_mux0046_4_1,
      I1 => mantisa_aux_or0000,
      I2 => contador_ceros_mux0046_2_1,
      I3 => contador_ceros_mux0046_3_1,
      O => N158
    );
  Madd_contador_ceros_addsub0012_cy_2_1521 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => mantisa_desnormalizada_11_IBUF_488,
      I1 => mantisa_desnormalizada_12_IBUF_489,
      I2 => N150,
      I3 => Madd_contador_ceros_addsub0011_cy(0),
      O => N1551
    );
  contador_ceros_mux0030_2_41_SW0 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0011_cy(0),
      I1 => mantisa_desnormalizada_8_IBUF_507,
      I2 => mantisa_desnormalizada_9_IBUF_508,
      I3 => mantisa_desnormalizada_10_IBUF_487,
      O => N255
    );
  contador_ceros_mux0030_3_SW0 : LUT3
    generic map(
      INIT => X"65"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0015_cy(2),
      I1 => mantisa_desnormalizada_8_IBUF_507,
      I2 => Madd_contador_ceros_addsub0012_cy_2_Q,
      O => N353
    );
  contador_ceros_mux0030_3_Q : LUT4
    generic map(
      INIT => X"C9CC"
    )
    port map (
      I0 => N353,
      I1 => Madd_contador_ceros_addsub0015_lut(3),
      I2 => mantisa_desnormalizada_9_IBUF_508,
      I3 => flag_mux0013,
      O => Madd_contador_ceros_addsub0014_lut(3)
    );
  contador_ceros_mux0042_6_31_SW0 : LUT4
    generic map(
      INIT => X"FF71"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0017_cy(4),
      I1 => Madd_contador_ceros_addsub0017_lut(5),
      I2 => N49,
      I3 => mantisa_desnormalizada_3_IBUF_502,
      O => N355
    );
  contador_ceros_mux0042_6_31 : LUT4
    generic map(
      INIT => X"AB01"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0017_lut(6),
      I1 => N23,
      I2 => N355,
      I3 => N24,
      O => Madd_contador_ceros_addsub0021_lut(6)
    );
  Madd_contador_ceros_addsub0018_cy_4_139_SW0 : LUT4
    generic map(
      INIT => X"0A06"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0016_lut(2),
      I1 => Madd_contador_ceros_addsub0016_cy(1),
      I2 => Madd_contador_ceros_addsub0014_cy(3),
      I3 => mantisa_desnormalizada_6_IBUF_505,
      O => N285
    );
  Madd_contador_ceros_addsub0016_cy_1_160_SW0_SW0 : LUT4
    generic map(
      INIT => X"FFAB"
    )
    port map (
      I0 => mantisa_desnormalizada_9_IBUF_508,
      I1 => N5,
      I2 => mantisa_desnormalizada_7_IBUF_506,
      I3 => mantisa_desnormalizada_8_IBUF_507,
      O => N357
    );
  Madd_contador_ceros_addsub0016_cy_1_160_SW0 : LUT4
    generic map(
      INIT => X"8808"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0012_cy_0_Q,
      I1 => Madd_contador_ceros_addsub0014_lut(1),
      I2 => flag_mux0013,
      I3 => N357,
      O => N293
    );
  contador_ceros_mux0032_1_SW2 : LUT4
    generic map(
      INIT => X"FEFF"
    )
    port map (
      I0 => mantisa_desnormalizada_7_IBUF_506,
      I1 => mantisa_desnormalizada_8_IBUF_507,
      I2 => mantisa_desnormalizada_9_IBUF_508,
      I3 => flag_mux0013,
      O => contador_ceros_mux0036_4_0
    );
  contador_ceros_mux0038_7_411 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => mantisa_desnormalizada_5_IBUF_504,
      I1 => mantisa_desnormalizada_6_IBUF_505,
      I2 => mantisa_desnormalizada_7_IBUF_506,
      I3 => N7,
      O => N126
    );
  contador_ceros_mux0036_3_1_SW0 : LUT4
    generic map(
      INIT => X"FF71"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0016_cy(1),
      I1 => Madd_contador_ceros_addsub0016_lut(2),
      I2 => N28,
      I3 => mantisa_desnormalizada_7_IBUF_506,
      O => N359
    );
  contador_ceros_mux0036_3_1 : LUT4
    generic map(
      INIT => X"AAA9"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0016_lut(3),
      I1 => N7,
      I2 => mantisa_desnormalizada_6_IBUF_505,
      I3 => N359,
      O => Madd_contador_ceros_addsub0020_lut(3)
    );
  mantisa_aux_shift0001_22_79_SW0 : LUT4
    generic map(
      INIT => X"AA8A"
    )
    port map (
      I0 => N331,
      I1 => contador_ceros_mux0046_4_1,
      I2 => mantisa_aux_shift0001_22_64,
      I3 => contador_ceros_mux0046_3_1,
      O => N3611
    );
  mantisa_aux_shift0001_22_79 : LUT4
    generic map(
      INIT => X"2031"
    )
    port map (
      I0 => contador_ceros_mux0046_2_1,
      I1 => mantisa_aux_or0000,
      I2 => N6,
      I3 => N3611,
      O => mantisa_aux_shift0001(22)
    );
  Madd_contador_ceros_addsub0015_cy_3_147_SW1_SW0 : LUT4
    generic map(
      INIT => X"AAFD"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0007_cy(0),
      I1 => mantisa_desnormalizada_11_IBUF_488,
      I2 => mantisa_desnormalizada_10_IBUF_487,
      I3 => mantisa_desnormalizada_12_IBUF_489,
      O => N363
    );
  Madd_contador_ceros_addsub0015_cy_3_147_SW1 : LUT4
    generic map(
      INIT => X"AA06"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0007_lut(2),
      I1 => Madd_contador_ceros_addsub0007_cy(1),
      I2 => N363,
      I3 => N150,
      O => N335
    );
  mantisa_aux_or000041 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => mantisa_desnormalizada_1_IBUF_497,
      I1 => mantisa_desnormalizada_2_IBUF_501,
      I2 => mantisa_desnormalizada_3_IBUF_502,
      I3 => N23,
      O => N124
    );
  contador_ceros_mux0040_4_31 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => mantisa_desnormalizada_3_IBUF_502,
      I1 => mantisa_desnormalizada_4_IBUF_503,
      I2 => N126,
      O => N87
    );
  mantisa_aux_shift0001_21_112 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => mantisa_desnormalizada_2_IBUF_501,
      I1 => mantisa_desnormalizada_3_IBUF_502,
      I2 => mantisa_desnormalizada_4_IBUF_503,
      I3 => N126,
      O => N64
    );
  contador_ceros_mux0046_2_Q : MUXF5
    port map (
      I0 => N365,
      I1 => N366,
      S => Madd_contador_ceros_addsub0019_lut(2),
      O => contador_ceros_mux0046_2_1
    );
  contador_ceros_mux0046_2_F : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => N63,
      I1 => mantisa_desnormalizada_2_IBUF_501,
      I2 => N87,
      O => N365
    );
  contador_ceros_mux0046_2_G : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => N271,
      I1 => N89,
      I2 => Madd_contador_ceros_addsub0020_lut(1),
      O => N366
    );
  mantisa_aux_shift0001_14_Q : MUXF5
    port map (
      I0 => N367,
      I1 => N368,
      S => contador_ceros_mux0046_2_1,
      O => mantisa_aux_shift0001(14)
    );
  mantisa_aux_shift0001_14_F : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => N160,
      I1 => contador_ceros_mux0046_3_1,
      I2 => N43,
      I3 => Sh6,
      O => N367
    );
  mantisa_aux_shift0001_14_G : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => N160,
      I1 => contador_ceros_mux0046_3_1,
      I2 => N77,
      I3 => N44,
      O => N368
    );
  mantisa_aux_shift0001_12_Q : MUXF5
    port map (
      I0 => N369,
      I1 => N370,
      S => contador_ceros_mux0046_2_1,
      O => mantisa_aux_shift0001(12)
    );
  mantisa_aux_shift0001_12_F : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => N160,
      I1 => contador_ceros_mux0046_3_1,
      I2 => N42,
      I3 => Sh4,
      O => N369
    );
  mantisa_aux_shift0001_12_G : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => N160,
      I1 => contador_ceros_mux0046_3_1,
      I2 => Sh8,
      I3 => N162,
      O => N370
    );
  mantisa_aux_shift0001_20_371 : MUXF5
    port map (
      I0 => N371,
      I1 => N372,
      S => contador_ceros_mux0046_3_1,
      O => N75
    );
  mantisa_aux_shift0001_20_371_F : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => mantisa_aux_shift0001_20_331,
      I1 => N162,
      I2 => contador_ceros_mux0046_4_1,
      O => N371
    );
  mantisa_aux_shift0001_20_371_G : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => contador_ceros_mux0046_0_1_323,
      I1 => N1210,
      I2 => contador_ceros_mux0046_4_1,
      I3 => N921,
      O => N372
    );
  mantisa_aux_shift0001_22_171 : MUXF5
    port map (
      I0 => N373,
      I1 => N374,
      S => contador_ceros_mux0046_3_1,
      O => N6
    );
  mantisa_aux_shift0001_22_171_F : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => mantisa_aux_shift0001_22_131,
      I1 => N44,
      I2 => contador_ceros_mux0046_4_1,
      O => N373
    );
  mantisa_aux_shift0001_22_171_G : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => contador_ceros_mux0046_1_1,
      I1 => N173,
      I2 => contador_ceros_mux0046_4_1,
      I3 => N184,
      O => N374
    );
  mantisa_aux_shift0001_17_20 : MUXF5
    port map (
      I0 => N375,
      I1 => N376,
      S => contador_ceros_mux0046_2_1,
      O => mantisa_aux_shift0001_17_20_420
    );
  mantisa_aux_shift0001_17_20_F : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => contador_ceros_mux0046_3_1,
      I1 => contador_ceros_mux0046_0_1_323,
      I2 => N269,
      I3 => N1210,
      O => N375
    );
  mantisa_aux_shift0001_17_20_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => contador_ceros_mux0046_3_1,
      I1 => N74,
      I2 => Sh5,
      O => N376
    );
  mantisa_aux_shift0001_20_54 : MUXF5
    port map (
      I0 => N377,
      I1 => N378,
      S => contador_ceros_mux0046_3_1,
      O => mantisa_aux_shift0001_20_54_435
    );
  mantisa_aux_shift0001_20_54_F : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => contador_ceros_mux0046_0_1_323,
      I1 => N103,
      I2 => mantisa_aux_or0000,
      I3 => mantisa_aux_shift0001_20_10_432,
      O => N377
    );
  mantisa_aux_shift0001_20_54_G : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => N42,
      I1 => contador_ceros_mux0046_4_1,
      I2 => mantisa_aux_or0000,
      O => N378
    );
  mantisa_aux_shift0001_22_36_SW1 : MUXF5
    port map (
      I0 => N379,
      I1 => N380,
      S => contador_ceros_mux0046_3_1,
      O => N331
    );
  mantisa_aux_shift0001_22_36_SW1_F : LUT4
    generic map(
      INIT => X"27FF"
    )
    port map (
      I0 => contador_ceros_mux0046_0_1_323,
      I1 => N123,
      I2 => N115,
      I3 => contador_ceros_mux0046_4_1,
      O => N379
    );
  mantisa_aux_shift0001_22_36_SW1_G : LUT4
    generic map(
      INIT => X"FF1B"
    )
    port map (
      I0 => contador_ceros_mux0046_1_1,
      I1 => mantisa_aux_shift0001_20_38,
      I2 => N167,
      I3 => contador_ceros_mux0046_4_1,
      O => N380
    );
  Mcompar_mantisa_aux_cmp_lt0000_cy_7_BUFG : BUFG
    port map (
      I => Mcompar_mantisa_aux_cmp_lt0000_cy_7_1,
      O => Mcompar_mantisa_aux_cmp_lt0000_cy(7)
    );
  Mcompar_mantisa_aux_cmp_lt0000_cy_7_inv_INV_0 : INV
    port map (
      I => Mcompar_mantisa_aux_cmp_lt0000_cy(7),
      O => mantisa_aux_cmp_lt0000
    );
  XST_GND : GND
    port map (
      G => N381
    );
  mantisa_aux_shift0001_11_111 : LUT4
    generic map(
      INIT => X"FFE2"
    )
    port map (
      I0 => N170,
      I1 => contador_ceros_mux0046_1_1,
      I2 => N176,
      I3 => contador_ceros_mux0046_3_1,
      O => mantisa_aux_shift0001_11_11
    );
  mantisa_aux_shift0001_11_112 : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => contador_ceros_mux0046_1_1,
      I1 => N170,
      I2 => contador_ceros_mux0046_3_1,
      I3 => N176,
      O => mantisa_aux_shift0001_11_111_413
    );
  mantisa_aux_shift0001_11_11_f5 : MUXF5
    port map (
      I0 => mantisa_aux_shift0001_11_111_413,
      I1 => mantisa_aux_shift0001_11_11,
      S => N4,
      O => N90
    );
  mantisa_aux_shift0001_21_31 : LUT4
    generic map(
      INIT => X"FFE2"
    )
    port map (
      I0 => mantisa_desnormalizada_13_IBUF_490,
      I1 => contador_ceros_mux0046_0_1_323,
      I2 => mantisa_desnormalizada_12_IBUF_489,
      I3 => contador_ceros_mux0046_1_1,
      O => mantisa_aux_shift0001_21_3
    );
  mantisa_aux_shift0001_21_32 : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => contador_ceros_mux0046_0_1_323,
      I1 => mantisa_desnormalizada_13_IBUF_490,
      I2 => contador_ceros_mux0046_1_1,
      I3 => mantisa_desnormalizada_12_IBUF_489,
      O => mantisa_aux_shift0001_21_31_440
    );
  mantisa_aux_shift0001_21_3_f5 : MUXF5
    port map (
      I0 => mantisa_aux_shift0001_21_31_440,
      I1 => mantisa_aux_shift0001_21_3,
      S => N170,
      O => N74
    );
  mantisa_aux_shift0001_21_61391 : LUT4
    generic map(
      INIT => X"FE54"
    )
    port map (
      I0 => contador_ceros_mux0046_4_1,
      I1 => contador_ceros_mux0046_1_1,
      I2 => N275,
      I3 => N1511,
      O => mantisa_aux_shift0001_21_6139
    );
  mantisa_aux_shift0001_21_61392 : LUT4
    generic map(
      INIT => X"BA10"
    )
    port map (
      I0 => contador_ceros_mux0046_4_1,
      I1 => contador_ceros_mux0046_1_1,
      I2 => N275,
      I3 => N1511,
      O => mantisa_aux_shift0001_21_61391_443
    );
  mantisa_aux_shift0001_21_6139_f5 : MUXF5
    port map (
      I0 => mantisa_aux_shift0001_21_61391_443,
      I1 => mantisa_aux_shift0001_21_6139,
      S => N95,
      O => N135
    );
  mantisa_aux_shift0001_22_1311 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => N113,
      I1 => contador_ceros_mux0046_4_1,
      O => mantisa_aux_shift0001_22_1311_447
    );
  mantisa_aux_shift0001_22_1312 : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => contador_ceros_mux0046_0_1_323,
      I1 => mantisa_desnormalizada_18_IBUF_495,
      I2 => contador_ceros_mux0046_4_1,
      I3 => mantisa_desnormalizada_17_IBUF_494,
      O => mantisa_aux_shift0001_22_1312_448
    );
  mantisa_aux_shift0001_22_131_f5 : MUXF5
    port map (
      I0 => mantisa_aux_shift0001_22_1312_448,
      I1 => mantisa_aux_shift0001_22_1311_447,
      S => contador_ceros_mux0046_1_1,
      O => mantisa_aux_shift0001_22_131
    );
  contador_ceros_mux0036_1_341 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => mantisa_desnormalizada_8_IBUF_507,
      I1 => mantisa_desnormalizada_9_IBUF_508,
      I2 => mantisa_desnormalizada_10_IBUF_487,
      I3 => N126,
      O => contador_ceros_mux0036_1_341_306
    );
  contador_ceros_mux0036_1_34_f5 : MUXF5
    port map (
      I0 => N381,
      I1 => contador_ceros_mux0036_1_341_306,
      S => N139,
      O => contador_ceros_mux0036_1_34
    );
  mantisa_aux_shift0001_19_321 : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => contador_ceros_mux0046_0_1_323,
      I1 => N136,
      I2 => contador_ceros_mux0046_3_1,
      I3 => mantisa_desnormalizada_16_IBUF_493,
      O => mantisa_aux_shift0001_19_321_427
    );
  mantisa_aux_shift0001_19_322 : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => contador_ceros_mux0046_0_1_323,
      I1 => N136,
      I2 => contador_ceros_mux0046_3_1,
      I3 => mantisa_desnormalizada_18_IBUF_495,
      O => mantisa_aux_shift0001_19_322_428
    );
  mantisa_aux_shift0001_19_32_f5 : MUXF5
    port map (
      I0 => mantisa_aux_shift0001_19_322_428,
      I1 => mantisa_aux_shift0001_19_321_427,
      S => contador_ceros_mux0046_1_1,
      O => mantisa_aux_shift0001_19_32
    );
  contador_ceros_mux0030_4_1 : LUT4
    generic map(
      INIT => X"AA6A"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0015_lut(4),
      I1 => Madd_contador_ceros_addsub0015_cy(3),
      I2 => flag_mux0013,
      I3 => mantisa_desnormalizada_9_IBUF_508,
      O => contador_ceros_mux0030(4)
    );
  contador_ceros_mux0030_4_2 : LUT4
    generic map(
      INIT => X"C9CC"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0015_cy(3),
      I1 => Madd_contador_ceros_addsub0015_lut(4),
      I2 => mantisa_desnormalizada_9_IBUF_508,
      I3 => flag_mux0013,
      O => contador_ceros_mux0030_4_1_300
    );
  contador_ceros_mux0030_4_f5 : MUXF5
    port map (
      I0 => contador_ceros_mux0030_4_1_300,
      I1 => contador_ceros_mux0030(4),
      S => N54,
      O => Madd_contador_ceros_addsub0014_lut(4)
    );
  mantisa_aux_shift0001_8_11 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N138,
      I1 => N162,
      I2 => Sh4,
      I3 => N165,
      O => mantisa_aux_shift0001_8_1
    );
  mantisa_aux_shift0001_8_12 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N138,
      I1 => Sh8,
      I2 => Sh4,
      I3 => N165,
      O => mantisa_aux_shift0001_8_11_460
    );
  mantisa_aux_shift0001_8_1_f5 : MUXF5
    port map (
      I0 => mantisa_aux_shift0001_8_11_460,
      I1 => mantisa_aux_shift0001_8_1,
      S => contador_ceros_mux0046_3_1,
      O => mantisa_aux_shift0001(8)
    );
  mantisa_aux_shift0001_10_11 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N44,
      I1 => N138,
      I2 => Sh6,
      I3 => N165,
      O => mantisa_aux_shift0001_10_1
    );
  mantisa_aux_shift0001_10_12 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N77,
      I1 => N138,
      I2 => Sh6,
      I3 => N165,
      O => mantisa_aux_shift0001_10_11_410
    );
  mantisa_aux_shift0001_10_1_f5 : MUXF5
    port map (
      I0 => mantisa_aux_shift0001_10_11_410,
      I1 => mantisa_aux_shift0001_10_1,
      S => contador_ceros_mux0046_3_1,
      O => mantisa_aux_shift0001(10)
    );
  contador_ceros_mux0046_7_SW11 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0021_lut(6),
      I1 => Madd_contador_ceros_addsub0021_cy(5),
      O => contador_ceros_mux0046_7_SW1
    );
  contador_ceros_mux0046_7_SW12 : LUT4
    generic map(
      INIT => X"099F"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0021_cy(4),
      I1 => Madd_contador_ceros_addsub0021_lut(5),
      I2 => Madd_contador_ceros_addsub0021_lut(6),
      I3 => Madd_contador_ceros_addsub0021_cy(5),
      O => contador_ceros_mux0046_7_SW11_332
    );
  contador_ceros_mux0046_7_SW1_f5 : MUXF5
    port map (
      I0 => contador_ceros_mux0046_7_SW11_332,
      I1 => contador_ceros_mux0046_7_SW1,
      S => N52,
      O => N239
    );
  contador_ceros_mux0030_1_1211 : LUT4
    generic map(
      INIT => X"FF02"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0007_cy(0),
      I1 => mantisa_desnormalizada_11_IBUF_488,
      I2 => mantisa_desnormalizada_12_IBUF_489,
      I3 => N150,
      O => contador_ceros_mux0030_1_121
    );
  contador_ceros_mux0030_1_121_f5 : MUXF5
    port map (
      I0 => N150,
      I1 => contador_ceros_mux0030_1_121,
      S => N53,
      O => contador_ceros_mux0030_1_12
    );
  mantisa_aux_shift0001_22_641 : LUT4
    generic map(
      INIT => X"FFE2"
    )
    port map (
      I0 => mantisa_desnormalizada_22_IBUF_500,
      I1 => contador_ceros_mux0046_1_1,
      I2 => mantisa_desnormalizada_20_IBUF_498,
      I3 => contador_ceros_mux0046_0_1_323,
      O => mantisa_aux_shift0001_22_641_450
    );
  mantisa_aux_shift0001_22_642 : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => contador_ceros_mux0046_1_1,
      I1 => mantisa_desnormalizada_22_IBUF_500,
      I2 => contador_ceros_mux0046_0_1_323,
      I3 => mantisa_desnormalizada_20_IBUF_498,
      O => mantisa_aux_shift0001_22_642_451
    );
  mantisa_aux_shift0001_22_64_f5 : MUXF5
    port map (
      I0 => mantisa_aux_shift0001_22_642_451,
      I1 => mantisa_aux_shift0001_22_641_450,
      S => N137,
      O => mantisa_aux_shift0001_22_64
    );
  contador_ceros_mux0030_1_831 : LUT4
    generic map(
      INIT => X"FFAE"
    )
    port map (
      I0 => mantisa_desnormalizada_12_IBUF_489,
      I1 => N21,
      I2 => mantisa_desnormalizada_10_IBUF_487,
      I3 => mantisa_desnormalizada_11_IBUF_488,
      O => contador_ceros_mux0030_1_831_291
    );
  contador_ceros_mux0030_1_832 : LUT3
    generic map(
      INIT => X"32"
    )
    port map (
      I0 => mantisa_desnormalizada_11_IBUF_488,
      I1 => mantisa_desnormalizada_12_IBUF_489,
      I2 => N53,
      O => contador_ceros_mux0030_1_832_292
    );
  contador_ceros_mux0030_1_83_f5 : MUXF5
    port map (
      I0 => contador_ceros_mux0030_1_832_292,
      I1 => contador_ceros_mux0030_1_831_291,
      S => Madd_contador_ceros_addsub0007_cy(0),
      O => contador_ceros_mux0030_1_83
    );
  contador_ceros_mux0034_5_711 : LUT4
    generic map(
      INIT => X"FF71"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0014_cy(3),
      I1 => Madd_contador_ceros_addsub0014_lut(4),
      I2 => contador_ceros_mux0034_5_21_301,
      I3 => contador_ceros_mux0036_4_0,
      O => contador_ceros_mux0034_5_71
    );
  contador_ceros_mux0034_5_712 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => N17,
      I1 => contador_ceros_mux0036_4_0,
      O => contador_ceros_mux0034_5_711_303
    );
  contador_ceros_mux0034_5_71_f5 : MUXF5
    port map (
      I0 => contador_ceros_mux0034_5_711_303,
      I1 => contador_ceros_mux0034_5_71,
      S => Madd_contador_ceros_addsub0014_lut(5),
      O => Madd_contador_ceros_addsub0018_lut(5)
    );
  contador_ceros_mux0030_1_1101 : LUT3
    generic map(
      INIT => X"F4"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0007_cy(0),
      I1 => contador_ceros_mux0030_1_24_289,
      I2 => contador_ceros_mux0030_1_12,
      O => contador_ceros_mux0030_1_110
    );
  contador_ceros_mux0030_1_1102 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => contador_ceros_mux0030_1_83,
      I1 => N150,
      O => contador_ceros_mux0030_1_1101_286
    );
  contador_ceros_mux0030_1_110_f5 : MUXF5
    port map (
      I0 => contador_ceros_mux0030_1_1101_286,
      I1 => contador_ceros_mux0030_1_110,
      S => Madd_contador_ceros_addsub0007_lut(1),
      O => Madd_contador_ceros_addsub0014_lut(1)
    );
  Madd_contador_ceros_addsub0014_cy_3_171_SW01 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0012_cy_0_Q,
      I1 => Madd_contador_ceros_addsub0015_lut(3),
      O => Madd_contador_ceros_addsub0014_cy_3_171_SW0
    );
  Madd_contador_ceros_addsub0014_cy_3_171_SW02 : LUT4
    generic map(
      INIT => X"2800"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0012_cy_0_Q,
      I1 => Madd_contador_ceros_addsub0015_cy(2),
      I2 => Madd_contador_ceros_addsub0015_lut(3),
      I3 => mantisa_desnormalizada_8_IBUF_507,
      O => Madd_contador_ceros_addsub0014_cy_3_171_SW01_13
    );
  Madd_contador_ceros_addsub0014_cy_3_171_SW0_f5 : MUXF5
    port map (
      I0 => Madd_contador_ceros_addsub0014_cy_3_171_SW01_13,
      I1 => Madd_contador_ceros_addsub0014_cy_3_171_SW0,
      S => N155,
      O => N295
    );
  contador_ceros_mux0036_4_301 : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => N45,
      I1 => Madd_contador_ceros_addsub0016_lut(3),
      I2 => mantisa_desnormalizada_6_IBUF_505,
      I3 => contador_ceros_mux0036_4_0,
      O => contador_ceros_mux0036_4_301_310
    );
  contador_ceros_mux0036_4_302 : LUT4
    generic map(
      INIT => X"FEFF"
    )
    port map (
      I0 => mantisa_desnormalizada_6_IBUF_505,
      I1 => contador_ceros_mux0036_4_0,
      I2 => N98,
      I3 => Madd_contador_ceros_addsub0016_lut(3),
      O => contador_ceros_mux0036_4_302_311
    );
  contador_ceros_mux0036_4_30_f5 : MUXF5
    port map (
      I0 => contador_ceros_mux0036_4_302_311,
      I1 => contador_ceros_mux0036_4_301_310,
      S => Madd_contador_ceros_addsub0014_cy(3),
      O => contador_ceros_mux0036_4_30
    );
  contador_ceros_mux0036_4_891 : LUT4
    generic map(
      INIT => X"AA8A"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0018_cy_4_159_37,
      I1 => mantisa_desnormalizada_6_IBUF_505,
      I2 => Madd_contador_ceros_addsub0016_lut(3),
      I3 => N98,
      O => contador_ceros_mux0036_4_891_313
    );
  contador_ceros_mux0036_4_892 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0018_cy_4_159_37,
      I1 => Madd_contador_ceros_addsub0016_lut(3),
      I2 => N45,
      I3 => mantisa_desnormalizada_6_IBUF_505,
      O => contador_ceros_mux0036_4_892_314
    );
  contador_ceros_mux0036_4_89_f5 : MUXF5
    port map (
      I0 => contador_ceros_mux0036_4_892_314,
      I1 => contador_ceros_mux0036_4_891_313,
      S => Madd_contador_ceros_addsub0014_cy(3),
      O => contador_ceros_mux0036_4_89
    );
  Madd_contador_ceros_addsub0015_cy_3_1151_SW02 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => Madd_contador_ceros_addsub0007_lut(1),
      I1 => Madd_contador_ceros_addsub0011_cy(0),
      I2 => N335,
      I3 => mantisa_desnormalizada_18_IBUF_495,
      O => Madd_contador_ceros_addsub0015_cy_3_1151_SW01
    );
  Madd_contador_ceros_addsub0015_cy_3_1151_SW0_f5 : MUXF5
    port map (
      I0 => Madd_contador_ceros_addsub0015_cy_3_1151_SW01,
      I1 => Madd_contador_ceros_addsub0015_cy_3_1151_SW0,
      S => N96,
      O => N333
    );
  Madd_contador_ceros_addsub0015_cy_3_1151_SW01_INV_0 : INV
    port map (
      I => mantisa_desnormalizada_18_IBUF_495,
      O => Madd_contador_ceros_addsub0015_cy_3_1151_SW0
    );

end Structure;

