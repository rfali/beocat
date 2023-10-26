#!/bin/bash

# run this file using 'bash -f beocat_run_all.sh'

for seed in 1 2 
do
    for env in CartPole-v1 MountainCar-v0
    do 
        sbatch --mem=30G --time=30:00:00 --constraint="warlocks|wizards" --gres=gpu:1 --nodes=1 beocat_run_one.sh $env $seed
    done
done
