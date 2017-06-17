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
static const char *ng0 = "D:/project/soc/Kmeans/multiply/Calculation_mulit.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {0U, 0U};



static void Always_43_0(char *t0)
{
    char t4[8];
    char t21[8];
    char t22[8];
    char t27[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;
    char *t33;
    char *t34;

LAB0:    t1 = (t0 + 3808U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 4128);
    *((int *)t2) = 1;
    t3 = (t0 + 3840);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(43, ng0);

LAB5:    xsi_set_current_line(44, ng0);
    t5 = (t0 + 1528U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t5 = (t6 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (~(t7));
    t9 = *((unsigned int *)t6);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB9;

LAB7:    if (*((unsigned int *)t5) == 0)
        goto LAB6;

LAB8:    t12 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t12) = 1;

LAB9:    t13 = (t4 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (~(t14));
    t16 = *((unsigned int *)t4);
    t17 = (t16 & t15);
    t18 = (t17 != 0);
    if (t18 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(54, ng0);

LAB14:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    memset(t22, 0, 8);
    t2 = (t22 + 4);
    t5 = (t3 + 4);
    t7 = *((unsigned int *)t3);
    t8 = (t7 >> 0);
    t9 = (t8 & 1);
    *((unsigned int *)t22) = t9;
    t10 = *((unsigned int *)t5);
    t11 = (t10 >> 0);
    t14 = (t11 & 1);
    *((unsigned int *)t2) = t14;
    memset(t21, 0, 8);
    t6 = (t22 + 4);
    t15 = *((unsigned int *)t6);
    t16 = (~(t15));
    t17 = *((unsigned int *)t22);
    t18 = (t17 & t16);
    t23 = (t18 & 1U);
    if (t23 != 0)
        goto LAB15;

LAB16:    if (*((unsigned int *)t6) != 0)
        goto LAB17;

LAB18:    t13 = (t21 + 4);
    t24 = *((unsigned int *)t21);
    t25 = *((unsigned int *)t13);
    t26 = (t24 || t25);
    if (t26 > 0)
        goto LAB19;

LAB20:    t28 = *((unsigned int *)t21);
    t29 = (~(t28));
    t30 = *((unsigned int *)t13);
    t31 = (t29 || t30);
    if (t31 > 0)
        goto LAB21;

LAB22:    if (*((unsigned int *)t13) > 0)
        goto LAB23;

LAB24:    if (*((unsigned int *)t21) > 0)
        goto LAB25;

LAB26:    memcpy(t4, t32, 8);

LAB27:    t33 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t33, t4, 0, 0, 8, 0LL);
    xsi_set_current_line(56, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    memset(t22, 0, 8);
    t2 = (t22 + 4);
    t5 = (t3 + 4);
    t7 = *((unsigned int *)t3);
    t8 = (t7 >> 1);
    t9 = (t8 & 1);
    *((unsigned int *)t22) = t9;
    t10 = *((unsigned int *)t5);
    t11 = (t10 >> 1);
    t14 = (t11 & 1);
    *((unsigned int *)t2) = t14;
    memset(t21, 0, 8);
    t6 = (t22 + 4);
    t15 = *((unsigned int *)t6);
    t16 = (~(t15));
    t17 = *((unsigned int *)t22);
    t18 = (t17 & t16);
    t23 = (t18 & 1U);
    if (t23 != 0)
        goto LAB28;

LAB29:    if (*((unsigned int *)t6) != 0)
        goto LAB30;

LAB31:    t13 = (t21 + 4);
    t24 = *((unsigned int *)t21);
    t25 = *((unsigned int *)t13);
    t26 = (t24 || t25);
    if (t26 > 0)
        goto LAB32;

LAB33:    t28 = *((unsigned int *)t21);
    t29 = (~(t28));
    t30 = *((unsigned int *)t13);
    t31 = (t29 || t30);
    if (t31 > 0)
        goto LAB34;

LAB35:    if (*((unsigned int *)t13) > 0)
        goto LAB36;

LAB37:    if (*((unsigned int *)t21) > 0)
        goto LAB38;

LAB39:    memcpy(t4, t33, 8);

LAB40:    t34 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t34, t4, 0, 0, 8, 0LL);
    xsi_set_current_line(57, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    memset(t22, 0, 8);
    t2 = (t22 + 4);
    t5 = (t3 + 4);
    t7 = *((unsigned int *)t3);
    t8 = (t7 >> 2);
    t9 = (t8 & 1);
    *((unsigned int *)t22) = t9;
    t10 = *((unsigned int *)t5);
    t11 = (t10 >> 2);
    t14 = (t11 & 1);
    *((unsigned int *)t2) = t14;
    memset(t21, 0, 8);
    t6 = (t22 + 4);
    t15 = *((unsigned int *)t6);
    t16 = (~(t15));
    t17 = *((unsigned int *)t22);
    t18 = (t17 & t16);
    t23 = (t18 & 1U);
    if (t23 != 0)
        goto LAB41;

LAB42:    if (*((unsigned int *)t6) != 0)
        goto LAB43;

LAB44:    t13 = (t21 + 4);
    t24 = *((unsigned int *)t21);
    t25 = *((unsigned int *)t13);
    t26 = (t24 || t25);
    if (t26 > 0)
        goto LAB45;

LAB46:    t28 = *((unsigned int *)t21);
    t29 = (~(t28));
    t30 = *((unsigned int *)t13);
    t31 = (t29 || t30);
    if (t31 > 0)
        goto LAB47;

LAB48:    if (*((unsigned int *)t13) > 0)
        goto LAB49;

LAB50:    if (*((unsigned int *)t21) > 0)
        goto LAB51;

LAB52:    memcpy(t4, t33, 8);

LAB53:    t34 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t34, t4, 0, 0, 8, 0LL);
    xsi_set_current_line(58, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    memset(t22, 0, 8);
    t2 = (t22 + 4);
    t5 = (t3 + 4);
    t7 = *((unsigned int *)t3);
    t8 = (t7 >> 3);
    t9 = (t8 & 1);
    *((unsigned int *)t22) = t9;
    t10 = *((unsigned int *)t5);
    t11 = (t10 >> 3);
    t14 = (t11 & 1);
    *((unsigned int *)t2) = t14;
    memset(t21, 0, 8);
    t6 = (t22 + 4);
    t15 = *((unsigned int *)t6);
    t16 = (~(t15));
    t17 = *((unsigned int *)t22);
    t18 = (t17 & t16);
    t23 = (t18 & 1U);
    if (t23 != 0)
        goto LAB54;

LAB55:    if (*((unsigned int *)t6) != 0)
        goto LAB56;

LAB57:    t13 = (t21 + 4);
    t24 = *((unsigned int *)t21);
    t25 = *((unsigned int *)t13);
    t26 = (t24 || t25);
    if (t26 > 0)
        goto LAB58;

LAB59:    t28 = *((unsigned int *)t21);
    t29 = (~(t28));
    t30 = *((unsigned int *)t13);
    t31 = (t29 || t30);
    if (t31 > 0)
        goto LAB60;

LAB61:    if (*((unsigned int *)t13) > 0)
        goto LAB62;

LAB63:    if (*((unsigned int *)t21) > 0)
        goto LAB64;

LAB65:    memcpy(t4, t33, 8);

LAB66:    t34 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t34, t4, 0, 0, 8, 0LL);
    xsi_set_current_line(60, ng0);
    t2 = (t0 + 2248);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 2088);
    t12 = (t6 + 56U);
    t13 = *((char **)t12);
    memset(t4, 0, 8);
    xsi_vlog_unsigned_add(t4, 8, t5, 8, t13, 8);
    t19 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t19, t4, 0, 0, 8, 0LL);
    xsi_set_current_line(61, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 2408);
    t12 = (t6 + 56U);
    t13 = *((char **)t12);
    memset(t4, 0, 8);
    xsi_vlog_unsigned_add(t4, 8, t5, 8, t13, 8);
    t19 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t19, t4, 0, 0, 8, 0LL);
    xsi_set_current_line(63, ng0);
    t2 = (t0 + 2728);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 2888);
    t12 = (t6 + 56U);
    t13 = *((char **)t12);
    memset(t4, 0, 8);
    xsi_vlog_unsigned_add(t4, 8, t5, 8, t13, 8);
    t19 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t19, t4, 0, 0, 8, 0LL);

LAB12:    goto LAB2;

LAB6:    *((unsigned int *)t4) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(44, ng0);

LAB13:    xsi_set_current_line(45, ng0);
    t19 = ((char*)((ng1)));
    t20 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t20, t19, 0, 0, 8, 0LL);
    xsi_set_current_line(46, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 8, 0LL);
    xsi_set_current_line(47, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 8, 0LL);
    xsi_set_current_line(48, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 8, 0LL);
    xsi_set_current_line(49, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 8, 0LL);
    xsi_set_current_line(51, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 8, 0LL);
    xsi_set_current_line(52, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 8, 0LL);
    goto LAB12;

LAB15:    *((unsigned int *)t21) = 1;
    goto LAB18;

LAB17:    t12 = (t21 + 4);
    *((unsigned int *)t21) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB18;

LAB19:    t19 = (t0 + 1048U);
    t20 = *((char **)t19);
    t19 = ((char*)((ng2)));
    xsi_vlogtype_concat(t27, 8, 8, 2U, t19, 4, t20, 4);
    goto LAB20;

LAB21:    t32 = ((char*)((ng2)));
    goto LAB22;

LAB23:    xsi_vlog_unsigned_bit_combine(t4, 8, t27, 8, t32, 8);
    goto LAB27;

LAB25:    memcpy(t4, t27, 8);
    goto LAB27;

LAB28:    *((unsigned int *)t21) = 1;
    goto LAB31;

LAB30:    t12 = (t21 + 4);
    *((unsigned int *)t21) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB31;

LAB32:    t19 = ((char*)((ng2)));
    t20 = (t0 + 1048U);
    t32 = *((char **)t20);
    t20 = ((char*)((ng2)));
    xsi_vlogtype_concat(t27, 8, 8, 3U, t20, 3, t32, 4, t19, 1);
    goto LAB33;

LAB34:    t33 = ((char*)((ng2)));
    goto LAB35;

LAB36:    xsi_vlog_unsigned_bit_combine(t4, 8, t27, 8, t33, 8);
    goto LAB40;

LAB38:    memcpy(t4, t27, 8);
    goto LAB40;

LAB41:    *((unsigned int *)t21) = 1;
    goto LAB44;

LAB43:    t12 = (t21 + 4);
    *((unsigned int *)t21) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB44;

LAB45:    t19 = ((char*)((ng2)));
    t20 = (t0 + 1048U);
    t32 = *((char **)t20);
    t20 = ((char*)((ng2)));
    xsi_vlogtype_concat(t27, 8, 8, 3U, t20, 2, t32, 4, t19, 2);
    goto LAB46;

LAB47:    t33 = ((char*)((ng2)));
    goto LAB48;

LAB49:    xsi_vlog_unsigned_bit_combine(t4, 8, t27, 8, t33, 8);
    goto LAB53;

LAB51:    memcpy(t4, t27, 8);
    goto LAB53;

LAB54:    *((unsigned int *)t21) = 1;
    goto LAB57;

LAB56:    t12 = (t21 + 4);
    *((unsigned int *)t21) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB57;

LAB58:    t19 = ((char*)((ng2)));
    t20 = (t0 + 1048U);
    t32 = *((char **)t20);
    t20 = ((char*)((ng2)));
    xsi_vlogtype_concat(t27, 8, 8, 3U, t20, 1, t32, 4, t19, 3);
    goto LAB59;

LAB60:    t33 = ((char*)((ng2)));
    goto LAB61;

LAB62:    xsi_vlog_unsigned_bit_combine(t4, 8, t27, 8, t33, 8);
    goto LAB66;

LAB64:    memcpy(t4, t27, 8);
    goto LAB66;

}


extern void work_m_00000000002838756061_1519192070_init()
{
	static char *pe[] = {(void *)Always_43_0};
	xsi_register_didat("work_m_00000000002838756061_1519192070", "isim/tb_isim_beh.exe.sim/work/m_00000000002838756061_1519192070.didat");
	xsi_register_executes(pe);
}
