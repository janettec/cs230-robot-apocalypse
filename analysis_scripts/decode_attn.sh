#!/bin/bash

python2 decode_attn_vis.py --beam_width 1 --decode_batch_size 1 --model_path full_model_2/translate.ckpt-1785 --max_decode_step 300 --write_n_best False --decode_input good_translations2.anno --decode_output attn_test/good2
