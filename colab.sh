#!/bin/bash
cd YOLOX
./colab.sh $1
cd ..

python sort.py
