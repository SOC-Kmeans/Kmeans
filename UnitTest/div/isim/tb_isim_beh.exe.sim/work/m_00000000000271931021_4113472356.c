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
static const char *ng0 = "D:/project/soc/Kmeans/division/Calculation_div.v";
static unsigned int ng1[] = {0U, 0U};
static int ng2[] = {0, 0};
static int ng3[] = {32, 0};
static unsigned int ng4[] = {1U, 0U, 0U, 0U};
static int ng5[] = {1, 0};



static void Always_90_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 3488U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(90, ng0);
    t2 = (t0 + 4056);
    *((int *)t2) = 1;
    t3 = (t0 + 3520);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(91, ng0);

LAB5:    xsi_set_current_line(92, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t4, t5, 0, 0, 32, 0LL);
    xsi_set_current_line(93, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    t2 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 32, 0LL);
    goto LAB2;

}

static void Always_96_1(char *t0)
{
    char t4[16];
    char t10[8];
    char t16[16];
    char t21[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t17;
    char *t18;
    char *t19;
    unsigned int t20;
    char *t22;
    char *t23;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;

LAB0:    t1 = (t0 + 3736U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(96, ng0);
    t2 = (t0 + 4072);
    *((int *)t2) = 1;
    t3 = (t0 + 3768);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(97, ng0);

LAB5:    xsi_set_current_line(98, ng0);
    t5 = (t0 + 1928);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = ((char*)((ng1)));
    xsi_vlogtype_concat(t4, 64, 64, 2U, t8, 32, t7, 32);
    t9 = (t0 + 2248);
    xsi_vlogvar_assign_value(t9, t4, 0, 0, 64);
    xsi_set_current_line(99, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2088);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    xsi_vlogtype_concat(t4, 64, 64, 2U, t6, 32, t2, 32);
    t7 = (t0 + 2408);
    xsi_vlogvar_assign_value(t7, t4, 0, 0, 64);
    xsi_set_current_line(100, ng0);
    xsi_set_current_line(100, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB6:    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng3)));
    memset(t10, 0, 8);
    xsi_vlog_signed_less(t10, 32, t5, 32, t6, 32);
    t7 = (t10 + 4);
    t11 = *((unsigned int *)t7);
    t12 = (~(t11));
    t13 = *((unsigned int *)t10);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB7;

LAB8:    xsi_set_current_line(109, ng0);
    t2 = (t0 + 2248);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    memset(t10, 0, 8);
    t6 = (t10 + 4);
    t7 = (t5 + 4);
    t11 = *((unsigned int *)t5);
    t12 = (t11 >> 0);
    *((unsigned int *)t10) = t12;
    t13 = *((unsigned int *)t7);
    t14 = (t13 >> 0);
    *((unsigned int *)t6) = t14;
    t15 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t15 & 4294967295U);
    t20 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t20 & 4294967295U);
    t8 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t8, t10, 0, 0, 32, 0LL);
    xsi_set_current_line(110, ng0);
    t2 = (t0 + 2248);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    memset(t10, 0, 8);
    t6 = (t10 + 4);
    t7 = (t5 + 8);
    t8 = (t5 + 12);
    t11 = *((unsigned int *)t7);
    t12 = (t11 >> 0);
    *((unsigned int *)t10) = t12;
    t13 = *((unsigned int *)t8);
    t14 = (t13 >> 0);
    *((unsigned int *)t6) = t14;
    t15 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t15 & 4294967295U);
    t20 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t20 & 4294967295U);
    t9 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t9, t10, 0, 0, 32, 0LL);
    goto LAB2;

LAB7:    xsi_set_current_line(101, ng0);

LAB9:    xsi_set_current_line(102, ng0);
    t8 = ((char*)((ng1)));
    t9 = (t0 + 2248);
    t17 = (t9 + 56U);
    t18 = *((char **)t17);
    xsi_vlog_get_part_select_value(t16, 63, t18, 62, 0);
    xsi_vlogtype_concat(t4, 64, 64, 2U, t16, 63, t8, 1);
    t19 = (t0 + 2248);
    xsi_vlogvar_assign_value(t19, t4, 0, 0, 64);
    xsi_set_current_line(103, ng0);
    t2 = (t0 + 2248);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    memset(t10, 0, 8);
    t6 = (t10 + 4);
    t7 = (t5 + 8);
    t8 = (t5 + 12);
    t11 = *((unsigned int *)t7);
    t12 = (t11 >> 0);
    *((unsigned int *)t10) = t12;
    t13 = *((unsigned int *)t8);
    t14 = (t13 >> 0);
    *((unsigned int *)t6) = t14;
    t15 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t15 & 4294967295U);
    t20 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t20 & 4294967295U);
    t9 = (t0 + 2088);
    t17 = (t9 + 56U);
    t18 = *((char **)t17);
    memset(t21, 0, 8);
    t19 = (t10 + 4);
    if (*((unsigned int *)t19) != 0)
        goto LAB11;

LAB10:    t22 = (t18 + 4);
    if (*((unsigned int *)t22) != 0)
        goto LAB11;

LAB14:    if (*((unsigned int *)t10) < *((unsigned int *)t18))
        goto LAB13;

LAB12:    *((unsigned int *)t21) = 1;

LAB13:    t24 = (t21 + 4);
    t25 = *((unsigned int *)t24);
    t26 = (~(t25));
    t27 = *((unsigned int *)t21);
    t28 = (t27 & t26);
    t29 = (t28 != 0);
    if (t29 > 0)
        goto LAB15;

LAB16:    xsi_set_current_line(106, ng0);
    t2 = (t0 + 2248);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 2248);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 64);

LAB17:    xsi_set_current_line(100, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng5)));
    memset(t10, 0, 8);
    xsi_vlog_signed_add(t10, 32, t5, 32, t6, 32);
    t7 = (t0 + 2568);
    xsi_vlogvar_assign_value(t7, t10, 0, 0, 32);
    goto LAB6;

LAB11:    t23 = (t21 + 4);
    *((unsigned int *)t21) = 1;
    *((unsigned int *)t23) = 1;
    goto LAB13;

LAB15:    xsi_set_current_line(104, ng0);
    t30 = (t0 + 2248);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    t33 = (t0 + 2408);
    t34 = (t33 + 56U);
    t35 = *((char **)t34);
    xsi_vlog_unsigned_minus(t4, 64, t32, 64, t35, 64);
    t36 = ((char*)((ng4)));
    xsi_vlog_unsigned_add(t16, 64, t4, 64, t36, 64);
    t37 = (t0 + 2248);
    xsi_vlogvar_assign_value(t37, t16, 0, 0, 64);
    goto LAB17;

}


extern void work_m_00000000000271931021_4113472356_init()
{
	static char *pe[] = {(void *)Always_90_0,(void *)Always_96_1};
	xsi_register_didat("work_m_00000000000271931021_4113472356", "isim/tb_isim_beh.exe.sim/work/m_00000000000271931021_4113472356.didat");
	xsi_register_executes(pe);
}
