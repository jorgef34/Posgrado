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
static const char *ng0 = "C:/FPGA/PracticoFinal/normalizador.vhd";
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
    char t17[16];
    char t18[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    int t6;
    int t7;
    int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    unsigned char t13;
    unsigned char t14;
    char *t15;
    char *t16;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;

LAB0:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 5909);
    t3 = (t0 + 2128U);
    t4 = *((char **)t3);
    t3 = (t4 + 0);
    memcpy(t3, t1, 8U);
    xsi_set_current_line(60, ng0);
    t1 = (t0 + 2248U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((unsigned char *)t1) = (unsigned char)3;
    xsi_set_current_line(62, ng0);
    t1 = (t0 + 5917);
    *((int *)t1) = 23;
    t2 = (t0 + 5921);
    *((int *)t2) = 0;
    t5 = 23;
    t6 = 0;

LAB2:    if (t5 >= t6)
        goto LAB3;

LAB5:    xsi_set_current_line(77, ng0);
    t1 = (t0 + 2128U);
    t2 = *((char **)t1);
    t1 = (t0 + 5820U);
    t3 = (t0 + 1352U);
    t4 = *((char **)t3);
    t3 = (t0 + 5772U);
    t13 = ieee_p_1242562249_sub_2110339434_1035706684(IEEE_P_1242562249, t2, t1, t4, t3);
    if (t13 != 0)
        goto LAB12;

LAB14:    t1 = (t0 + 2128U);
    t2 = *((char **)t1);
    t1 = (t0 + 5820U);
    t3 = (t0 + 1352U);
    t4 = *((char **)t3);
    t3 = (t0 + 5772U);
    t13 = ieee_p_1242562249_sub_2110411308_1035706684(IEEE_P_1242562249, t2, t1, t4, t3);
    if (t13 != 0)
        goto LAB19;

LAB20:    xsi_set_current_line(94, ng0);
    t1 = (t0 + 5964);
    t3 = (t0 + 3696);
    t4 = (t3 + 56U);
    t12 = *((char **)t4);
    t15 = (t12 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t1, 23U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(95, ng0);
    t1 = (t0 + 5987);
    t3 = (t0 + 3760);
    t4 = (t3 + 56U);
    t12 = *((char **)t4);
    t15 = (t12 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t1, 8U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(96, ng0);
    t1 = (t0 + 3824);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t12 = *((char **)t4);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB13:    t1 = (t0 + 3552);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(64, ng0);
    t3 = (t0 + 1032U);
    t4 = *((char **)t3);
    t3 = (t0 + 5917);
    t7 = *((int *)t3);
    t8 = (t7 - 23);
    t9 = (t8 * -1);
    xsi_vhdl_check_range_of_index(23, 0, -1, *((int *)t3));
    t10 = (1U * t9);
    t11 = (0 + t10);
    t12 = (t4 + t11);
    t13 = *((unsigned char *)t12);
    t14 = (t13 == (unsigned char)3);
    if (t14 != 0)
        goto LAB6;

LAB8:    t1 = (t0 + 2248U);
    t2 = *((char **)t1);
    t13 = *((unsigned char *)t2);
    t14 = (t13 == (unsigned char)3);
    if (t14 != 0)
        goto LAB9;

LAB10:
LAB7:
LAB4:    t1 = (t0 + 5917);
    t5 = *((int *)t1);
    t2 = (t0 + 5921);
    t6 = *((int *)t2);
    if (t5 == t6)
        goto LAB5;

LAB11:    t7 = (t5 + -1);
    t5 = t7;
    t3 = (t0 + 5917);
    *((int *)t3) = t5;
    goto LAB2;

LAB6:    xsi_set_current_line(66, ng0);
    t15 = (t0 + 2248U);
    t16 = *((char **)t15);
    t15 = (t16 + 0);
    *((unsigned char *)t15) = (unsigned char)2;
    goto LAB7;

LAB9:    xsi_set_current_line(70, ng0);
    t1 = (t0 + 2128U);
    t3 = *((char **)t1);
    t1 = (t0 + 5820U);
    t4 = (t0 + 5925);
    t15 = (t18 + 0U);
    t16 = (t15 + 0U);
    *((int *)t16) = 0;
    t16 = (t15 + 4U);
    *((int *)t16) = 7;
    t16 = (t15 + 8U);
    *((int *)t16) = 1;
    t7 = (7 - 0);
    t9 = (t7 * 1);
    t9 = (t9 + 1);
    t16 = (t15 + 12U);
    *((unsigned int *)t16) = t9;
    t16 = ieee_p_1242562249_sub_1547198987_1035706684(IEEE_P_1242562249, t17, t3, t1, t4, t18);
    t19 = (t0 + 2128U);
    t20 = *((char **)t19);
    t19 = (t20 + 0);
    t21 = (t17 + 12U);
    t9 = *((unsigned int *)t21);
    t10 = (1U * t9);
    memcpy(t19, t16, t10);
    goto LAB7;

LAB12:    xsi_set_current_line(79, ng0);
    t12 = (t0 + 1032U);
    t15 = *((char **)t12);
    t12 = (t0 + 5740U);
    t16 = (t0 + 2128U);
    t19 = *((char **)t16);
    t16 = (t0 + 5820U);
    t5 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t19, t16);
    t20 = ieee_p_1242562249_sub_2540846514_1035706684(IEEE_P_1242562249, t17, t15, t12, t5);
    t21 = (t17 + 12U);
    t9 = *((unsigned int *)t21);
    t10 = (1U * t9);
    t14 = (24U != t10);
    if (t14 == 1)
        goto LAB15;

LAB16:    t22 = (t0 + 3632);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t20, 24U);
    xsi_driver_first_trans_fast(t22);
    xsi_set_current_line(80, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t9 = (23 - 22);
    t10 = (t9 * 1U);
    t11 = (0 + t10);
    t1 = (t2 + t11);
    t3 = (t0 + 3696);
    t4 = (t3 + 56U);
    t12 = *((char **)t4);
    t15 = (t12 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t1, 23U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(81, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 5772U);
    t3 = (t0 + 2128U);
    t4 = *((char **)t3);
    t3 = (t0 + 5820U);
    t12 = ieee_p_3620187407_sub_767740470_3965413181(IEEE_P_3620187407, t17, t2, t1, t4, t3);
    t15 = (t17 + 12U);
    t9 = *((unsigned int *)t15);
    t10 = (1U * t9);
    t13 = (8U != t10);
    if (t13 == 1)
        goto LAB17;

LAB18:    t16 = (t0 + 3760);
    t19 = (t16 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t12, 8U);
    xsi_driver_first_trans_fast_port(t16);
    xsi_set_current_line(82, ng0);
    t1 = (t0 + 3824);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t12 = *((char **)t4);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB13;

LAB15:    xsi_size_not_matching(24U, t10, 0);
    goto LAB16;

LAB17:    xsi_size_not_matching(8U, t10, 0);
    goto LAB18;

LAB19:    xsi_set_current_line(88, ng0);
    t12 = (t0 + 5933);
    t16 = (t0 + 3696);
    t19 = (t16 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t12, 23U);
    xsi_driver_first_trans_fast_port(t16);
    xsi_set_current_line(89, ng0);
    t1 = (t0 + 5956);
    t3 = (t0 + 3760);
    t4 = (t3 + 56U);
    t12 = *((char **)t4);
    t15 = (t12 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t1, 8U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(90, ng0);
    t1 = (t0 + 3824);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t12 = *((char **)t4);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB13;

}


extern void work_a_1888889153_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1888889153_3212880686_p_0};
	xsi_register_didat("work_a_1888889153_3212880686", "isim/test_sumador_restador_isim_beh.exe.sim/work/a_1888889153_3212880686.didat");
	xsi_register_executes(pe);
}
