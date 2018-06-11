#!/bin/bash

mkdir sweep_results_fixedLR/output0

python2 decode.py  --beam_width 5 --decode_batch_size 30 --model_path sweep_results_fixedLR/model0/translate.ckpt-64 --max_decode_step 300 --write_n_best False --decode_input data/train_small.clean.anno --decode_output sweep_results_fixedLR/output0/train

mkdir sweep_results_fixedLR/output1

python2 decode.py  --beam_width 5 --decode_batch_size 30 --model_path sweep_results_fixedLR/model1/translate.ckpt-64 --max_decode_step 300 --write_n_best False --decode_input data/train_small.clean.anno --decode_output sweep_results_fixedLR/output1/train

mkdir sweep_results_fixedLR/output2

python2 decode.py  --beam_width 5 --decode_batch_size 30 --model_path sweep_results_fixedLR/model2/translate.ckpt-64 --max_decode_step 300 --write_n_best False --decode_input data/train_small.clean.anno --decode_output sweep_results_fixedLR/output2/train

mkdir sweep_results_fixedLR/output3

python2 decode.py  --beam_width 5 --decode_batch_size 30 --model_path sweep_results_fixedLR/model3/translate.ckpt-64 --max_decode_step 300 --write_n_best False --decode_input data/train_small.clean.anno --decode_output sweep_results_fixedLR/output3/train

mkdir sweep_results_fixedLR/output4

python2 decode.py  --beam_width 5 --decode_batch_size 30 --model_path sweep_results_fixedLR/model4/translate.ckpt-64 --max_decode_step 300 --write_n_best False --decode_input data/train_small.clean.anno --decode_output sweep_results_fixedLR/output4/train

mkdir sweep_results_fixedLR/output5

python2 decode.py  --beam_width 5 --decode_batch_size 30 --model_path sweep_results_fixedLR/model5/translate.ckpt-64 --max_decode_step 300 --write_n_best False --decode_input data/train_small.clean.anno --decode_output sweep_results_fixedLR/output5/train

mkdir sweep_results_fixedLR/output6

python2 decode.py  --beam_width 5 --decode_batch_size 30 --model_path sweep_results_fixedLR/model6/translate.ckpt-64 --max_decode_step 300 --write_n_best False --decode_input data/train_small.clean.anno --decode_output sweep_results_fixedLR/output6/train

mkdir sweep_results_fixedLR/output7

python2 decode.py  --beam_width 5 --decode_batch_size 30 --model_path sweep_results_fixedLR/model7/translate.ckpt-64 --max_decode_step 300 --write_n_best False --decode_input data/train_small.clean.anno --decode_output sweep_results_fixedLR/output7/train

mkdir sweep_results_fixedLR/output8

python2 decode.py  --beam_width 5 --decode_batch_size 30 --model_path sweep_results_fixedLR/model8/translate.ckpt-64 --max_decode_step 300 --write_n_best False --decode_input data/train_small.clean.anno --decode_output sweep_results_fixedLR/output8/train

mkdir sweep_results_fixedLR/output9

python2 decode.py  --beam_width 5 --decode_batch_size 30 --model_path sweep_results_fixedLR/model9/translate.ckpt-64 --max_decode_step 300 --write_n_best False --decode_input data/train_small.clean.anno --decode_output sweep_results_fixedLR/output9/train

mkdir sweep_results_fixedLR/output10

python2 decode.py  --beam_width 5 --decode_batch_size 30 --model_path sweep_results_fixedLR/model10/translate.ckpt-64 --max_decode_step 300 --write_n_best False --decode_input data/train_small.clean.anno --decode_output sweep_results_fixedLR/output10/train

mkdir sweep_results_fixedLR/output11

python2 decode.py  --beam_width 5 --decode_batch_size 30 --model_path sweep_results_fixedLR/model11/translate.ckpt-64 --max_decode_step 300 --write_n_best False --decode_input data/train_small.clean.anno --decode_output sweep_results_fixedLR/output11/train

mkdir sweep_results_fixedLR/output12

python2 decode.py  --beam_width 5 --decode_batch_size 30 --model_path sweep_results_fixedLR/model12/translate.ckpt-64 --max_decode_step 300 --write_n_best False --decode_input data/train_small.clean.anno --decode_output sweep_results_fixedLR/output12/train

mkdir sweep_results_fixedLR/output0

python2 decode.py  --beam_width 5 --decode_batch_size 30 --model_path sweep_results_fixedLR/model0/translate.ckpt-64 --max_decode_step 300 --write_n_best False --decode_input data/dev_small.clean.anno --decode_output sweep_results_fixedLR/output0/dev

mkdir sweep_results_fixedLR/output1

python2 decode.py  --beam_width 5 --decode_batch_size 30 --model_path sweep_results_fixedLR/model1/translate.ckpt-64 --max_decode_step 300 --write_n_best False --decode_input data/dev_small.clean.anno --decode_output sweep_results_fixedLR/output1/dev

mkdir sweep_results_fixedLR/output2

python2 decode.py  --beam_width 5 --decode_batch_size 30 --model_path sweep_results_fixedLR/model2/translate.ckpt-64 --max_decode_step 300 --write_n_best False --decode_input data/dev_small.clean.anno --decode_output sweep_results_fixedLR/output2/dev

mkdir sweep_results_fixedLR/output3

python2 decode.py  --beam_width 5 --decode_batch_size 30 --model_path sweep_results_fixedLR/model3/translate.ckpt-64 --max_decode_step 300 --write_n_best False --decode_input data/dev_small.clean.anno --decode_output sweep_results_fixedLR/output3/dev

mkdir sweep_results_fixedLR/output4

python2 decode.py  --beam_width 5 --decode_batch_size 30 --model_path sweep_results_fixedLR/model4/translate.ckpt-64 --max_decode_step 300 --write_n_best False --decode_input data/dev_small.clean.anno --decode_output sweep_results_fixedLR/output4/dev

mkdir sweep_results_fixedLR/output5

python2 decode.py  --beam_width 5 --decode_batch_size 30 --model_path sweep_results_fixedLR/model5/translate.ckpt-64 --max_decode_step 300 --write_n_best False --decode_input data/dev_small.clean.anno --decode_output sweep_results_fixedLR/output5/dev

mkdir sweep_results_fixedLR/output6

python2 decode.py  --beam_width 5 --decode_batch_size 30 --model_path sweep_results_fixedLR/model6/translate.ckpt-64 --max_decode_step 300 --write_n_best False --decode_input data/dev_small.clean.anno --decode_output sweep_results_fixedLR/output6/dev

mkdir sweep_results_fixedLR/output7

python2 decode.py  --beam_width 5 --decode_batch_size 30 --model_path sweep_results_fixedLR/model7/translate.ckpt-64 --max_decode_step 300 --write_n_best False --decode_input data/dev_small.clean.anno --decode_output sweep_results_fixedLR/output7/dev

mkdir sweep_results_fixedLR/output8

python2 decode.py  --beam_width 5 --decode_batch_size 30 --model_path sweep_results_fixedLR/model8/translate.ckpt-64 --max_decode_step 300 --write_n_best False --decode_input data/dev_small.clean.anno --decode_output sweep_results_fixedLR/output8/dev

mkdir sweep_results_fixedLR/output9

python2 decode.py  --beam_width 5 --decode_batch_size 30 --model_path sweep_results_fixedLR/model9/translate.ckpt-64 --max_decode_step 300 --write_n_best False --decode_input data/dev_small.clean.anno --decode_output sweep_results_fixedLR/output9/dev

mkdir sweep_results_fixedLR/output10

python2 decode.py  --beam_width 5 --decode_batch_size 30 --model_path sweep_results_fixedLR/model10/translate.ckpt-64 --max_decode_step 300 --write_n_best False --decode_input data/dev_small.clean.anno --decode_output sweep_results_fixedLR/output10/dev

mkdir sweep_results_fixedLR/output11

python2 decode.py  --beam_width 5 --decode_batch_size 30 --model_path sweep_results_fixedLR/model11/translate.ckpt-64 --max_decode_step 300 --write_n_best False --decode_input data/dev_small.clean.anno --decode_output sweep_results_fixedLR/output11/dev

mkdir sweep_results_fixedLR/output12

python2 decode.py  --beam_width 5 --decode_batch_size 30 --model_path sweep_results_fixedLR/model12/translate.ckpt-64 --max_decode_step 300 --write_n_best False --decode_input data/dev_small.clean.anno --decode_output sweep_results_fixedLR/output12/dev

