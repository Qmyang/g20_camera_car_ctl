webtalk_init -webtalk_dir /nfs/ug/homes-0/y/yangqiu/Desktop/fix_cam/worked_cam/worked_cam.sdk/webtalk
webtalk_register_client -client project
webtalk_add_data -client project -key date_generated -value "Thu Mar 23 23:04:46 2017" -context "software_version_and_target_device"
webtalk_add_data -client project -key product_version -value "SDK v2016.2" -context "software_version_and_target_device"
webtalk_add_data -client project -key build_version -value "2016.2" -context "software_version_and_target_device"
webtalk_add_data -client project -key os_platform -value "amd64" -context "software_version_and_target_device"
webtalk_add_data -client project -key registration_id -value "" -context "software_version_and_target_device"
webtalk_add_data -client project -key tool_flow -value "SDK" -context "software_version_and_target_device"
webtalk_add_data -client project -key beta -value "false" -context "software_version_and_target_device"
webtalk_add_data -client project -key route_design -value "NA" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_family -value "NA" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_device -value "NA" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_package -value "NA" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_speed -value "NA" -context "software_version_and_target_device"
webtalk_add_data -client project -key random_id -value "h090dkpm97mtjhgkj9eg9rpa5c" -context "software_version_and_target_device"
webtalk_add_data -client project -key project_id -value "2016.2_3" -context "software_version_and_target_device"
webtalk_add_data -client project -key project_iteration -value "3" -context "software_version_and_target_device"
webtalk_add_data -client project -key os_name -value "" -context "user_environment"
webtalk_add_data -client project -key os_release -value "" -context "user_environment"
webtalk_add_data -client project -key cpu_name -value "" -context "user_environment"
webtalk_add_data -client project -key cpu_speed -value "" -context "user_environment"
webtalk_add_data -client project -key total_processors -value "" -context "user_environment"
webtalk_add_data -client project -key system_ram -value "" -context "user_environment"
webtalk_register_client -client sdk
webtalk_add_data -client sdk -key uid -value "1490322951000" -context "sdk\\\\hardware/1490322951000"
webtalk_add_data -client sdk -key isZynq -value "false" -context "sdk\\\\hardware/1490322951000"
webtalk_add_data -client sdk -key Processors -value "1" -context "sdk\\\\hardware/1490322951000"
webtalk_add_data -client sdk -key VivadoVersion -value "2016.2" -context "sdk\\\\hardware/1490322951000"
webtalk_add_data -client sdk -key Arch -value "artix7" -context "sdk\\\\hardware/1490322951000"
webtalk_add_data -client sdk -key Device -value "7a100t" -context "sdk\\\\hardware/1490322951000"
webtalk_add_data -client sdk -key IsHandoff -value "true" -context "sdk\\\\hardware/1490322951000"
webtalk_add_data -client sdk -key uid -value "1490322968000" -context "sdk\\\\bsp/1490322968000"
webtalk_add_data -client sdk -key hwid -value "1490322951000" -context "sdk\\\\bsp/1490322968000"
webtalk_add_data -client sdk -key os -value "standalone" -context "sdk\\\\bsp/1490322968000"
webtalk_add_data -client sdk -key apptemplate -value "empty_application" -context "sdk\\\\bsp/1490322968000"
webtalk_add_data -client sdk -key uid -value "1490322984000" -context "sdk\\\\application/1490322984000"
webtalk_add_data -client sdk -key hwid -value "1490322951000" -context "sdk\\\\application/1490322984000"
webtalk_add_data -client sdk -key bspid -value "1490322968000" -context "sdk\\\\application/1490322984000"
webtalk_add_data -client sdk -key newbsp -value "true" -context "sdk\\\\application/1490322984000"
webtalk_add_data -client sdk -key os -value "standalone" -context "sdk\\\\application/1490322984000"
webtalk_add_data -client sdk -key apptemplate -value "empty_application" -context "sdk\\\\application/1490322984000"
webtalk_transmit -clientid 1170161534 -regid "" -xml /nfs/ug/homes-0/y/yangqiu/Desktop/fix_cam/worked_cam/worked_cam.sdk/webtalk/usage_statistics_ext_sdk.xml -html /nfs/ug/homes-0/y/yangqiu/Desktop/fix_cam/worked_cam/worked_cam.sdk/webtalk/usage_statistics_ext_sdk.html -wdm /nfs/ug/homes-0/y/yangqiu/Desktop/fix_cam/worked_cam/worked_cam.sdk/webtalk/sdk_webtalk.wdm -intro "<H3>SDK Usage Report</H3><BR>"
webtalk_terminate
