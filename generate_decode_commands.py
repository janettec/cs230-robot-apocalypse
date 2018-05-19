import numpy as np
from math import ceil

n = 9 # CHANGE TO HOWEVER MANY MODELS YOU HAVE
f = open('decode_sweep_2.sh', 'w+')
f.write('#!/bin/bash\n\n')

for i in range(n):
    f.write('mkdir output%d_train\n\npython decode.py  --beam_width 5 --decode_batch_size 30 --model_path model%d/translate.ckpt-64 --max_decode_step 300 --write_n_best False --decode_input data/train.anno --decode_output output%d_train/output_train\n\n' %(i,i,i))

for i in range(n):
    f.write('mkdir output%d_dev\n\npython decode.py  --beam_width 5 --decode_batch_size 30 --model_path model%d/translate.ckpt-64 --max_decode_step 300 --write_n_best False --decode_input data/dev.anno --decode_output output%d_dev/output_dev\n\n' %(i,i,i))
