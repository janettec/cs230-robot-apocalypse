#!/bin/bash

python2 train3.py --cell_type 'lstm' --attention_type 'luong' --depth 6 --hidden_units 355 --learning_rate 0.00020 --dropout_rate 0.56 --batch_size 128 --embedding_size 500 --num_encoder_symbols 6909 --num_decoder_symbols 4617 --max_epochs 15 --display_freq 1 --model_dir 'sweep_results_full_3/model4/'

mkdir output_final/output0

python2 decode.py  --beam_width 1 --decode_batch_size 30 --model_path sweep_results_full_3/model4/translate.ckpt-1770 --max_decode_step 300 --write_n_best False --decode_input data/train.shuf.anno --decode_output output_final/output0/train

python2 decode.py  --beam_width 1 --decode_batch_size 30 --model_path sweep_results_full_3/model4/translate.ckpt-1770 --max_decode_step 300 --write_n_best False --decode_input data/dev.shuf.anno --decode_output output_final/output0/dev

python2 decode.py  --beam_width 1 --decode_batch_size 30 --model_path sweep_results_full_3/model4/translate.ckpt-1770 --max_decode_step 300 --write_n_best False --decode_input data/test.shuf.anno --decode_output output_final/output0/test

python2 train3.py --cell_type 'lstm' --attention_type 'luong' --depth 4 --hidden_units 1024 --learning_rate 0.00020 --dropout_rate 0.60 --batch_size 128 --embedding_size 500 --num_encoder_symbols 6909 --num_decoder_symbols 4617 --max_epochs 15 --display_freq 1 --model_dir 'sweep_results_full_2/model0/'

mkdir output_final/output1

python2 decode.py  --beam_width 1 --decode_batch_size 30 --model_path sweep_results_full_2/model0/translate.ckpt-1770 --max_decode_step 300 --write_n_best False --decode_input data/train.shuf.anno --decode_output output_final/output1/train

python2 decode.py  --beam_width 1 --decode_batch_size 30 --model_path sweep_results_full_2/model0/translate.ckpt-1770 --max_decode_step 300 --write_n_best False --decode_input data/dev.shuf.anno --decode_output output_final/output1/dev

python2 decode.py  --beam_width 1 --decode_batch_size 30 --model_path sweep_results_full_2/model0/translate.ckpt-1770 --max_decode_step 300 --write_n_best False --decode_input data/test.shuf.anno --decode_output output_final/output1/test

