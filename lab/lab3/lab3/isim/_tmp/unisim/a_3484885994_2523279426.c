/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2007 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

/* This file is designed for use with ISim build 0x5cce65a */

#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
extern char *IEEE_P_2592010699;

unsigned char p_2592010699_sub_3488768497506413324_2592010699(char *, unsigned char , unsigned char );


static void unisim_a_3484885994_2523279426_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:
LAB3:    t1 = (t0 + 1136U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 1296U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t6 = p_2592010699_sub_3488768497506413324_2592010699(IEEE_P_2592010699, t3, t5);
    t1 = (t0 + 2736);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t6;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t11 = (t0 + 2656);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void unisim_a_3484885994_2523279426_init()
{
	static char *pe[] = {(void *)unisim_a_3484885994_2523279426_p_0};
	xsi_register_didat("unisim_a_3484885994_2523279426", "isim/_tmp/unisim/a_3484885994_2523279426.didat");
	xsi_register_executes(pe);
}