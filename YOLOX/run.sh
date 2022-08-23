conda activate sort
python tools/detect.py image -n yolox-tiny -c ./pretrained/yolox_tiny.pth --path ../MOT15/train/ADL-Rundle-8/img1 --conf 0.20 --nms 0.45 --tsize 640 --save_result --device cpu
conda deactivate
