#!/bin/bash

echo $1 $2

module load Miniconda3          # load conda module
eval "$(conda shell.bash hook)" # Initialize the shell to use Conda
conda info --envs               # list all conda envs available
conda activate /homes/rfali/miniconda3/envs/mts_v1    # activate conda env (give full path, should exist in beocat headnode)
cd '/homes/rfali/workspace/beocat_tutorial/beocat'   # set correct path for code 

# Following was used initially, but currently testing whether this can by bypassed through a wandb login on headnode
# Set your wandb username as ENTITY and go to https://wandb.ai/authorize for API_KEY
# WANDB_ENTITY=yourwandbusername
# WANDB_API_KEY='long string'

time python dqn.py --env-id $1 --seed $2 
# --total-timesteps 1000
