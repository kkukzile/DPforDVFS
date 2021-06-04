
#!/bin/bash

echo performance  >/sys/devices/system/cpu/cpu5/cpufreq/scaling_governor
echo 1900000 >/sys/devices/system/cpu/cpu4/cpufreq/scaling_max_freq 

sleep 1

cd /home/odroid/en
./exec > outpen.txt &
cd /home/odroid/CL-19/
taskset -c 4,5,6,7 ./build/examples/graph_mobilenet --target=NEON --image=/home/odroid/assets_googlenet/peppergn.ppm --threads=4 >outpcl.txt
pkill exec
echo "done" >> /home/odroid/en/outpen.txt
echo "done" >> /home/odroid/CL-19/outpcl.txt


echo ondemand  >/sys/devices/system/cpu/cpu5/cpufreq/scaling_governor 
echo 1900000 >/sys/devices/system/cpu/cpu4/cpufreq/scaling_max_freq 

sleep 1
cd /home/odroid/en
./exec >> outpen.txt &
cd /home/odroid/CL-19/
taskset -c 4,5,6,7 ./build/examples/graph_mobilenet --target=NEON --image=/home/odroid/assets_googlenet/peppergn.ppm --threads=4 >>outpcl.txt
pkill exec
echo "done" >> /home/odroid/en/outpen.txt
echo "done" >> /home/odroid/CL-19/outpcl.txt


echo conservative  >/sys/devices/system/cpu/cpu5/cpufreq/scaling_governor 
echo 1900000 >/sys/devices/system/cpu/cpu4/cpufreq/scaling_max_freq 

sleep 1
cd /home/odroid/en
./exec >> outpen.txt &
cd /home/odroid/CL-19/
taskset -c 4,5,6,7 ./build/examples/graph_mobilenet --target=NEON --image=/home/odroid/assets_googlenet/peppergn.ppm --threads=4 >>outpcl.txt
pkill exec
echo "done" >> /home/odroid/en/outpen.txt
echo "done" >> /home/odroid/CL-19/outpcl.txt



echo interactive  >/sys/devices/system/cpu/cpu5/cpufreq/scaling_governor 
echo 1900000 >/sys/devices/system/cpu/cpu4/cpufreq/scaling_max_freq 

sleep 1

cd /home/odroid/en
./exec >> outpen.txt &
cd /home/odroid/CL-19/
taskset -c 4,5,6,7 ./build/examples/graph_mobilenet --target=NEON --image=/home/odroid/assets_googlenet/peppergn.ppm --threads=4 >>outpcl.txt

pkill exec
echo "done" >> /home/odroid/en/outpen.txt
echo "done" >> /home/odroid/CL-19/outpcl.txt


