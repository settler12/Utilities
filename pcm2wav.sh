#!/bin/bash

# This script convert pcm files in the current folder into wav files
# with specific audio configurations(16k sampling rate, 16bit quantization, mono channel)

mkdir ./convert;
for fname in *.pcm; 
do echo $fname; 
dst_folder="./convert"; 
sox -t raw -r 16000 -b 16 -c 1 -e signed-integer $fname -t wav -r 16000 -b 16 -c 1 "$dst_folder/${fname/pcm/wav}"; 
done
