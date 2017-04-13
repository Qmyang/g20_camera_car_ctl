connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent Nexys4DDR 210292645057A"} -index 0
loadhw C:/Users/chenya26/fix_cam/filter_vga_rc/image_filter_test_bench.sdk/design_1_wrapper_hw_platform_0/system.hdf
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent Nexys4DDR 210292645057A"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent Nexys4DDR 210292645057A"} -index 0
dow C:/Users/chenya26/fix_cam/filter_vga_rc/image_filter_test_bench.sdk/image_filter/Debug/image_filter.elf
bpadd -addr &main
