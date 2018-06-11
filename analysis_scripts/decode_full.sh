#!/bin/bash

python2 decode_attn_vis.py --beam_width 1 --decode_batch_size 30 --model_path full_model_attn_vis/translate.ckpt-1785 --max_decode_step 300 --write_n_best False --decode_input data/train.anno --decode_output ouput_full_attnVis/output_train


python2 decode_attn_vis.py --beam_width 1 --decode_batch_size 30 --model_path full_model_attn_vis/translate.ckpt-1785 --max_decode_step 300 --write_n_best False --decode_input data/dev.anno --decode_output ouput_full_attnVis/output_dev

python2 decode.py --beam_width 5 --decode_batch_size 30 --model_path full_model_bestParams/translate.ckpt-1785 --max_decode_step 300 --write_n_best False --decode_input data/train.anno --decode_output ouput_full_bestParam/output_train


python2 decode.py --beam_width 5 --decode_batch_size 30 --model_path full_model_bestParams/translate.ckpt-1785 --max_decode_step 300 --write_n_best False --decode_input data/dev.anno --decode_output ouput_full_bestParam/output_dev
