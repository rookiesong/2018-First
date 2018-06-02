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
static const char *ng0 = "D:/Documents/GitHub/First/Xilinx-Projects/ExtSCPU/Code/CPU/SCtrl_M.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {0U, 0U};
static int ng3[] = {1, 0};
static unsigned int ng4[] = {32U, 0U};
static unsigned int ng5[] = {2U, 0U};
static unsigned int ng6[] = {34U, 0U};
static unsigned int ng7[] = {6U, 0U};
static unsigned int ng8[] = {36U, 0U};
static unsigned int ng9[] = {37U, 0U};
static unsigned int ng10[] = {1U, 0U};
static unsigned int ng11[] = {42U, 0U};
static unsigned int ng12[] = {7U, 0U};
static unsigned int ng13[] = {39U, 0U};
static unsigned int ng14[] = {4U, 0U};
static unsigned int ng15[] = {5U, 0U};
static unsigned int ng16[] = {22U, 0U};
static unsigned int ng17[] = {3U, 0U};
static unsigned int ng18[] = {8U, 0U};
static unsigned int ng19[] = {7U, 7U};
static unsigned int ng20[] = {35U, 0U};
static unsigned int ng21[] = {43U, 0U};
static unsigned int ng22[] = {12U, 0U};
static unsigned int ng23[] = {13U, 0U};
static unsigned int ng24[] = {15U, 0U};



static void Always_36_0(char *t0)
{
    char t8[8];
    char t9[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;
    char *t26;

LAB0:    t1 = (t0 + 4128U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(36, ng0);
    t2 = (t0 + 4448);
    *((int *)t2) = 1;
    t3 = (t0 + 4160);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(36, ng0);

LAB5:    xsi_set_current_line(37, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t0 + 1928);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(38, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(39, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2248);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(40, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2728);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(41, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(42, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(43, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2888);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(44, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3208);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(46, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);

LAB6:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 6);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng20)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 6);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng21)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 6);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng14)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 6);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 6);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng15)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 6);
    if (t6 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng8)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 6);
    if (t6 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng18)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 6);
    if (t6 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng22)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 6);
    if (t6 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng23)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 6);
    if (t6 == 1)
        goto LAB25;

LAB26:    t2 = ((char*)((ng17)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 6);
    if (t6 == 1)
        goto LAB27;

LAB28:    t2 = ((char*)((ng24)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 6);
    if (t6 == 1)
        goto LAB29;

LAB30:
LAB32:
LAB31:    xsi_set_current_line(103, ng0);
    t2 = ((char*)((ng5)));
    t5 = (t0 + 3048);
    xsi_vlogvar_assign_value(t5, t2, 0, 0, 3);

LAB33:    goto LAB2;

LAB7:    xsi_set_current_line(47, ng0);

LAB34:    xsi_set_current_line(47, ng0);
    t4 = ((char*)((ng3)));
    t5 = (t0 + 1928);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(47, ng0);
    t2 = ((char*)((ng3)));
    t4 = (t0 + 2728);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    xsi_set_current_line(48, ng0);
    t2 = (t0 + 1208U);
    t4 = *((char **)t2);

LAB35:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 6, t2, 6);
    if (t6 == 1)
        goto LAB36;

LAB37:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 6, t2, 6);
    if (t6 == 1)
        goto LAB38;

LAB39:    t2 = ((char*)((ng8)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 6, t2, 6);
    if (t6 == 1)
        goto LAB40;

LAB41:    t2 = ((char*)((ng9)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 6, t2, 6);
    if (t6 == 1)
        goto LAB42;

LAB43:    t2 = ((char*)((ng11)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 6, t2, 6);
    if (t6 == 1)
        goto LAB44;

LAB45:    t2 = ((char*)((ng13)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 6, t2, 6);
    if (t6 == 1)
        goto LAB46;

LAB47:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 6, t2, 6);
    if (t6 == 1)
        goto LAB48;

LAB49:    t2 = ((char*)((ng16)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 6, t2, 6);
    if (t6 == 1)
        goto LAB50;

LAB51:    t2 = ((char*)((ng18)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 6, t2, 6);
    if (t6 == 1)
        goto LAB52;

LAB53:
LAB55:
LAB54:    xsi_set_current_line(60, ng0);
    t2 = ((char*)((ng19)));
    t5 = (t0 + 3048);
    xsi_vlogvar_assign_value(t5, t2, 0, 0, 3);

LAB56:    goto LAB33;

LAB9:    xsi_set_current_line(64, ng0);

LAB57:    xsi_set_current_line(64, ng0);
    t5 = ((char*)((ng5)));
    t7 = (t0 + 3048);
    xsi_vlogvar_assign_value(t7, t5, 0, 0, 3);
    xsi_set_current_line(65, ng0);
    t2 = ((char*)((ng3)));
    t5 = (t0 + 2088);
    xsi_vlogvar_assign_value(t5, t2, 0, 0, 1);
    xsi_set_current_line(65, ng0);
    t2 = ((char*)((ng10)));
    t5 = (t0 + 2248);
    xsi_vlogvar_assign_value(t5, t2, 0, 0, 2);
    xsi_set_current_line(65, ng0);
    t2 = ((char*)((ng3)));
    t5 = (t0 + 2728);
    xsi_vlogvar_assign_value(t5, t2, 0, 0, 1);
    goto LAB33;

LAB11:    xsi_set_current_line(67, ng0);

LAB58:    xsi_set_current_line(67, ng0);
    t5 = ((char*)((ng5)));
    t7 = (t0 + 3048);
    xsi_vlogvar_assign_value(t7, t5, 0, 0, 3);
    xsi_set_current_line(68, ng0);
    t2 = ((char*)((ng3)));
    t5 = (t0 + 2088);
    xsi_vlogvar_assign_value(t5, t2, 0, 0, 1);
    xsi_set_current_line(68, ng0);
    t2 = ((char*)((ng3)));
    t5 = (t0 + 2888);
    xsi_vlogvar_assign_value(t5, t2, 0, 0, 1);
    goto LAB33;

LAB13:    xsi_set_current_line(70, ng0);

LAB59:    xsi_set_current_line(70, ng0);
    t5 = ((char*)((ng7)));
    t7 = (t0 + 3048);
    xsi_vlogvar_assign_value(t7, t5, 0, 0, 3);
    xsi_set_current_line(71, ng0);
    t2 = (t0 + 1528U);
    t5 = *((char **)t2);
    t2 = ((char*)((ng2)));
    xsi_vlogtype_concat(t8, 2, 2, 2U, t2, 1, t5, 1);
    t7 = (t0 + 2568);
    xsi_vlogvar_assign_value(t7, t8, 0, 0, 2);
    goto LAB33;

LAB15:    xsi_set_current_line(73, ng0);
    t5 = ((char*)((ng5)));
    t7 = (t0 + 2568);
    xsi_vlogvar_assign_value(t7, t5, 0, 0, 2);
    goto LAB33;

LAB17:    xsi_set_current_line(75, ng0);

LAB60:    xsi_set_current_line(75, ng0);
    t5 = ((char*)((ng7)));
    t7 = (t0 + 3048);
    xsi_vlogvar_assign_value(t7, t5, 0, 0, 3);
    xsi_set_current_line(76, ng0);
    t2 = (t0 + 1528U);
    t5 = *((char **)t2);
    memset(t9, 0, 8);
    t2 = (t5 + 4);
    t10 = *((unsigned int *)t2);
    t11 = (~(t10));
    t12 = *((unsigned int *)t5);
    t13 = (t12 & t11);
    t14 = (t13 & 1U);
    if (t14 != 0)
        goto LAB64;

LAB62:    if (*((unsigned int *)t2) == 0)
        goto LAB61;

LAB63:    t7 = (t9 + 4);
    *((unsigned int *)t9) = 1;
    *((unsigned int *)t7) = 1;

LAB64:    t15 = (t9 + 4);
    t16 = (t5 + 4);
    t17 = *((unsigned int *)t5);
    t18 = (~(t17));
    *((unsigned int *)t9) = t18;
    *((unsigned int *)t15) = 0;
    if (*((unsigned int *)t16) != 0)
        goto LAB66;

LAB65:    t23 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t23 & 1U);
    t24 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t24 & 1U);
    t25 = ((char*)((ng2)));
    xsi_vlogtype_concat(t8, 2, 2, 2U, t25, 1, t9, 1);
    t26 = (t0 + 2568);
    xsi_vlogvar_assign_value(t26, t8, 0, 0, 2);
    goto LAB33;

LAB19:    xsi_set_current_line(78, ng0);

LAB67:    xsi_set_current_line(78, ng0);
    t5 = ((char*)((ng12)));
    t7 = (t0 + 3048);
    xsi_vlogvar_assign_value(t7, t5, 0, 0, 3);
    xsi_set_current_line(79, ng0);
    t2 = ((char*)((ng3)));
    t5 = (t0 + 2088);
    xsi_vlogvar_assign_value(t5, t2, 0, 0, 1);
    xsi_set_current_line(79, ng0);
    t2 = ((char*)((ng3)));
    t5 = (t0 + 2728);
    xsi_vlogvar_assign_value(t5, t2, 0, 0, 1);
    goto LAB33;

LAB21:    xsi_set_current_line(81, ng0);

LAB68:    xsi_set_current_line(81, ng0);
    t5 = ((char*)((ng5)));
    t7 = (t0 + 3048);
    xsi_vlogvar_assign_value(t7, t5, 0, 0, 3);
    xsi_set_current_line(82, ng0);
    t2 = ((char*)((ng3)));
    t5 = (t0 + 2088);
    xsi_vlogvar_assign_value(t5, t2, 0, 0, 1);
    xsi_set_current_line(82, ng0);
    t2 = ((char*)((ng3)));
    t5 = (t0 + 2728);
    xsi_vlogvar_assign_value(t5, t2, 0, 0, 1);
    goto LAB33;

LAB23:    xsi_set_current_line(87, ng0);

LAB69:    xsi_set_current_line(87, ng0);
    t5 = ((char*)((ng2)));
    t7 = (t0 + 3048);
    xsi_vlogvar_assign_value(t7, t5, 0, 0, 3);
    xsi_set_current_line(88, ng0);
    t2 = ((char*)((ng3)));
    t5 = (t0 + 2088);
    xsi_vlogvar_assign_value(t5, t2, 0, 0, 1);
    xsi_set_current_line(88, ng0);
    t2 = ((char*)((ng3)));
    t5 = (t0 + 2728);
    xsi_vlogvar_assign_value(t5, t2, 0, 0, 1);
    goto LAB33;

LAB25:    xsi_set_current_line(90, ng0);

LAB70:    xsi_set_current_line(90, ng0);
    t5 = ((char*)((ng10)));
    t7 = (t0 + 3048);
    xsi_vlogvar_assign_value(t7, t5, 0, 0, 3);
    xsi_set_current_line(91, ng0);
    t2 = ((char*)((ng3)));
    t5 = (t0 + 2088);
    xsi_vlogvar_assign_value(t5, t2, 0, 0, 1);
    xsi_set_current_line(91, ng0);
    t2 = ((char*)((ng3)));
    t5 = (t0 + 2728);
    xsi_vlogvar_assign_value(t5, t2, 0, 0, 1);
    goto LAB33;

LAB27:    xsi_set_current_line(96, ng0);

LAB71:    xsi_set_current_line(96, ng0);
    t5 = ((char*)((ng3)));
    t7 = (t0 + 2408);
    xsi_vlogvar_assign_value(t7, t5, 0, 0, 1);
    xsi_set_current_line(96, ng0);
    t2 = ((char*)((ng5)));
    t5 = (t0 + 2568);
    xsi_vlogvar_assign_value(t5, t2, 0, 0, 2);
    xsi_set_current_line(97, ng0);
    t2 = ((char*)((ng17)));
    t5 = (t0 + 2248);
    xsi_vlogvar_assign_value(t5, t2, 0, 0, 2);
    xsi_set_current_line(97, ng0);
    t2 = ((char*)((ng3)));
    t5 = (t0 + 2728);
    xsi_vlogvar_assign_value(t5, t2, 0, 0, 1);
    goto LAB33;

LAB29:    xsi_set_current_line(99, ng0);

LAB72:    xsi_set_current_line(99, ng0);
    t5 = ((char*)((ng5)));
    t7 = (t0 + 2248);
    xsi_vlogvar_assign_value(t7, t5, 0, 0, 2);
    xsi_set_current_line(99, ng0);
    t2 = ((char*)((ng3)));
    t5 = (t0 + 2728);
    xsi_vlogvar_assign_value(t5, t2, 0, 0, 1);
    goto LAB33;

LAB36:    xsi_set_current_line(49, ng0);
    t5 = ((char*)((ng5)));
    t7 = (t0 + 3048);
    xsi_vlogvar_assign_value(t7, t5, 0, 0, 3);
    goto LAB56;

LAB38:    xsi_set_current_line(50, ng0);
    t5 = ((char*)((ng7)));
    t7 = (t0 + 3048);
    xsi_vlogvar_assign_value(t7, t5, 0, 0, 3);
    goto LAB56;

LAB40:    xsi_set_current_line(51, ng0);
    t5 = ((char*)((ng2)));
    t7 = (t0 + 3048);
    xsi_vlogvar_assign_value(t7, t5, 0, 0, 3);
    goto LAB56;

LAB42:    xsi_set_current_line(52, ng0);
    t5 = ((char*)((ng10)));
    t7 = (t0 + 3048);
    xsi_vlogvar_assign_value(t7, t5, 0, 0, 3);
    goto LAB56;

LAB44:    xsi_set_current_line(53, ng0);
    t5 = ((char*)((ng12)));
    t7 = (t0 + 3048);
    xsi_vlogvar_assign_value(t7, t5, 0, 0, 3);
    goto LAB56;

LAB46:    xsi_set_current_line(54, ng0);
    t5 = ((char*)((ng14)));
    t7 = (t0 + 3048);
    xsi_vlogvar_assign_value(t7, t5, 0, 0, 3);
    goto LAB56;

LAB48:    xsi_set_current_line(55, ng0);
    t5 = ((char*)((ng15)));
    t7 = (t0 + 3048);
    xsi_vlogvar_assign_value(t7, t5, 0, 0, 3);
    goto LAB56;

LAB50:    xsi_set_current_line(56, ng0);
    t5 = ((char*)((ng17)));
    t7 = (t0 + 3048);
    xsi_vlogvar_assign_value(t7, t5, 0, 0, 3);
    goto LAB56;

LAB52:    xsi_set_current_line(58, ng0);
    t5 = ((char*)((ng17)));
    t7 = (t0 + 2568);
    xsi_vlogvar_assign_value(t7, t5, 0, 0, 2);
    goto LAB56;

LAB61:    *((unsigned int *)t9) = 1;
    goto LAB64;

LAB66:    t19 = *((unsigned int *)t9);
    t20 = *((unsigned int *)t16);
    *((unsigned int *)t9) = (t19 | t20);
    t21 = *((unsigned int *)t15);
    t22 = *((unsigned int *)t16);
    *((unsigned int *)t15) = (t21 | t22);
    goto LAB65;

}


extern void work_m_00000000004103171026_3887191436_init()
{
	static char *pe[] = {(void *)Always_36_0};
	xsi_register_didat("work_m_00000000004103171026_3887191436", "isim/SCPU_ctrl_more_tb_isim_beh.exe.sim/work/m_00000000004103171026_3887191436.didat");
	xsi_register_executes(pe);
}
