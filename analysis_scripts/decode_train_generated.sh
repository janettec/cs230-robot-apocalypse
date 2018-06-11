#!/bin/bash

python2 decode.py --beam_width 5 --decode_batch_size 30 --model_path full_model_2/translate.ckpt-1785 --max_decode_step 300 --write_n_best False --decode_input data/train.anno --decode_output output_full_2/train
