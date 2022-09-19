#!/bin/bash
if [ $# -eq 0 ]; then
    echo "Use default pre-trained model"
    model="yolox_tiny.pth"
    model_name="yolox-tiny"
else
    model="yolox_$1.pth"
    model_name="yolox-$1"
fi


echo $model


# download pretrained model here

## check if pretrained model exist
ROOT=./pretrained/
URL="https://github.com/Megvii-BaseDetection/YOLOX/releases/download/0.1.1rc0/"

if test -f "$ROOT$model"; then
    echo "$model exists"
else
    # download model from github
    echo "$model doesn't exist. Download from source"
    wget -q -P $ROOT $URL$model
fi

# Declare a string array with type
declare -a StringArray=("ADL-Rundle-6" "ADL-Rundle-8" "ETH-Bahnhof" "ETH-Pdecross2" "ETH-Sunnyday" "KITTI-13" "KITTI-17" "PETS09-S2L1" "TUD-Campus" "TUD-Stadtmitte" "Venice-2")

for val in "${StringArray[@]}"; do
    python tools/detect.py image -n $model_name -c ./pretrained/$model --path ../MOT15/train/$val --conf 0.20 --nms 0.45 --tsize 640 --save_result --device gpu
done

