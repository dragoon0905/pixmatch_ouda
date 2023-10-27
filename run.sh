#!/bin/bash

#SBATCH --job-name=pixmatch99
#SBATCH --gres=gpu:1
#SBATCH --cpus-per-gpu=4
#SBATCH --mem-per-gpu=24G
#SBATCH -o ./make_out/gta52pascal_count_label_sign_val.out
#SBATCH -w aurora-g3
#SBATCH --partition batch_ugrad
#SBATCH --time=4-0

#source /data/opt/anaconda3/bin/conda init
source /data/dragoon0905/init.sh
conda activate pixmatch

#rm -rf /local_datasets/CityScapes
#cp -r /data/dragoon0905/datasets/Mapillary  /local_datasets/Mapillary
#cp -r /data/dragoon0905/datasets/GTA5  /local_datasets/GTA5
#cp -r /data/dragoon0905/datasets/CityScapes  /local_datasets/CityScapes

#HYDRA_FULL_ERROR=1 python main.py --config-name=gta5_13 lam_aug=0.10 T=0.2 train=False name=gta5_check_pixel
#HYDRA_FULL_ERROR=1 python main.py --config-name=gta5_13 lam_aug=0.10 T=0.2 train=False name=gta5_check_pixel
#HYDRA_FULL_ERROR=1 python main.py --config-name=gta5_13 lam_aug=0.10 T=0.3 train=False name=gta5_check_pixel
#HYDRA_FULL_ERROR=1 python main.py --config-name=gta5_13 lam_aug=0.10 T=0.4 train=False name=gta5_check_pixel
#HYDRA_FULL_ERROR=1 python main.py --config-name=gta5_13 lam_aug=0.10 T=0.5 train=False name=gta5_check_pixel
#HYDRA_FULL_ERROR=1 python main.py --config-name=gta5_13 lam_aug=0.10 T=0.6 train=False name=gta5_check_pixel
#HYDRA_FULL_ERROR=1 python main.py --config-name=gta5_13 lam_aug=0.10 T=0.7 train=False name=gta5_check_pixel
#HYDRA_FULL_ERROR=1 python main.py --config-name=gta5_13 lam_aug=0.10 T=0.8 train=False name=gta5_check_pixel
#HYDRA_FULL_ERROR=1 python main.py --config-name=gta5_13 lam_aug=0.10 T=0.9 train=False name=gta5_check_pixel
#HYDRA_FULL_ERROR=1 python main.py --config-name=gta5_13 lam_aug=0.10 T=0.95 train=False name=gta5_check_pixel


#HYDRA_FULL_ERROR=1 python main_pascal.py --config-name=gta52pascal lam_aug=0.10 T=0.0 name=gta52pascal
HYDRA_FULL_ERROR=1 python main_pascal_label.py --config-name=gta52pascal lam_aug=0.10 T=0.0 name=gta52pascal
#HYDRA_FULL_ERROR=1 python main_pascal_edge.py --config-name=pascal_images lam_aug=0.10 T=0.0 name=gta52pascal
#HYDRA_FULL_ERROR=1 python main_pascal_edge.py --config-name=CS_images lam_aug=0.10 T=0.0 name=gta52pascal
