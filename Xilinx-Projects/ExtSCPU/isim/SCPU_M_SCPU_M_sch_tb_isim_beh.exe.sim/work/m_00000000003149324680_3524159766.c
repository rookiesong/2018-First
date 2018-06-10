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



static void implSig1_execute(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;

LAB0:    t1 = (t0 + 3168U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 1368U);
    t4 = *((char **)t2);
    t2 = (t0 + 1368U);
    t5 = *((char **)t2);
    t2 = (t0 + 1368U);
    t6 = *((char **)t2);
    t2 = (t0 + 1368U);
    t7 = *((char **)t2);
    t2 = (t0 + 1368U);
    t8 = *((char **)t2);
    t2 = (t0 + 1368U);
    t9 = *((char **)t2);
    t2 = (t0 + 1368U);
    t10 = *((char **)t2);
    t2 = (t0 + 1368U);
    t11 = *((char **)t2);
    t2 = (t0 + 1368U);
    t12 = *((char **)t2);
    t2 = (t0 + 1368U);
    t13 = *((char **)t2);
    t2 = (t0 + 1368U);
    t14 = *((char **)t2);
    t2 = (t0 + 1368U);
    t15 = *((char **)t2);
    t2 = (t0 + 1368U);
    t16 = *((char **)t2);
    t2 = (t0 + 1368U);
    t17 = *((char **)t2);
    t2 = (t0 + 1368U);
    t18 = *((char **)t2);
    t2 = (t0 + 1368U);
    t19 = *((char **)t2);
    t2 = (t0 + 1368U);
    t20 = *((char **)t2);
    t2 = (t0 + 1368U);
    t21 = *((char **)t2);
    t2 = (t0 + 1368U);
    t22 = *((char **)t2);
    t2 = (t0 + 1368U);
    t23 = *((char **)t2);
    t2 = (t0 + 1368U);
    t24 = *((char **)t2);
    t2 = (t0 + 1368U);
    t25 = *((char **)t2);
    t2 = (t0 + 1368U);
    t26 = *((char **)t2);
    t2 = (t0 + 1368U);
    t27 = *((char **)t2);
    t2 = (t0 + 1368U);
    t28 = *((char **)t2);
    t2 = (t0 + 1368U);
    t29 = *((char **)t2);
    t2 = (t0 + 1368U);
    t30 = *((char **)t2);
    t2 = (t0 + 1368U);
    t31 = *((char **)t2);
    t2 = (t0 + 1368U);
    t32 = *((char **)t2);
    t2 = (t0 + 1368U);
    t33 = *((char **)t2);
    t2 = (t0 + 1368U);
    t34 = *((char **)t2);
    t2 = (t0 + 1368U);
    t35 = *((char **)t2);
    xsi_vlogtype_concat(t3, 32, 32, 32U, t35, 1, t34, 1, t33, 1, t32, 1, t31, 1, t30, 1, t29, 1, t28, 1, t27, 1, t26, 1, t25, 1, t24, 1, t23, 1, t22, 1, t21, 1, t20, 1, t19, 1, t18, 1, t17, 1, t16, 1, t15, 1, t14, 1, t13, 1, t12, 1, t11, 1, t10, 1, t9, 1, t8, 1, t7, 1, t6, 1, t5, 1, t4, 1);
    t2 = (t0 + 3568);
    t36 = (t2 + 56U);
    t37 = *((char **)t36);
    t38 = (t37 + 56U);
    t39 = *((char **)t38);
    memcpy(t39, t3, 8);
    xsi_driver_vfirst_trans(t2, 0, 31);
    t40 = (t0 + 3488);
    *((int *)t40) = 1;

LAB1:    return;
}


extern void work_m_00000000003149324680_3524159766_init()
{
	static char *pe[] = {(void *)implSig1_execute};
	xsi_register_didat("work_m_00000000003149324680_3524159766", "isim/SCPU_M_SCPU_M_sch_tb_isim_beh.exe.sim/work/m_00000000003149324680_3524159766.didat");
	xsi_register_executes(pe);
}
