#!/bin/bash

mkdir output_bpe

python2 decode.py --beam_width 5 --decode_batch_size 30 --model_path model_bpe/translate.ckpt-944 --max_decode_step 300 --write_n_best False --decode_input data/train.clean.anno --decode_output output_bpe/train

python2 decode.py --beam_width 5 --decode_batch_size 30 --model_path model_bpe/translate.ckpt-944 --max_decode_step 300 --write_n_best False --decode_input data/dev.clean.anno --decode_output output_bpe/dev


mkdir output_tok

python2 decode.py --beam_width 5 --decode_batch_size 30 --model_path model_tok/translate.ckpt-952 --max_decode_step 300 --write_n_best False --decode_input data/train.tok.anno --decode_output output_tok/train

python2 decode.py --beam_width 5 --decode_batch_size 30 --model_path model_tok/translate.ckpt-952 --max_decode_step 300 --write_n_best False --decode_input data/dev.tok.anno --decode_output output_tok/dev

mkdir output_norm

python2 decode.py --beam_width 5 --decode_batch_size 30 --model_path model_norm/translate.ckpt-952 --max_decode_step 300 --write_n_best False --decode_input data/train.norm.anno --decode_output output_norm/train


python2 decode.py --beam_width 5 --decode_batch_size 30 --model_path model_norm/translate.ckpt-952 --max_decode_step 300 --write_n_best False --decode_input data/dev.norm.anno --decode_output output_norm/dev

mkdir output_noPre

python2 decode.py --beam_width 5 --decode_batch_size 30 --model_path model_noPre/translate.ckpt-952 --max_decode_step 300 --write_n_best False --decode_input data/train.anno --decode_output output_noPre/train


python2 decode.py --beam_width 5 --decode_batch_size 30 --model_path model_noPre/translate.ckpt-952 --max_decode_step 300 --write_n_best False --decode_input data/dev.anno --decode_output output_noPre/dev
