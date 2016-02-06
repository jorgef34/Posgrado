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
static const char *ng0 = "C:/FPGA/ALU/normalizador.vhd";
extern char *IEEE_P_1242562249;
extern char *IEEE_P_3620187407;

char *ieee_p_1242562249_sub_1547198987_1035706684(char *, char *, char *, char *, char *, char *);
int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);
unsigned char ieee_p_1242562249_sub_2110339434_1035706684(char *, char *, char *, char *, char *);
unsigned char ieee_p_1242562249_sub_2110411308_1035706684(char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_2540846514_1035706684(char *, char *, char *, char *, int );
char *ieee_p_3620187407_sub_767740470_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_1888889153_3212880686_p_0(char *t0)
{
    char t18[16];
    char t19[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    int t11;
    int t12;
    int t13;
    int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;

LAB0:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(70, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(115, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t15 = (23 - 22);
    t16 = (t15 * 1U);
    t17 = (0 + t16);
    t1 = (t2 + t17);
    t5 = (t0 + 3952);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 23U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(116, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 4016);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(117, ng0);
    t1 = (t0 + 4080);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB6:
LAB3:    t1 = (t0 + 3872);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 6235);
    t6 = (t0 + 3952);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 23U);
    xsi_driver_first_trans_fast_port(t6);
    xsi_set_current_line(64, ng0);
    t1 = (t0 + 6258);
    t5 = (t0 + 4016);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(65, ng0);
    t1 = (t0 + 4080);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(72, ng0);
    t1 = (t0 + 6266);
    t6 = (t0 + 2448U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t1, 8U);
    xsi_set_current_line(73, ng0);
    t1 = (t0 + 2568U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((unsigned char *)t1) = (unsigned char)3;
    xsi_set_current_line(75, ng0);
    t1 = (t0 + 6274);
    *((int *)t1) = 23;
    t2 = (t0 + 6278);
    *((int *)t2) = 0;
    t11 = 23;
    t12 = 0;

LAB8:    if (t11 >= t12)
        goto LAB9;

LAB11:    xsi_set_current_line(90, ng0);
    t1 = (t0 + 2448U);
    t2 = *((char **)t1);
    t1 = (t0 + 6144U);
    t5 = (t0 + 1352U);
    t6 = *((char **)t5);
    t5 = (t0 + 6096U);
    t3 = ieee_p_1242562249_sub_2110339434_1035706684(IEEE_P_1242562249, t2, t1, t6, t5);
    if (t3 != 0)
        goto LAB18;

LAB20:    t1 = (t0 + 2448U);
    t2 = *((char **)t1);
    t1 = (t0 + 6144U);
    t5 = (t0 + 1352U);
    t6 = *((char **)t5);
    t5 = (t0 + 6096U);
    t3 = ieee_p_1242562249_sub_2110411308_1035706684(IEEE_P_1242562249, t2, t1, t6, t5);
    if (t3 != 0)
        goto LAB25;

LAB26:    xsi_set_current_line(107, ng0);
    t1 = (t0 + 6321);
    t5 = (t0 + 3952);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 23U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(108, ng0);
    t1 = (t0 + 6344);
    t5 = (t0 + 4016);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(109, ng0);
    t1 = (t0 + 4080);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB19:    goto LAB6;

LAB9:    xsi_set_current_line(77, ng0);
    t5 = (t0 + 1032U);
    t6 = *((char **)t5);
    t5 = (t0 + 6274);
    t13 = *((int *)t5);
    t14 = (t13 - 23);
    t15 = (t14 * -1);
    xsi_vhdl_check_range_of_index(23, 0, -1, *((int *)t5));
    t16 = (1U * t15);
    t17 = (0 + t16);
    t7 = (t6 + t17);
    t3 = *((unsigned char *)t7);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB12;

LAB14:    t1 = (t0 + 2568U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB15;

LAB16:
LAB13:
LAB10:    t1 = (t0 + 6274);
    t11 = *((int *)t1);
    t2 = (t0 + 6278);
    t12 = *((int *)t2);
    if (t11 == t12)
        goto LAB11;

LAB17:    t13 = (t11 + -1);
    t11 = t13;
    t5 = (t0 + 6274);
    *((int *)t5) = t11;
    goto LAB8;

LAB12:    xsi_set_current_line(79, ng0);
    t8 = (t0 + 2568U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    *((unsigned char *)t8) = (unsigned char)2;
    goto LAB13;

LAB15:    xsi_set_current_line(83, ng0);
    t1 = (t0 + 2448U);
    t5 = *((char **)t1);
    t1 = (t0 + 6144U);
    t6 = (t0 + 6282);
    t8 = (t19 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 0;
    t9 = (t8 + 4U);
    *((int *)t9) = 7;
    t9 = (t8 + 8U);
    *((int *)t9) = 1;
    t13 = (7 - 0);
    t15 = (t13 * 1);
    t15 = (t15 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t15;
    t9 = ieee_p_1242562249_sub_1547198987_1035706684(IEEE_P_1242562249, t18, t5, t1, t6, t19);
    t10 = (t0 + 2448U);
    t20 = *((char **)t10);
    t10 = (t20 + 0);
    t21 = (t18 + 12U);
    t15 = *((unsigned int *)t21);
    t16 = (1U * t15);
    memcpy(t10, t9, t16);
    goto LAB13;

LAB18:    xsi_set_current_line(92, ng0);
    t7 = (t0 + 1032U);
    t8 = *((char **)t7);
    t7 = (t0 + 6064U);
    t9 = (t0 + 2448U);
    t10 = *((char **)t9);
    t9 = (t0 + 6144U);
    t11 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t10, t9);
    t20 = ieee_p_1242562249_sub_2540846514_1035706684(IEEE_P_1242562249, t18, t8, t7, t11);
    t21 = (t18 + 12U);
    t15 = *((unsigned int *)t21);
    t16 = (1U * t15);
    t4 = (24U != t16);
    if (t4 == 1)
        goto LAB21;

LAB22:    t22 = (t0 + 4144);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t20, 24U);
    xsi_driver_first_trans_fast(t22);
    xsi_set_current_line(93, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t15 = (23 - 22);
    t16 = (t15 * 1U);
    t17 = (0 + t16);
    t1 = (t2 + t17);
    t5 = (t0 + 3952);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 23U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(94, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 6096U);
    t5 = (t0 + 2448U);
    t6 = *((char **)t5);
    t5 = (t0 + 6144U);
    t7 = ieee_p_3620187407_sub_767740470_3965413181(IEEE_P_3620187407, t18, t2, t1, t6, t5);
    t8 = (t18 + 12U);
    t15 = *((unsigned int *)t8);
    t16 = (1U * t15);
    t3 = (8U != t16);
    if (t3 == 1)
        goto LAB23;

LAB24:    t9 = (t0 + 4016);
    t10 = (t9 + 56U);
    t20 = *((char **)t10);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t7, 8U);
    xsi_driver_first_trans_fast_port(t9);
    xsi_set_current_line(95, ng0);
    t1 = (t0 + 4080);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB19;

LAB21:    xsi_size_not_matching(24U, t16, 0);
    goto LAB22;

LAB23:    xsi_size_not_matching(8U, t16, 0);
    goto LAB24;

LAB25:    xsi_set_current_line(101, ng0);
    t7 = (t0 + 6290);
    t9 = (t0 + 3952);
    t10 = (t9 + 56U);
    t20 = *((char **)t10);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t7, 23U);
    xsi_driver_first_trans_fast_port(t9);
    xsi_set_current_line(102, ng0);
    t1 = (t0 + 6313);
    t5 = (t0 + 4016);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(103, ng0);
    t1 = (t0 + 4080);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB19;

}


extern void work_a_1888889153_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1888889153_3212880686_p_0};
	xsi_register_didat("work_a_1888889153_3212880686", "isim/test_alu_micro_isim_beh.exe.sim/work/a_1888889153_3212880686.didat");
	xsi_register_executes(pe);
}
