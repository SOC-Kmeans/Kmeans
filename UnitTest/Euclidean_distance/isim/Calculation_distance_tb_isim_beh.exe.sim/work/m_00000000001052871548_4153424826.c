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

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/project/soc/Kmeans/Euclidean_distance/Calculation_distance.v";
static int ng1[] = {0, 0};



static void Always_44_0(char *t0)
{
    char t7[8];
    char t18[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t8;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    char *t17;

LAB0:    t1 = (t0 + 3468U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 4096);
    *((int *)t2) = 1;
    t3 = (t0 + 3496);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(44, ng0);

LAB5:    xsi_set_current_line(46, ng0);
    t4 = (t0 + 784U);
    t5 = *((char **)t4);
    t4 = (t0 + 876U);
    t6 = *((char **)t4);
    memset(t7, 0, 8);
    t4 = (t5 + 4);
    if (*((unsigned int *)t4) != 0)
        goto LAB7;

LAB6:    t8 = (t6 + 4);
    if (*((unsigned int *)t8) != 0)
        goto LAB7;

LAB10:    if (*((unsigned int *)t5) > *((unsigned int *)t6))
        goto LAB8;

LAB9:    t10 = (t7 + 4);
    t11 = *((unsigned int *)t10);
    t12 = (~(t11));
    t13 = *((unsigned int *)t7);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB11;

LAB12:    xsi_set_current_line(58, ng0);

LAB25:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 876U);
    t3 = *((char **)t2);
    memcpy(t7, t3, 8);
    t2 = (t0 + 2668);
    xsi_vlogvar_wait_assign_value(t2, t7, 0, 0, 32, 0LL);
    xsi_set_current_line(60, ng0);
    t2 = (t0 + 784U);
    t3 = *((char **)t2);
    memcpy(t7, t3, 8);
    t2 = (t0 + 2760);
    xsi_vlogvar_wait_assign_value(t2, t7, 0, 0, 32, 0LL);
    xsi_set_current_line(61, ng0);
    t2 = (t0 + 968U);
    t3 = *((char **)t2);
    t2 = (t0 + 1060U);
    t4 = *((char **)t2);
    memset(t7, 0, 8);
    t2 = (t3 + 4);
    if (*((unsigned int *)t2) != 0)
        goto LAB27;

LAB26:    t5 = (t4 + 4);
    if (*((unsigned int *)t5) != 0)
        goto LAB27;

LAB30:    if (*((unsigned int *)t3) > *((unsigned int *)t4))
        goto LAB28;

LAB29:    t8 = (t7 + 4);
    t11 = *((unsigned int *)t8);
    t12 = (~(t11));
    t13 = *((unsigned int *)t7);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB31;

LAB32:    xsi_set_current_line(65, ng0);

LAB35:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 1060U);
    t3 = *((char **)t2);
    memcpy(t7, t3, 8);
    t2 = (t0 + 2852);
    xsi_vlogvar_wait_assign_value(t2, t7, 0, 0, 32, 0LL);
    xsi_set_current_line(67, ng0);
    t2 = (t0 + 968U);
    t3 = *((char **)t2);
    memcpy(t7, t3, 8);
    t2 = (t0 + 2944);
    xsi_vlogvar_wait_assign_value(t2, t7, 0, 0, 32, 0LL);

LAB33:
LAB13:    goto LAB2;

LAB7:    t9 = (t7 + 4);
    *((unsigned int *)t7) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB9;

LAB8:    *((unsigned int *)t7) = 1;
    goto LAB9;

LAB11:    xsi_set_current_line(46, ng0);

LAB14:    xsi_set_current_line(47, ng0);
    t16 = (t0 + 784U);
    t17 = *((char **)t16);
    memcpy(t18, t17, 8);
    t16 = (t0 + 2668);
    xsi_vlogvar_wait_assign_value(t16, t18, 0, 0, 32, 0LL);
    xsi_set_current_line(48, ng0);
    t2 = (t0 + 876U);
    t3 = *((char **)t2);
    memcpy(t7, t3, 8);
    t2 = (t0 + 2760);
    xsi_vlogvar_wait_assign_value(t2, t7, 0, 0, 32, 0LL);
    xsi_set_current_line(49, ng0);
    t2 = (t0 + 968U);
    t3 = *((char **)t2);
    t2 = (t0 + 1060U);
    t4 = *((char **)t2);
    memset(t7, 0, 8);
    t2 = (t3 + 4);
    if (*((unsigned int *)t2) != 0)
        goto LAB16;

LAB15:    t5 = (t4 + 4);
    if (*((unsigned int *)t5) != 0)
        goto LAB16;

LAB19:    if (*((unsigned int *)t3) > *((unsigned int *)t4))
        goto LAB17;

LAB18:    t8 = (t7 + 4);
    t11 = *((unsigned int *)t8);
    t12 = (~(t11));
    t13 = *((unsigned int *)t7);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB20;

LAB21:    xsi_set_current_line(53, ng0);

LAB24:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 1060U);
    t3 = *((char **)t2);
    memcpy(t7, t3, 8);
    t2 = (t0 + 2852);
    xsi_vlogvar_wait_assign_value(t2, t7, 0, 0, 32, 0LL);
    xsi_set_current_line(55, ng0);
    t2 = (t0 + 968U);
    t3 = *((char **)t2);
    memcpy(t7, t3, 8);
    t2 = (t0 + 2944);
    xsi_vlogvar_wait_assign_value(t2, t7, 0, 0, 32, 0LL);

LAB22:    goto LAB13;

LAB16:    t6 = (t7 + 4);
    *((unsigned int *)t7) = 1;
    *((unsigned int *)t6) = 1;
    goto LAB18;

LAB17:    *((unsigned int *)t7) = 1;
    goto LAB18;

LAB20:    xsi_set_current_line(49, ng0);

LAB23:    xsi_set_current_line(50, ng0);
    t9 = (t0 + 968U);
    t10 = *((char **)t9);
    memcpy(t18, t10, 8);
    t9 = (t0 + 2852);
    xsi_vlogvar_wait_assign_value(t9, t18, 0, 0, 32, 0LL);
    xsi_set_current_line(51, ng0);
    t2 = (t0 + 1060U);
    t3 = *((char **)t2);
    memcpy(t7, t3, 8);
    t2 = (t0 + 2944);
    xsi_vlogvar_wait_assign_value(t2, t7, 0, 0, 32, 0LL);
    goto LAB22;

LAB27:    t6 = (t7 + 4);
    *((unsigned int *)t7) = 1;
    *((unsigned int *)t6) = 1;
    goto LAB29;

LAB28:    *((unsigned int *)t7) = 1;
    goto LAB29;

LAB31:    xsi_set_current_line(61, ng0);

LAB34:    xsi_set_current_line(62, ng0);
    t9 = (t0 + 968U);
    t10 = *((char **)t9);
    memcpy(t18, t10, 8);
    t9 = (t0 + 2852);
    xsi_vlogvar_wait_assign_value(t9, t18, 0, 0, 32, 0LL);
    xsi_set_current_line(63, ng0);
    t2 = (t0 + 1060U);
    t3 = *((char **)t2);
    memcpy(t7, t3, 8);
    t2 = (t0 + 2944);
    xsi_vlogvar_wait_assign_value(t2, t7, 0, 0, 32, 0LL);
    goto LAB33;

}

static void implSig1_execute(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    t1 = (t0 + 3612U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = ((char*)((ng1)));
    t3 = (t0 + 4140);
    t4 = (t3 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    memcpy(t7, t2, 8);
    xsi_driver_vfirst_trans(t3, 0, 31);

LAB1:    return;
}

static void implSig2_execute(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    t1 = (t0 + 3756U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = ((char*)((ng1)));
    t3 = (t0 + 4176);
    t4 = (t3 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    memcpy(t7, t2, 8);
    xsi_driver_vfirst_trans(t3, 0, 31);

LAB1:    return;
}

static void implSig3_execute(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    t1 = (t0 + 3900U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = ((char*)((ng1)));
    t3 = (t0 + 4212);
    t4 = (t3 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    memcpy(t7, t2, 8);
    xsi_driver_vfirst_trans(t3, 0, 31);

LAB1:    return;
}


extern void work_m_00000000001052871548_4153424826_init()
{
	static char *pe[] = {(void *)Always_44_0,(void *)implSig1_execute,(void *)implSig2_execute,(void *)implSig3_execute};
	xsi_register_didat("work_m_00000000001052871548_4153424826", "isim/Calculation_distance_tb_isim_beh.exe.sim/work/m_00000000001052871548_4153424826.didat");
	xsi_register_executes(pe);
}
