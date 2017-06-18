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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000004181634025_0992280429_init();
    work_m_00000000001355278909_1060979053_init();
    work_m_00000000000319256656_1003879601_init();
    work_m_00000000001278603775_1519192070_init();
    work_m_00000000004181634025_1663324951_init();
    work_m_00000000003630919354_0575584717_init();
    work_m_00000000000567847464_1653765155_init();
    work_m_00000000001493215067_3100815632_init();
    work_m_00000000001052871548_4153424826_init();
    work_m_00000000002008005627_4255050619_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000002008005627_4255050619");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
