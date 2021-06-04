
#!/bin/bash

echo 1900000 > /sys/devices/system/cpu/cpu4/cpufreq/scaling_max_freq
echo 1900000 > /sys/devices/system/cpu/cpu4/cpufreq/scaling_min_freq


cd /home/odroid/en
./exec > outpen.txt &
cd /home/odroid/CL/
taskset -c 4,5,6,7 ./build/examples/graph_alexnet --data=/home/odroid/clax/ --labels=/home/odroid/clax/labels.txt --target=NEON --image=/home/odroid/clax/go_kart.ppm --threads=4 > outpcl.txt 

pkill exec
echo "done" >> /home/odroid/en/outpen.txt
echo "1" >> /home/odroid/CL/outpcl.txt

echo 1800000 > /sys/devices/system/cpu/cpu4/cpufreq/scaling_min_freq
echo 1800000 > /sys/devices/system/cpu/cpu4/cpufreq/scaling_max_freq


cd /home/odroid/en
./exec >> outpen.txt &
cd /home/odroid/CL/
taskset -c 4,5,6,7 ./build/examples/graph_alexnet --data=/home/odroid/clax/ --labels=/home/odroid/clax/labels.txt --target=NEON --image=/home/odroid/clax/go_kart.ppm --threads=4 >> outpcl.txt 

pkill exec
echo "done" >> /home/odroid/en/outpen.txt
echo "1" >> /home/odroid/CL/outpcl.txt

echo 1700000 > /sys/devices/system/cpu/cpu4/cpufreq/scaling_min_freq
echo 1700000 > /sys/devices/system/cpu/cpu4/cpufreq/scaling_max_freq

cd /home/odroid/en
./exec >> outpen.txt &
cd /home/odroid/CL/
taskset -c 4,5,6,7 ./build/examples/graph_alexnet --data=/home/odroid/clax/ --labels=/home/odroid/clax/labels.txt --target=NEON --image=/home/odroid/clax/go_kart.ppm --threads=4 >> outpcl.txt 

pkill exec
echo "done" >> /home/odroid/en/outpen.txt
echo "1" >> /home/odroid/CL/outpcl.txt


echo 1600000 > /sys/devices/system/cpu/cpu4/cpufreq/scaling_min_freq
echo 1600000 > /sys/devices/system/cpu/cpu5/cpufreq/scaling_max_freq


cd /home/odroid/en
./exec >> outpen.txt &
cd /home/odroid/CL/
taskset -c 4,5,6,7 ./build/examples/graph_alexnet --data=/home/odroid/clax/ --labels=/home/odroid/clax/labels.txt --target=NEON --image=/home/odroid/clax/go_kart.ppm --threads=4 >> outpcl.txt 

pkill exec
echo "done" >> /home/odroid/en/outpen.txt
echo "1" >> /home/odroid/CL/outpcl.txt


echo 1500000 > /sys/devices/system/cpu/cpu4/cpufreq/scaling_min_freq
echo 1500000 > /sys/devices/system/cpu/cpu5/cpufreq/scaling_max_freq

cd /home/odroid/en
./exec >> outpen.txt &
cd /home/odroid/CL/
taskset -c 4,5,6,7 ./build/examples/graph_alexnet --data=/home/odroid/clax/ --labels=/home/odroid/clax/labels.txt --target=NEON --image=/home/odroid/clax/go_kart.ppm --threads=4 >> outpcl.txt 

pkill exec
echo "done" >> /home/odroid/en/outpen.txt
echo "1" >> /home/odroid/CL/outpcl.txt


echo 1400000 > /sys/devices/system/cpu/cpu4/cpufreq/scaling_min_freq
echo 1400000 > /sys/devices/system/cpu/cpu5/cpufreq/scaling_max_freq


cd /home/odroid/en
./exec >> outpen.txt &
cd /home/odroid/CL/
taskset -c 4,5,6,7 ./build/examples/graph_alexnet --data=/home/odroid/clax/ --labels=/home/odroid/clax/labels.txt --target=NEON --image=/home/odroid/clax/go_kart.ppm --threads=4 >> outpcl.txt 


pkill exec
echo "done" >> /home/odroid/en/outpen.txt
echo "1" >> /home/odroid/CL/outpcl.txt


echo 1300000 > /sys/devices/system/cpu/cpu4/cpufreq/scaling_min_freq
echo 1300000 > /sys/devices/system/cpu/cpu5/cpufreq/scaling_max_freq


cd /home/odroid/en
./exec >> outpen.txt &
cd /home/odroid/CL/
taskset -c 4,5,6,7 ./build/examples/graph_alexnet --data=/home/odroid/clax/ --labels=/home/odroid/clax/labels.txt --target=NEON --image=/home/odroid/clax/go_kart.ppm --threads=4 >> outpcl.txt 




pkill exec
echo "done" >> /home/odroid/en/outpen.txt
echo "1" >> /home/odroid/CL/outpcl.txt

echo 1200000 > /sys/devices/system/cpu/cpu4/cpufreq/scaling_min_freq
echo 1200000 > /sys/devices/system/cpu/cpu5/cpufreq/scaling_max_freq

cd /home/odroid/en
./exec >> outpen.txt &
cd /home/odroid/CL/
taskset -c 4,5,6,7 ./build/examples/graph_alexnet --data=/home/odroid/clax/ --labels=/home/odroid/clax/labels.txt --target=NEON --image=/home/odroid/clax/go_kart.ppm --threads=4 >> outpcl.txt 




pkill exec
echo "done" >> /home/odroid/en/outpen.txt
echo "1" >> /home/odroid/CL/outpcl.txt

echo 1100000 > /sys/devices/system/cpu/cpu4/cpufreq/scaling_min_freq
echo 1100000 > /sys/devices/system/cpu/cpu5/cpufreq/scaling_max_freq

cd /home/odroid/en
./exec >> outpen.txt &
cd /home/odroid/CL/
taskset -c 4,5,6,7 ./build/examples/graph_alexnet --data=/home/odroid/clax/ --labels=/home/odroid/clax/labels.txt --target=NEON --image=/home/odroid/clax/go_kart.ppm --threads=4 >> outpcl.txt 




pkill exec
echo "done" >> /home/odroid/en/outpen.txt
echo "1" >> /home/odroid/CL/outpcl.txt

echo 1000000 > /sys/devices/system/cpu/cpu4/cpufreq/scaling_min_freq
echo 1000000 > /sys/devices/system/cpu/cpu5/cpufreq/scaling_max_freq

cd /home/odroid/en
./exec >> outpen.txt &
cd /home/odroid/CL/
taskset -c 4,5,6,7 ./build/examples/graph_alexnet --data=/home/odroid/clax/ --labels=/home/odroid/clax/labels.txt --target=NEON --image=/home/odroid/clax/go_kart.ppm --threads=4 >> outpcl.txt 




pkill exec
echo "done" >> /home/odroid/en/outpen.txt
echo "1" >> /home/odroid/CL/outpcl.txt

echo 900000 > /sys/devices/system/cpu/cpu4/cpufreq/scaling_min_freq
echo 900000 > /sys/devices/system/cpu/cpu5/cpufreq/scaling_max_freq

cd /home/odroid/en
./exec >> outpen.txt &
cd /home/odroid/CL/
taskset -c 4,5,6,7 ./build/examples/graph_alexnet --data=/home/odroid/clax/ --labels=/home/odroid/clax/labels.txt --target=NEON --image=/home/odroid/clax/go_kart.ppm --threads=4 >> outpcl.txt 




pkill exec
echo "done" >> /home/odroid/en/outpen.txt
echo "1" >> /home/odroid/CL/outpcl.txt

echo 800000 > /sys/devices/system/cpu/cpu4/cpufreq/scaling_min_freq
echo 800000 > /sys/devices/system/cpu/cpu5/cpufreq/scaling_max_freq

cd /home/odroid/en
./exec >> outpen.txt &
cd /home/odroid/CL/
taskset -c 4,5,6,7 ./build/examples/graph_alexnet --data=/home/odroid/clax/ --labels=/home/odroid/clax/labels.txt --target=NEON --image=/home/odroid/clax/go_kart.ppm --threads=4 >> outpcl.txt 




pkill exec
echo "done" >> /home/odroid/en/outpen.txt
echo "1" >> /home/odroid/CL/outpcl.txt

echo 700000 > /sys/devices/system/cpu/cpu4/cpufreq/scaling_min_freq
echo 700000 > /sys/devices/system/cpu/cpu5/cpufreq/scaling_max_freq

cd /home/odroid/en
./exec >> outpen.txt &
cd /home/odroid/CL/
taskset -c 4,5,6,7 ./build/examples/graph_alexnet --data=/home/odroid/clax/ --labels=/home/odroid/clax/labels.txt --target=NEON --image=/home/odroid/clax/go_kart.ppm --threads=4 >> outpcl.txt 




pkill exec
echo "done" >> /home/odroid/en/outpen.txt
echo "1" >> /home/odroid/CL/outpcl.txt

echo 600000 > /sys/devices/system/cpu/cpu4/cpufreq/scaling_min_freq
echo 600000 > /sys/devices/system/cpu/cpu5/cpufreq/scaling_max_freq

cd /home/odroid/en
./exec >> outpen.txt &
cd /home/odroid/CL/
taskset -c 4,5,6,7 ./build/examples/graph_alexnet --data=/home/odroid/clax/ --labels=/home/odroid/clax/labels.txt --target=NEON --image=/home/odroid/clax/go_kart.ppm --threads=4 >> outpcl.txt 


pkill exec
echo "done" >> /home/odroid/en/outpen.txt
echo "1" >> /home/odroid/CL/outpcl.txt

echo 500000 > /sys/devices/system/cpu/cpu4/cpufreq/scaling_min_freq
echo 500000 > /sys/devices/system/cpu/cpu5/cpufreq/scaling_max_freq

cd /home/odroid/en
./exec >> outpen.txt &
cd /home/odroid/CL/
taskset -c 4,5,6,7 ./build/examples/graph_alexnet --data=/home/odroid/clax/ --labels=/home/odroid/clax/labels.txt --target=NEON --image=/home/odroid/clax/go_kart.ppm --threads=4 >> outpcl.txt 

pkill exec
echo "done" >> /home/odroid/en/outpen.txt
echo "1" >> /home/odroid/CL/outpcl.txt

echo 400000 > /sys/devices/system/cpu/cpu4/cpufreq/scaling_min_freq
echo 400000 > /sys/devices/system/cpu/cpu5/cpufreq/scaling_max_freq

cd /home/odroid/en
./exec >> outpen.txt &
cd /home/odroid/CL/
taskset -c 4,5,6,7 ./build/examples/graph_alexnet --data=/home/odroid/clax/ --labels=/home/odroid/clax/labels.txt --target=NEON --image=/home/odroid/clax/go_kart.ppm --threads=4 >> outpcl.txt 

pkill exec
echo "done" >> /home/odroid/en/outpen.txt
echo "1" >> /home/odroid/CL/outpcl.txt

echo 300000 > /sys/devices/system/cpu/cpu4/cpufreq/scaling_min_freq
echo 300000 > /sys/devices/system/cpu/cpu5/cpufreq/scaling_max_freq

cd /home/odroid/en
./exec >> outpen.txt &
cd /home/odroid/CL/
taskset -c 4,5,6,7 ./build/examples/graph_alexnet --data=/home/odroid/clax/ --labels=/home/odroid/clax/labels.txt --target=NEON --image=/home/odroid/clax/go_kart.ppm --threads=4 >> outpcl.txt 

pkill exec
echo "done" >> /home/odroid/en/outpen.txt
echo "1" >> /home/odroid/CL/outpcl.txt

echo 200000 > /sys/devices/system/cpu/cpu4/cpufreq/scaling_min_freq
echo 200000 > /sys/devices/system/cpu/cpu5/cpufreq/scaling_max_freq

cd /home/odroid/en
./exec >> outpen.txt &
cd /home/odroid/CL/
taskset -c 4,5,6,7 ./build/examples/graph_alexnet --data=/home/odroid/clax/ --labels=/home/odroid/clax/labels.txt --target=NEON --image=/home/odroid/clax/go_kart.ppm --threads=4 >> outpcl.txt 

pkill exec
echo "done" >> /home/odroid/en/outpen.txt
echo "1" >> /home/odroid/CL/outpcl.txt



