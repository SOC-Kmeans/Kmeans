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
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {0U, 4294967295U};
static unsigned int ng3[] = {4294967295U, 4294967295U};
static unsigned int ng4[] = {1U, 0U};
static int ng5[] = {1, 0};
static unsigned int ng6[] = {2U, 0U};
static unsigned int ng7[] = {4U, 0U};
static unsigned int ng8[] = {3U, 0U};



static void Always_92_0(char *t0)
{
    char t4[8];
    char t33[8];
    char t43[8];
    char t73[8];
    char t89[8];
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
    char *t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    char *t30;
    int t31;
    char *t32;
    char *t34;
    char *t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    char *t42;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    char *t47;
    char *t48;
    char *t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    char *t57;
    char *t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    char *t71;
    char *t72;
    char *t74;
    char *t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    char *t88;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    char *t93;
    char *t94;
    char *t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    char *t103;
    char *t104;
    unsigned int t105;
    unsigned int t106;
    unsigned int t107;
    int t108;
    unsigned int t109;
    unsigned int t110;
    unsigned int t111;
    int t112;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    unsigned int t116;
    char *t117;
    unsigned int t118;
    unsigned int t119;
    unsigned int t120;
    unsigned int t121;
    unsigned int t122;
    char *t123;
    char *t124;

LAB0:    t1 = (t0 + 2592U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(92, ng0);
    t2 = (t0 + 2932);
    *((int *)t2) = 1;
    t3 = (t0 + 2620);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(92, ng0);

LAB5:    xsi_set_current_line(93, ng0);
    t5 = (t0 + 1196U);
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
    t14 = (t6 + 4);
    t15 = *((unsigned int *)t6);
    t16 = (~(t15));
    *((unsigned int *)t4) = t16;
    *((unsigned int *)t13) = 0;
    if (*((unsigned int *)t14) != 0)
        goto LAB11;

LAB10:    t21 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t21 & 1U);
    t22 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t22 & 1U);
    t23 = (t4 + 4);
    t24 = *((unsigned int *)t23);
    t25 = (~(t24));
    t26 = *((unsigned int *)t4);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB12;

LAB13:    xsi_set_current_line(97, ng0);

LAB16:    xsi_set_current_line(98, ng0);
    t2 = (t0 + 1792);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);

LAB17:    t6 = ((char*)((ng1)));
    t31 = xsi_vlog_unsigned_case_compare(t5, 2, t6, 2);
    if (t31 == 1)
        goto LAB18;

LAB19:    t2 = ((char*)((ng4)));
    t31 = xsi_vlog_unsigned_case_compare(t5, 2, t2, 2);
    if (t31 == 1)
        goto LAB20;

LAB21:    t2 = ((char*)((ng6)));
    t31 = xsi_vlog_unsigned_case_compare(t5, 2, t2, 2);
    if (t31 == 1)
        goto LAB22;

LAB23:    t2 = ((char*)((ng8)));
    t31 = xsi_vlog_unsigned_case_compare(t5, 2, t2, 2);
    if (t31 == 1)
        goto LAB24;

LAB25:
LAB26:
LAB14:    goto LAB2;

LAB6:    *((unsigned int *)t4) = 1;
    goto LAB9;

LAB11:    t17 = *((unsigned int *)t4);
    t18 = *((unsigned int *)t14);
    *((unsigned int *)t4) = (t17 | t18);
    t19 = *((unsigned int *)t13);
    t20 = *((unsigned int *)t14);
    *((unsigned int *)t13) = (t19 | t20);
    goto LAB10;

LAB12:    xsi_set_current_line(93, ng0);

LAB15:    xsi_set_current_line(94, ng0);
    t29 = ((char*)((ng1)));
    t30 = (t0 + 1792);
    xsi_vlogvar_wait_assign_value(t30, t29, 0, 0, 2, 0LL);
    xsi_set_current_line(95, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1884);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    goto LAB14;

LAB18:    xsi_set_current_line(99, ng0);

LAB27:    xsi_set_current_line(100, ng0);
    t12 = (t0 + 1012U);
    t13 = *((char **)t12);
    t12 = ((char*)((ng2)));
    memset(t4, 0, 8);
    t14 = (t13 + 4);
    t23 = (t12 + 4);
    t7 = *((unsigned int *)t13);
    t8 = *((unsigned int *)t12);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t14);
    t11 = *((unsigned int *)t23);
    t15 = (t10 ^ t11);
    t16 = (t9 | t15);
    t17 = *((unsigned int *)t14);
    t18 = *((unsigned int *)t23);
    t19 = (t17 | t18);
    t20 = (~(t19));
    t21 = (t16 & t20);
    if (t21 != 0)
        goto LAB29;

LAB28:    if (t19 != 0)
        goto LAB30;

LAB31:    t30 = (t0 + 1012U);
    t32 = *((char **)t30);
    t30 = ((char*)((ng3)));
    memset(t33, 0, 8);
    t34 = (t32 + 4);
    t35 = (t30 + 4);
    t22 = *((unsigned int *)t32);
    t24 = *((unsigned int *)t30);
    t25 = (t22 ^ t24);
    t26 = *((unsigned int *)t34);
    t27 = *((unsigned int *)t35);
    t28 = (t26 ^ t27);
    t36 = (t25 | t28);
    t37 = *((unsigned int *)t34);
    t38 = *((unsigned int *)t35);
    t39 = (t37 | t38);
    t40 = (~(t39));
    t41 = (t36 & t40);
    if (t41 != 0)
        goto LAB33;

LAB32:    if (t39 != 0)
        goto LAB34;

LAB35:    t44 = *((unsigned int *)t4);
    t45 = *((unsigned int *)t33);
    t46 = (t44 | t45);
    *((unsigned int *)t43) = t46;
    t47 = (t4 + 4);
    t48 = (t33 + 4);
    t49 = (t43 + 4);
    t50 = *((unsigned int *)t47);
    t51 = *((unsigned int *)t48);
    t52 = (t50 | t51);
    *((unsigned int *)t49) = t52;
    t53 = *((unsigned int *)t49);
    t54 = (t53 != 0);
    if (t54 == 1)
        goto LAB36;

LAB37:
LAB38:    t71 = (t0 + 1012U);
    t72 = *((char **)t71);
    t71 = ((char*)((ng1)));
    memset(t73, 0, 8);
    t74 = (t72 + 4);
    t75 = (t71 + 4);
    t76 = *((unsigned int *)t72);
    t77 = *((unsigned int *)t71);
    t78 = (t76 ^ t77);
    t79 = *((unsigned int *)t74);
    t80 = *((unsigned int *)t75);
    t81 = (t79 ^ t80);
    t82 = (t78 | t81);
    t83 = *((unsigned int *)t74);
    t84 = *((unsigned int *)t75);
    t85 = (t83 | t84);
    t86 = (~(t85));
    t87 = (t82 & t86);
    if (t87 != 0)
        goto LAB40;

LAB39:    if (t85 != 0)
        goto LAB41;

LAB42:    t90 = *((unsigned int *)t43);
    t91 = *((unsigned int *)t73);
    t92 = (t90 | t91);
    *((unsigned int *)t89) = t92;
    t93 = (t43 + 4);
    t94 = (t73 + 4);
    t95 = (t89 + 4);
    t96 = *((unsigned int *)t93);
    t97 = *((unsigned int *)t94);
    t98 = (t96 | t97);
    *((unsigned int *)t95) = t98;
    t99 = *((unsigned int *)t95);
    t100 = (t99 != 0);
    if (t100 == 1)
        goto LAB43;

LAB44:
LAB45:    t117 = (t89 + 4);
    t118 = *((unsigned int *)t117);
    t119 = (~(t118));
    t120 = *((unsigned int *)t89);
    t121 = (t120 & t119);
    t122 = (t121 != 0);
    if (t122 > 0)
        goto LAB46;

LAB47:    xsi_set_current_line(104, ng0);

LAB50:    xsi_set_current_line(105, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1792);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);

LAB48:    goto LAB26;

LAB20:    xsi_set_current_line(108, ng0);

LAB51:    xsi_set_current_line(109, ng0);
    t3 = (t0 + 2068);
    t6 = (t3 + 36U);
    t12 = *((char **)t6);
    t13 = (t0 + 1012U);
    t14 = *((char **)t13);
    memset(t4, 0, 8);
    t13 = (t12 + 4);
    if (*((unsigned int *)t13) != 0)
        goto LAB53;

LAB52:    t23 = (t14 + 4);
    if (*((unsigned int *)t23) != 0)
        goto LAB53;

LAB56:    if (*((unsigned int *)t12) < *((unsigned int *)t14))
        goto LAB54;

LAB55:    t30 = (t4 + 4);
    t7 = *((unsigned int *)t30);
    t8 = (~(t7));
    t9 = *((unsigned int *)t4);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB57;

LAB58:    xsi_set_current_line(112, ng0);

LAB61:    xsi_set_current_line(113, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 1792);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);

LAB59:    goto LAB26;

LAB22:    xsi_set_current_line(116, ng0);

LAB62:    xsi_set_current_line(117, ng0);
    t3 = (t0 + 1884);
    t6 = (t3 + 36U);
    t12 = *((char **)t6);
    t13 = ((char*)((ng7)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_minus(t4, 32, t12, 32, t13, 32);
    t14 = (t0 + 1884);
    xsi_vlogvar_wait_assign_value(t14, t4, 0, 0, 32, 0LL);
    xsi_set_current_line(118, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 1792);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);
    goto LAB26;

LAB24:    xsi_set_current_line(120, ng0);

LAB63:    xsi_set_current_line(121, ng0);
    t3 = (t0 + 1884);
    t6 = (t3 + 36U);
    t12 = *((char **)t6);
    t13 = (t0 + 1884);
    xsi_vlogvar_wait_assign_value(t13, t12, 0, 0, 32, 0LL);
    xsi_set_current_line(122, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 1792);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);
    goto LAB26;

LAB29:    *((unsigned int *)t4) = 1;
    goto LAB31;

LAB30:    t29 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t29) = 1;
    goto LAB31;

LAB33:    *((unsigned int *)t33) = 1;
    goto LAB35;

LAB34:    t42 = (t33 + 4);
    *((unsigned int *)t33) = 1;
    *((unsigned int *)t42) = 1;
    goto LAB35;

LAB36:    t55 = *((unsigned int *)t43);
    t56 = *((unsigned int *)t49);
    *((unsigned int *)t43) = (t55 | t56);
    t57 = (t4 + 4);
    t58 = (t33 + 4);
    t59 = *((unsigned int *)t57);
    t60 = (~(t59));
    t61 = *((unsigned int *)t4);
    t62 = (t61 & t60);
    t63 = *((unsigned int *)t58);
    t64 = (~(t63));
    t65 = *((unsigned int *)t33);
    t66 = (t65 & t64);
    t67 = (~(t62));
    t68 = (~(t66));
    t69 = *((unsigned int *)t49);
    *((unsigned int *)t49) = (t69 & t67);
    t70 = *((unsigned int *)t49);
    *((unsigned int *)t49) = (t70 & t68);
    goto LAB38;

LAB40:    *((unsigned int *)t73) = 1;
    goto LAB42;

LAB41:    t88 = (t73 + 4);
    *((unsigned int *)t73) = 1;
    *((unsigned int *)t88) = 1;
    goto LAB42;

LAB43:    t101 = *((unsigned int *)t89);
    t102 = *((unsigned int *)t95);
    *((unsigned int *)t89) = (t101 | t102);
    t103 = (t43 + 4);
    t104 = (t73 + 4);
    t105 = *((unsigned int *)t103);
    t106 = (~(t105));
    t107 = *((unsigned int *)t43);
    t108 = (t107 & t106);
    t109 = *((unsigned int *)t104);
    t110 = (~(t109));
    t111 = *((unsigned int *)t73);
    t112 = (t111 & t110);
    t113 = (~(t108));
    t114 = (~(t112));
    t115 = *((unsigned int *)t95);
    *((unsigned int *)t95) = (t115 & t113);
    t116 = *((unsigned int *)t95);
    *((unsigned int *)t95) = (t116 & t114);
    goto LAB45;

LAB46:    xsi_set_current_line(100, ng0);

LAB49:    xsi_set_current_line(101, ng0);
    t123 = ((char*)((ng4)));
    t124 = (t0 + 1792);
    xsi_vlogvar_wait_assign_value(t124, t123, 0, 0, 2, 0LL);
    xsi_set_current_line(102, ng0);
    t2 = (t0 + 1884);
    t3 = (t2 + 36U);
    t6 = *((char **)t3);
    t12 = ((char*)((ng5)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_add(t4, 32, t6, 32, t12, 32);
    t13 = (t0 + 1884);
    xsi_vlogvar_wait_assign_value(t13, t4, 0, 0, 32, 0LL);
    goto LAB48;

LAB53:    t29 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t29) = 1;
    goto LAB55;

LAB54:    *((unsigned int *)t4) = 1;
    goto LAB55;

LAB57:    xsi_set_current_line(109, ng0);

LAB60:    xsi_set_current_line(110, ng0);
    t32 = ((char*)((ng1)));
    t34 = (t0 + 1792);
    xsi_vlogvar_wait_assign_value(t34, t32, 0, 0, 2, 0LL);
    goto LAB59;

}

static void Always_131_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 2736U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(131, ng0);
    t2 = (t0 + 2940);
    *((int *)t2) = 1;
    t3 = (t0 + 2764);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(131, ng0);

LAB5:    xsi_set_current_line(132, ng0);
    t4 = (t0 + 1792);
    t5 = (t4 + 36U);
    t6 = *((char **)t5);

LAB6:    t7 = ((char*)((ng1)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 2, t7, 2);
    if (t8 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng4)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 2, t2, 2);
    if (t8 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng6)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 2, t2, 2);
    if (t8 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng8)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 2, t2, 2);
    if (t8 == 1)
        goto LAB13;

LAB14:
LAB15:    goto LAB2;

LAB7:    xsi_set_current_line(133, ng0);

LAB16:    xsi_set_current_line(134, ng0);
    t9 = (t0 + 1288U);
    t10 = *((char **)t9);
    t9 = (t0 + 1976);
    xsi_vlogvar_wait_assign_value(t9, t10, 0, 0, 32, 0LL);
    goto LAB15;

LAB9:    xsi_set_current_line(136, ng0);

LAB17:    xsi_set_current_line(137, ng0);
    t3 = (t0 + 1288U);
    t4 = *((char **)t3);
    t3 = (t0 + 2068);
    xsi_vlogvar_wait_assign_value(t3, t4, 0, 0, 32, 0LL);
    goto LAB15;

LAB11:    xsi_set_current_line(139, ng0);

LAB18:    xsi_set_current_line(140, ng0);
    t3 = (t0 + 1884);
    t4 = (t3 + 36U);
    t5 = *((char **)t4);
    t7 = (t0 + 1700);
    xsi_vlogvar_wait_assign_value(t7, t5, 0, 0, 32, 0LL);
    goto LAB15;

LAB13:    xsi_set_current_line(142, ng0);

LAB19:    xsi_set_current_line(143, ng0);
    t3 = (t0 + 1884);
    t4 = (t3 + 36U);
    t5 = *((char **)t4);
    t7 = (t0 + 1700);
    xsi_vlogvar_wait_assign_value(t7, t5, 0, 0, 32, 0LL);
    goto LAB15;

}


extern void work_m_00000000001493215067_3100815632_init()
{
	static char *pe[] = {(void *)Always_92_0,(void *)Always_131_1};
	xsi_register_didat("work_m_00000000001493215067_3100815632", "isim/Calculation_distance_tb_isim_beh.exe.sim/work/m_00000000001493215067_3100815632.didat");
	xsi_register_executes(pe);
}
