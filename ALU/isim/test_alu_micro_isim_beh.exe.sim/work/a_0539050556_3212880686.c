/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/FPGA/ALU/Decodificador.vhd";
extern char *IEEE_P_3620187407;



static void work_a_0539050556_3212880686_p_0(char *t0)
{
    char t39[16];
    char t41[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    char *t9;
    char *t10;
    int t11;
    char *t12;
    char *t13;
    int t14;
    char *t15;
    char *t16;
    int t17;
    char *t18;
    char *t19;
    int t20;
    char *t21;
    char *t22;
    int t23;
    char *t24;
    int t26;
    char *t27;
    int t29;
    char *t30;
    int t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    unsigned int t40;
    unsigned int t42;
    unsigned int t43;

LAB0:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 4432);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 1192U);
    t5 = *((char **)t1);
    t6 = (7 - 2);
    t7 = (t6 * 1U);
    t8 = (0 + t7);
    t1 = (t5 + t8);
    t9 = (t0 + 7258);
    t11 = xsi_mem_cmp(t9, t1, 3U);
    if (t11 == 1)
        goto LAB6;

LAB15:    t12 = (t0 + 7261);
    t14 = xsi_mem_cmp(t12, t1, 3U);
    if (t14 == 1)
        goto LAB7;

LAB16:    t15 = (t0 + 7264);
    t17 = xsi_mem_cmp(t15, t1, 3U);
    if (t17 == 1)
        goto LAB8;

LAB17:    t18 = (t0 + 7267);
    t20 = xsi_mem_cmp(t18, t1, 3U);
    if (t20 == 1)
        goto LAB9;

LAB18:    t21 = (t0 + 7270);
    t23 = xsi_mem_cmp(t21, t1, 3U);
    if (t23 == 1)
        goto LAB10;

LAB19:    t24 = (t0 + 7273);
    t26 = xsi_mem_cmp(t24, t1, 3U);
    if (t26 == 1)
        goto LAB11;

LAB20:    t27 = (t0 + 7276);
    t29 = xsi_mem_cmp(t27, t1, 3U);
    if (t29 == 1)
        goto LAB12;

LAB21:    t30 = (t0 + 7279);
    t32 = xsi_mem_cmp(t30, t1, 3U);
    if (t32 == 1)
        goto LAB13;

LAB22:
LAB14:    xsi_set_current_line(92, ng0);
    t1 = (t0 + 7282);
    t5 = (t0 + 4512);
    t9 = (t5 + 56U);
    t10 = *((char **)t9);
    t12 = (t10 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 32U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(93, ng0);
    t1 = (t0 + 7314);
    t5 = (t0 + 4576);
    t9 = (t5 + 56U);
    t10 = *((char **)t9);
    t12 = (t10 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 32U);
    xsi_driver_first_trans_fast(t5);

LAB5:    xsi_set_current_line(97, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t6 = (7 - 3);
    t7 = (t6 * 1U);
    t8 = (0 + t7);
    t1 = (t2 + t8);
    t5 = (t39 + 0U);
    t9 = (t5 + 0U);
    *((int *)t9) = 3;
    t9 = (t5 + 4U);
    *((int *)t9) = 0;
    t9 = (t5 + 8U);
    *((int *)t9) = -1;
    t11 = (0 - 3);
    t40 = (t11 * -1);
    t40 = (t40 + 1);
    t9 = (t5 + 12U);
    *((unsigned int *)t9) = t40;
    t9 = (t0 + 7346);
    t12 = (t41 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 0;
    t13 = (t12 + 4U);
    *((int *)t13) = 3;
    t13 = (t12 + 8U);
    *((int *)t13) = 1;
    t14 = (3 - 0);
    t40 = (t14 * 1);
    t40 = (t40 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t40;
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t1, t39, t9, t41);
    if (t3 != 0)
        goto LAB24;

LAB26:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t6 = (7 - 4);
    t7 = (t6 * 1U);
    t8 = (0 + t7);
    t1 = (t2 + t8);
    t5 = (t39 + 0U);
    t9 = (t5 + 0U);
    *((int *)t9) = 4;
    t9 = (t5 + 4U);
    *((int *)t9) = 0;
    t9 = (t5 + 8U);
    *((int *)t9) = -1;
    t11 = (0 - 4);
    t40 = (t11 * -1);
    t40 = (t40 + 1);
    t9 = (t5 + 12U);
    *((unsigned int *)t9) = t40;
    t9 = (t0 + 7352);
    t12 = (t41 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 0;
    t13 = (t12 + 4U);
    *((int *)t13) = 4;
    t13 = (t12 + 8U);
    *((int *)t13) = 1;
    t14 = (4 - 0);
    t40 = (t14 * 1);
    t40 = (t40 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t40;
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t1, t39, t9, t41);
    if (t3 != 0)
        goto LAB27;

LAB28:
LAB25:    goto LAB3;

LAB6:    xsi_set_current_line(60, ng0);
    t33 = (t0 + 1032U);
    t34 = *((char **)t33);
    t33 = (t0 + 4512);
    t35 = (t33 + 56U);
    t36 = *((char **)t35);
    t37 = (t36 + 56U);
    t38 = *((char **)t37);
    memcpy(t38, t34, 8U);
    xsi_driver_first_trans_delta(t33, 24U, 8U, 0LL);
    goto LAB5;

LAB7:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4512);
    t5 = (t1 + 56U);
    t9 = *((char **)t5);
    t10 = (t9 + 56U);
    t12 = *((char **)t10);
    memcpy(t12, t2, 8U);
    xsi_driver_first_trans_delta(t1, 16U, 8U, 0LL);
    goto LAB5;

LAB8:    xsi_set_current_line(68, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4512);
    t5 = (t1 + 56U);
    t9 = *((char **)t5);
    t10 = (t9 + 56U);
    t12 = *((char **)t10);
    memcpy(t12, t2, 8U);
    xsi_driver_first_trans_delta(t1, 8U, 8U, 0LL);
    goto LAB5;

LAB9:    xsi_set_current_line(72, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4512);
    t5 = (t1 + 56U);
    t9 = *((char **)t5);
    t10 = (t9 + 56U);
    t12 = *((char **)t10);
    memcpy(t12, t2, 8U);
    xsi_driver_first_trans_delta(t1, 0U, 8U, 0LL);
    goto LAB5;

LAB10:    xsi_set_current_line(76, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4576);
    t5 = (t1 + 56U);
    t9 = *((char **)t5);
    t10 = (t9 + 56U);
    t12 = *((char **)t10);
    memcpy(t12, t2, 8U);
    xsi_driver_first_trans_delta(t1, 24U, 8U, 0LL);
    goto LAB5;

LAB11:    xsi_set_current_line(80, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4576);
    t5 = (t1 + 56U);
    t9 = *((char **)t5);
    t10 = (t9 + 56U);
    t12 = *((char **)t10);
    memcpy(t12, t2, 8U);
    xsi_driver_first_trans_delta(t1, 16U, 8U, 0LL);
    goto LAB5;

LAB12:    xsi_set_current_line(84, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4576);
    t5 = (t1 + 56U);
    t9 = *((char **)t5);
    t10 = (t9 + 56U);
    t12 = *((char **)t10);
    memcpy(t12, t2, 8U);
    xsi_driver_first_trans_delta(t1, 8U, 8U, 0LL);
    goto LAB5;

LAB13:    xsi_set_current_line(88, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4576);
    t5 = (t1 + 56U);
    t9 = *((char **)t5);
    t10 = (t9 + 56U);
    t12 = *((char **)t10);
    memcpy(t12, t2, 8U);
    xsi_driver_first_trans_delta(t1, 0U, 8U, 0LL);
    goto LAB5;

LAB23:;
LAB24:    xsi_set_current_line(99, ng0);
    t13 = (t0 + 2792U);
    t15 = *((char **)t13);
    t17 = (31 - 31);
    t40 = (t17 * -1);
    t42 = (1U * t40);
    t43 = (0 + t42);
    t13 = (t15 + t43);
    t4 = *((unsigned char *)t13);
    t16 = (t0 + 4640);
    t18 = (t16 + 56U);
    t19 = *((char **)t18);
    t21 = (t19 + 56U);
    t22 = *((char **)t21);
    *((unsigned char *)t22) = t4;
    xsi_driver_first_trans_fast_port(t16);
    xsi_set_current_line(100, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t6 = (31 - 30);
    t7 = (t6 * 1U);
    t8 = (0 + t7);
    t1 = (t2 + t8);
    t5 = (t0 + 4704);
    t9 = (t5 + 56U);
    t10 = *((char **)t9);
    t12 = (t10 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 8U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(101, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t6 = (31 - 22);
    t7 = (t6 * 1U);
    t8 = (0 + t7);
    t1 = (t2 + t8);
    t5 = (t0 + 4768);
    t9 = (t5 + 56U);
    t10 = *((char **)t9);
    t12 = (t10 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 23U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(103, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t11 = (31 - 31);
    t6 = (t11 * -1);
    t7 = (1U * t6);
    t8 = (0 + t7);
    t1 = (t2 + t8);
    t3 = *((unsigned char *)t1);
    t5 = (t0 + 4832);
    t9 = (t5 + 56U);
    t10 = *((char **)t9);
    t12 = (t10 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = t3;
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(104, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t6 = (31 - 30);
    t7 = (t6 * 1U);
    t8 = (0 + t7);
    t1 = (t2 + t8);
    t5 = (t0 + 4896);
    t9 = (t5 + 56U);
    t10 = *((char **)t9);
    t12 = (t10 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 8U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(105, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t6 = (31 - 22);
    t7 = (t6 * 1U);
    t8 = (0 + t7);
    t1 = (t2 + t8);
    t5 = (t0 + 4960);
    t9 = (t5 + 56U);
    t10 = *((char **)t9);
    t12 = (t10 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 23U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(107, ng0);
    t1 = (t0 + 7350);
    t5 = (t0 + 5024);
    t9 = (t5 + 56U);
    t10 = *((char **)t9);
    t12 = (t10 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 2U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB25;

LAB27:    xsi_set_current_line(111, ng0);
    t13 = (t0 + 2792U);
    t15 = *((char **)t13);
    t17 = (31 - 31);
    t40 = (t17 * -1);
    t42 = (1U * t40);
    t43 = (0 + t42);
    t13 = (t15 + t43);
    t4 = *((unsigned char *)t13);
    t16 = (t0 + 4640);
    t18 = (t16 + 56U);
    t19 = *((char **)t18);
    t21 = (t19 + 56U);
    t22 = *((char **)t21);
    *((unsigned char *)t22) = t4;
    xsi_driver_first_trans_fast_port(t16);
    xsi_set_current_line(112, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t6 = (31 - 30);
    t7 = (t6 * 1U);
    t8 = (0 + t7);
    t1 = (t2 + t8);
    t5 = (t0 + 4704);
    t9 = (t5 + 56U);
    t10 = *((char **)t9);
    t12 = (t10 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 8U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(113, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t6 = (31 - 22);
    t7 = (t6 * 1U);
    t8 = (0 + t7);
    t1 = (t2 + t8);
    t5 = (t0 + 4768);
    t9 = (t5 + 56U);
    t10 = *((char **)t9);
    t12 = (t10 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 23U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(115, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t11 = (31 - 31);
    t6 = (t11 * -1);
    t7 = (1U * t6);
    t8 = (0 + t7);
    t1 = (t2 + t8);
    t3 = *((unsigned char *)t1);
    t5 = (t0 + 4832);
    t9 = (t5 + 56U);
    t10 = *((char **)t9);
    t12 = (t10 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = t3;
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(116, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t6 = (31 - 30);
    t7 = (t6 * 1U);
    t8 = (0 + t7);
    t1 = (t2 + t8);
    t5 = (t0 + 4896);
    t9 = (t5 + 56U);
    t10 = *((char **)t9);
    t12 = (t10 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 8U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(117, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t6 = (31 - 22);
    t7 = (t6 * 1U);
    t8 = (0 + t7);
    t1 = (t2 + t8);
    t5 = (t0 + 4960);
    t9 = (t5 + 56U);
    t10 = *((char **)t9);
    t12 = (t10 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 23U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(119, ng0);
    t1 = (t0 + 7357);
    t5 = (t0 + 5024);
    t9 = (t5 + 56U);
    t10 = *((char **)t9);
    t12 = (t10 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 2U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB25;

}


extern void work_a_0539050556_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0539050556_3212880686_p_0};
	xsi_register_didat("work_a_0539050556_3212880686", "isim/test_alu_micro_isim_beh.exe.sim/work/a_0539050556_3212880686.didat");
	xsi_register_executes(pe);
}
