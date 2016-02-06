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
static const char *ng0 = "C:/FPGA/ALU/mux_in.vhd";
extern char *IEEE_P_2592010699;



static void work_a_3573608650_3212880686_p_0(char *t0)
{
    char t29[16];
    char t31[16];
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
    unsigned char t23;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t30;
    char *t32;
    char *t33;
    int t34;
    unsigned int t35;
    unsigned char t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;

LAB0:    xsi_set_current_line(42, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3472);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(44, ng0);
    t1 = (t0 + 1512U);
    t5 = *((char **)t1);
    t6 = (7 - 1);
    t7 = (t6 * 1U);
    t8 = (0 + t7);
    t1 = (t5 + t8);
    t9 = (t0 + 5306);
    t11 = xsi_mem_cmp(t9, t1, 2U);
    if (t11 == 1)
        goto LAB6;

LAB11:    t12 = (t0 + 5308);
    t14 = xsi_mem_cmp(t12, t1, 2U);
    if (t14 == 1)
        goto LAB7;

LAB12:    t15 = (t0 + 5310);
    t17 = xsi_mem_cmp(t15, t1, 2U);
    if (t17 == 1)
        goto LAB8;

LAB13:    t18 = (t0 + 5312);
    t20 = xsi_mem_cmp(t18, t1, 2U);
    if (t20 == 1)
        goto LAB9;

LAB14:
LAB10:    xsi_set_current_line(69, ng0);
    t1 = (t0 + 5314);
    t5 = (t0 + 3552);
    t9 = (t5 + 56U);
    t10 = *((char **)t9);
    t12 = (t10 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 8U);
    xsi_driver_first_trans_fast_port(t5);

LAB5:    goto LAB3;

LAB6:    xsi_set_current_line(48, ng0);
    t21 = (t0 + 1032U);
    t22 = *((char **)t21);
    t23 = *((unsigned char *)t22);
    t21 = (t0 + 1192U);
    t24 = *((char **)t21);
    t25 = (7 - 7);
    t26 = (t25 * 1U);
    t27 = (0 + t26);
    t21 = (t24 + t27);
    t30 = ((IEEE_P_2592010699) + 4024);
    t32 = (t31 + 0U);
    t33 = (t32 + 0U);
    *((int *)t33) = 7;
    t33 = (t32 + 4U);
    *((int *)t33) = 1;
    t33 = (t32 + 8U);
    *((int *)t33) = -1;
    t34 = (1 - 7);
    t35 = (t34 * -1);
    t35 = (t35 + 1);
    t33 = (t32 + 12U);
    *((unsigned int *)t33) = t35;
    t28 = xsi_base_array_concat(t28, t29, t30, (char)99, t23, (char)97, t21, t31, (char)101);
    t35 = (1U + 7U);
    t36 = (8U != t35);
    if (t36 == 1)
        goto LAB16;

LAB17:    t33 = (t0 + 3552);
    t37 = (t33 + 56U);
    t38 = *((char **)t37);
    t39 = (t38 + 56U);
    t40 = *((char **)t39);
    memcpy(t40, t28, 8U);
    xsi_driver_first_trans_fast_port(t33);
    goto LAB5;

LAB7:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t11 = (0 - 7);
    t6 = (t11 * -1);
    t7 = (1U * t6);
    t8 = (0 + t7);
    t1 = (t2 + t8);
    t3 = *((unsigned char *)t1);
    t5 = (t0 + 1352U);
    t9 = *((char **)t5);
    t25 = (22 - 22);
    t26 = (t25 * 1U);
    t27 = (0 + t26);
    t5 = (t9 + t27);
    t12 = ((IEEE_P_2592010699) + 4024);
    t13 = (t31 + 0U);
    t15 = (t13 + 0U);
    *((int *)t15) = 22;
    t15 = (t13 + 4U);
    *((int *)t15) = 16;
    t15 = (t13 + 8U);
    *((int *)t15) = -1;
    t14 = (16 - 22);
    t35 = (t14 * -1);
    t35 = (t35 + 1);
    t15 = (t13 + 12U);
    *((unsigned int *)t15) = t35;
    t10 = xsi_base_array_concat(t10, t29, t12, (char)99, t3, (char)97, t5, t31, (char)101);
    t35 = (1U + 7U);
    t4 = (8U != t35);
    if (t4 == 1)
        goto LAB18;

LAB19:    t15 = (t0 + 3552);
    t16 = (t15 + 56U);
    t18 = *((char **)t16);
    t19 = (t18 + 56U);
    t21 = *((char **)t19);
    memcpy(t21, t10, 8U);
    xsi_driver_first_trans_fast_port(t15);
    goto LAB5;

LAB8:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t6 = (22 - 15);
    t7 = (t6 * 1U);
    t8 = (0 + t7);
    t1 = (t2 + t8);
    t5 = (t0 + 3552);
    t9 = (t5 + 56U);
    t10 = *((char **)t9);
    t12 = (t10 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 8U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB5;

LAB9:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t6 = (22 - 7);
    t7 = (t6 * 1U);
    t8 = (0 + t7);
    t1 = (t2 + t8);
    t5 = (t0 + 3552);
    t9 = (t5 + 56U);
    t10 = *((char **)t9);
    t12 = (t10 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 8U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB5;

LAB15:;
LAB16:    xsi_size_not_matching(8U, t35, 0);
    goto LAB17;

LAB18:    xsi_size_not_matching(8U, t35, 0);
    goto LAB19;

}


extern void work_a_3573608650_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3573608650_3212880686_p_0};
	xsi_register_didat("work_a_3573608650_3212880686", "isim/test_alu_micro_isim_beh.exe.sim/work/a_3573608650_3212880686.didat");
	xsi_register_executes(pe);
}
