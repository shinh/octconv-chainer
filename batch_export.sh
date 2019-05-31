#!/bin/bash

for i in 224 384 448 672 896; do
    for a in 25 50 75; do
        python3 eval_imagenet.py --gpu 0 --model octresnet50 ~/wrk/oniku/data/imagenet/val --pretrained-model pretrained_models/octresnet50_alpha${a}.npz --alpha 0.$a --export --export-size $i
        rm -fr octresnet50_a${a}_${i}
        mv octresnet50 octresnet50_a${a}_${i}
    done
done
