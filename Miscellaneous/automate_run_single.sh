#!/bin/bash

cd /home/odroid/en
./exec > outpen.txt &
cd /home/odroid/CL-19/
taskset -c 4,5,6,7 ./build/examples/graph_alexnet --data=/home/odroid/compute_library_alexnet/ --labels=/home/odroid/compute_library_alexnet/labels.txt --target=NEON --image=/home/odroid/compute_library_alexnet/go_kart.ppm --threads=4 
pkill exec
echo "done" >> /home/odroid/en/outpen.txt
echo "done" >> /home/odroid/CL-19/outpcl.txt

