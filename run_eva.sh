#!/bin/bash

#SBATCH --job-name=pixmatch99
#SBATCH --gres=gpu:1
#SBATCH --cpus-per-gpu=4
#SBATCH --mem-per-gpu=24G
#SBATCH -o eva_out_1128/pixelmix_1_95_batch2.out
#SBATCH -w sw14
#SBATCH --partition batch_sw_ugrad
#SBATCH --time=3-0


#source /data/opt/anaconda3/bin/conda init
source /data/dragoon0905/init.sh
conda activate pixmatch

#rm -rf /local_datasets/CityScapes
#cp -r /data/dragoon0905/CityScapes  /local_datasets/CityScapes
#cp -r /data/dragoon0905/GTA5  /local_datasets/GTA5

HYDRA_FULL_ERROR=1 python main_pixelmix.py --config-name=gta5_eva lam_aug=0.10 name=gta5_baseline train=False 