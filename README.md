# G20_camera_car_ctl

# Auto Visual Navigation

## 1. How to use

Open the .xpr project file in folder Final_integrated_project. Go to Block Design. Generate HDL wrapper and generate bitstream. If any IP core have wrong file path. Reset the path in ip catalog. After bit stream is generated. Export  hardware (include bitstream) and launch SDK. Let the SDK project update then program FPGA and run the program.


## 2. Repository Structure
    1. doc - contains group report, slide presentation for final demo
    2. src - contains all project source files
        1. Board_files - contains configurations files for Nexys4 DDR
        2. Final_integrated_project - contains final integrated vivado project
        3. fixed_Camera_core - contains source file of the OV7670 IP core
        4. Image_filter - contains source files and test bench of image subsampler IP core
        5. Rc_car_control - contains source file for the rc_car_control IP core
        6. VGA - contains source file of VGA controller IP core
        7. Angle_cal - contains source file of Angle Calculator IP core

## 3. Authors

Lucas Pan, Will Zhang, Yang Chen, Eric Yang

