#!/bin/bash
GPU="$(nvidia-smi|awk 'NR==10{print substr($3,1,2)}')°C"
echo -e " $GPU"