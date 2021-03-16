#!/bin/bash

# Run CIFAR10 experiment on ganomaly

# declare  arr=("plane" "car" "bird" "cat" "deer" "dog" "frog" "horse" "ship" "truck" )
m=1
echo "Manual Seed: $m"
i=car
echo "Running CIFAR. Anomaly Class: $i "
python train.py --dataset cifar10 --isize 32 --niter 15 --abnormal_class $i --manualseed $m
