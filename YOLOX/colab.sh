# Declare a string array with type
declare -a StringArray=("ADL-Rundle-6" "ADL-Rundle-8" "ETH-Bahnhof" "ETH-Pdecross2" "ETH-Sunnyday" "KITTI-13" "KITTI-17" "PETS09-S2L1" "TUD-Campus" "TUD-Stadtmitte" "Venice-2")

for val in "${StringArray[@]}"; do
  python tools/detect.py image -n yolox-tiny -c ./pretrained/yolox_tiny.pth --path ../MOT15/train/$val --conf 0.20 --nms 0.45 --tsize 640 --save_result --device gpu
done
