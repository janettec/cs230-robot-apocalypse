#!/bin/bash


mkdir sweep_results_full/output0

python2 decode.py --beam_width 5 --decode_batch_size 30 --model_path sweep_results_full/model0/translate.ckpt-1770 --max_decode_step 300 --write_n_best False --decode_input data/train.clean.anno --decode_output sweep_results_full/output0/train


python2 decode.py --beam_width 5 --decode_batch_size 30 --model_path sweep_results_full/model0/translate.ckpt-1770 --max_decode_step 300 --write_n_best False --decode_input data/dev.clean.anno --decode_output sweep_results_full/output0/dev


mkdir sweep_results_full/output1

python2 decode.py --beam_width 5 --decode_batch_size 30 --model_path sweep_results_full/model1/translate.ckpt-1770 --max_decode_step 300 --write_n_best False --decode_input data/train.clean.anno --decode_output sweep_results_full/output1/train


python2 decode.py --beam_width 5 --decode_batch_size 30 --model_path sweep_results_full/model1/translate.ckpt-1770 --max_decode_step 300 --write_n_best False --decode_input data/dev.clean.anno --decode_output sweep_results_full/output1/dev


mkdir sweep_results_full/output2

python2 decode.py --beam_width 5 --decode_batch_size 30 --model_path sweep_results_full/model2/translate.ckpt-1770 --max_decode_step 300 --write_n_best False --decode_input data/train.clean.anno --decode_output sweep_results_full/output2/train


python2 decode.py --beam_width 5 --decode_batch_size 30 --model_path sweep_results_full/model2/translate.ckpt-1770 --max_decode_step 300 --write_n_best False --decode_input data/dev.clean.anno --decode_output sweep_results_full/output2/dev
