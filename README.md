Execution helpers.cpp - src/graph/detail

1. Introduced a new governor called FD-CNN. The governor is designed to switch to a set of predefined frequencies at predefined intervals, these frequencies and intervals are hard-coded into the governor code and the values change per the network. The governor is referred to as performance2 governor in the code.
    1. Code for the governors are available in [ DVFS Gov ] folder, to add the governor as a driver -
            1. Add the .c file to /drivers/cpufreq
            2. Make changes in Kconfig and Makefile to include the new file
            3. Rebuild kernel [linuxsc.sh, for more information - https://wiki.odroid.com/odroid-xu4/software/building_kernel]
    2. The INA231 sensor measures the power usage and the update period of the sensor can be changed to max (i.e 4 us) by changing update_period value in the device tree to 4480. Device tree location- arch/arm/boot/exynos5422-odroidxu3.dts.
2. To measure energy for each layer we run a script for energy/power  measurement in parallel with inference run. 
    1. Refer to [exec.exe in energymon-modified folder and the corresponding test.cpp]. This code has been taken from Energymon [https://github.com/energymon/energymon] and modified. The script which does both these things together is [run_all_freq.sh and  run_all_govs.sh] and creates two files - 
        1. Outpen.txt has output from exec.exe which prints time, and power value from the sensor.
        2. Outpcl.txt has output from the inference run and prints start and end time for each layer in the network.
    2. You can use [measure_time_and_energy.sh] to combine the two files created form the previous script (point 1) and print the average time and energy.
3. Miscellaneous 
    1. I made changes in the following files in ARMCL to print execution time per layer and run the network multiple times with a single command 
        1. examples/graph_alexnet/googlenet/etc.cpp
        2. src/graph/detail/ExecutionHelpers.cpp
        3. Src/graph/GraphManager.cpp


# DPforDVFS

Dynamic programming algorithm to find optimal frequencies for layer level profiling of CNNs
Contains layer wise frequency vs time data for Alexnet, GoogleNet, ResNet and MobileNet. These networks were run using ARM CL 15 
Frequency range is 200KHz to 1.9 GHz
