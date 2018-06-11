#!/bin/bash


mkdir output_full_useShuf
python2 decode.py --beam_width 5 --decode_batch_size 30 --model_path full_useShuf/translate.ckpt-1770 --max_decode_step 300 --write_n_best False --decode_input data/train.shuf.anno --decode_output output_full_useShuf/train


python2 decode.py --beam_width 5 --decode_batch_size 30 --model_path full_useShuf/translate.ckpt-1770 --max_decode_step 300 --write_n_best False --decode_input data/dev.shuf.anno --decode_output output_full_useShuf/dev


mkdir output_full_useShuf_bp
python2 decode.py --beam_width 5 --decode_batch_size 30 --model_path full_useShuf_bp/translate.ckpt-1770 --max_decode_step 300 --write_n_best False --decode_input data/train.shuf.anno --decode_output output_full_useShuf_bp/train


python2 decode.py --beam_width 5 --decode_batch_size 30 --model_path full_useShuf_bp/translate.ckpt-1770 --max_decode_step 300 --write_n_best False --decode_input data/dev.shuf.anno --decode_output output_full_useShuf_bp/dev
