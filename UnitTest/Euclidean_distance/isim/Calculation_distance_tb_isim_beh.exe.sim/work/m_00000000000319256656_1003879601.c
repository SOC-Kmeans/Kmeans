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
static const char *ng0 = "D:/project/soc/Kmeans/Euclidean_distance/Calculation_minus.v";
static int ng1[] = {31, 0};



static void Cont_30_0(char *t0)
{
    char t5[8];
    char t9[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    char *t8;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;

LAB0:    t1 = (t0 + 1812U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(30, ng0);
    t2 = (t0 + 692U);
    t3 = *((char **)t2);
    t2 = (t0 + 784U);
    t4 = *((char **)t2);
    t2 = (t0 + 760U);
    t6 = (t2 + 44U);
    t7 = *((char **)t6);
    t8 = ((char*)((ng1)));
    xsi_vlog_generic_get_index_select_value(t5, 32, t4, t7, 2, t8, 32, 1);
    memset(t9, 0, 8);
    xsi_vlog_unsigned_add(t9, 32, t3, 32, t5, 32);
    t10 = (t0 + 2052);
    t11 = (t10 + 32U);
    t12 = *((char **)t11);
    t13 = (t12 + 40U);
    t14 = *((char **)t13);
    memcpy(t14, t9, 8);
    xsi_driver_vfirst_trans(t10, 0, 31);
    t15 = (t0 + 2008);
    *((int *)t15) = 1;

LAB1:    return;
}


extern void work_m_00000000000319256656_1003879601_init()
{
	static char *pe[] = {(void *)Cont_30_0};
	xsi_register_didat("work_m_00000000000319256656_1003879601", "isim/Calculation_distance_tb_isim_beh.exe.sim/work/m_00000000000319256656_1003879601.didat");
	xsi_register_executes(pe);
}
