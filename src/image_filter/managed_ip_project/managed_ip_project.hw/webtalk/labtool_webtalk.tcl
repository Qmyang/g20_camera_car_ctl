webtalk_init -webtalk_dir F:/image_filter/managed_ip_project/managed_ip_project.hw/webtalk/
webtalk_register_client -client project
webtalk_add_data -client project -key date_generated -value "Wed Mar 15 18:12:45 2017" -context "software_version_and_target_device"
webtalk_add_data -client project -key product_version -value "Vivado v2016.2 (64-bit)" -context "software_version_and_target_device"
webtalk_add_data -client project -key build_version -value "1577090" -context "software_version_and_target_device"
webtalk_add_data -client project -key os_platform -value "WIN64" -context "software_version_and_target_device"
webtalk_add_data -client project -key registration_id -value "" -context "software_version_and_target_device"
webtalk_add_data -client project -key tool_flow -value "xsim_vivado" -context "software_version_and_target_device"
webtalk_add_data -client project -key beta -value "FALSE" -context "software_version_and_target_device"
webtalk_add_data -client project -key route_design -value "FALSE" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_family -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_device -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_package -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_speed -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key random_id -value "172da99c380056ff803ae68a1499270d" -context "software_version_and_target_device"
webtalk_add_data -client project -key project_id -value "19e5e821-d902-4ce1-b80d-7efb959528c8" -context "software_version_and_target_device"
webtalk_add_data -client project -key project_iteration -value "5" -context "software_version_and_target_device"
webtalk_add_data -client project -key os_name -value "Microsoft Windows 7 , 64-bit" -context "user_environment"
webtalk_add_data -client project -key os_release -value "Service Pack 1  (build 7601)" -context "user_environment"
webtalk_add_data -client project -key cpu_name -value "Intel(R) Core(TM) i7-3612QM CPU @ 2.10GHz" -context "user_environment"
webtalk_add_data -client project -key cpu_speed -value "2095 MHz" -context "user_environment"
webtalk_add_data -client project -key total_processors -value "1" -context "user_environment"
webtalk_add_data -client project -key system_ram -value "8.000 GB" -context "user_environment"
webtalk_register_client -client labtool
webtalk_add_data -client labtool -key chain -value "13631093" -context "labtool\\usage"
webtalk_add_data -client labtool -key chain -value "13631093" -context "labtool\\usage"
webtalk_add_data -client labtool -key pgmcnt -value "00:00:00" -context "labtool\\usage"
webtalk_add_data -client labtool -key cable -value "Digilent/Nexys4DDR/15000000:" -context "labtool\\usage"
webtalk_transmit -clientid 1560250117 -regid "" -xml F:/image_filter/managed_ip_project/managed_ip_project.hw/webtalk/usage_statistics_ext_labtool.xml -html F:/image_filter/managed_ip_project/managed_ip_project.hw/webtalk/usage_statistics_ext_labtool.html -wdm F:/image_filter/managed_ip_project/managed_ip_project.hw/webtalk/usage_statistics_ext_labtool.wdm -intro "<H3>LABTOOL Usage Report</H3><BR>"
webtalk_terminate
