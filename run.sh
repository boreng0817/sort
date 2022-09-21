#!/bin/bash
#cd YOLOX
#source run.sh
#cd ..
conda activate sort
python sort.py --display
python video.py
conda deactivate

