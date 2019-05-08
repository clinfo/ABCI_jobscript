#!/bin/sh
#$-cwd
#$-j y
#$-l rt_G.small=1

source /etc/profile.d/modules.sh
module load cuda/9.0/9.0.176.4
module load cudnn/7.1/7.1.4

source ~/.bashrc
pwd
nvidia-smi

cd <pwd>
<command>
