################################################################################
#This is an internally genertaed by SpyGlass for Message Tagging Support
################################################################################


use spyglass;
use SpyGlass;
use SpyGlass::Objects;
spyRebootMsgTagSupport();

spySetMsgTagCount(74,46);
spyParseTextMessageTagFile("/home1/BRN49/RuthvikBJ/VLSI_RN/projects/RISC-V/script_linting/vcst_rtdb/spyglass/vc_lint0/msrv32_top/VC_GOAL0/spyglass_spysch/sg_msgtag.txt");

if(!defined $::spyInIspy || !$::spyInIspy)
{
    spyDefineReportGroupingOrder("ALL",
(
"BUILTIN"   => [SGTAGTRUE, SGTAGFALSE]
,"TEMPLATE" => "A"
)
);
}
spyMessageTagTestBenchmark(5,"/home1/BRN49/RuthvikBJ/VLSI_RN/projects/RISC-V/script_linting/vcst_rtdb/spyglass/vc_lint0/msrv32_top/VC_GOAL0/spyglass.vdb");

1;
