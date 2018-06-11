#!/bin/bash

python2 train3.py --cell_type 'lstm' --attention_type 'luong' --depth 4 --hidden_units 1024 --learning_rate 0.0002 --dropout_rate 0.66 --batch_size 128 --embedding_size 500 --num_encoder_symbols 6909 --num_decoder_symbols 4617 --max_epochs 8 --display_freq 1 --model_dir 'sweep_results_full_2/curr_best_8Epochs'

mkdir sweep_results_full_2/output_curr_best_8Epochs

python2 decode.py  --beam_width 1 --decode_batch_size 30 --model_path sweep_results_full_2/curr_best_8Epochs/translate.ckpt-944 --max_decode_step 300 --write_n_best False --decode_input data/train.shuf.anno --decode_output sweep_results_full_2/output_curr_best_8Epochs/train

python2 decode.py  --beam_width 1 --decode_batch_size 30 --model_path sweep_results_full_2/curr_best_8Epochs/translate.ckpt-944 --max_decode_step 300 --write_n_best False --decode_input data/dev.shuf.anno --decode_output sweep_results_full_2/output_curr_best_8Epochs/dev

python2 train3.py --cell_type 'lstm' --attention_type 'luong' --depth 5 --hidden_units 862 --learning_rate 0.00020 --dropout_rate 0.35 --batch_size 128 --embedding_size 500 --num_encoder_symbols 6909 --num_decoder_symbols 4617 --max_epochs 8 --display_freq 1 --model_dir 'sweep_results_full_3/model0/'

mkdir sweep_results_full_3/output0

python2 decode.py  --beam_width 1 --decode_batch_size 30 --model_path sweep_results_full_3/model0/translate.ckpt-944 --max_decode_step 300 --write_n_best False --decode_input data/train.shuf.anno --decode_output sweep_results_full_3/output0/train

python2 decode.py  --beam_width 1 --decode_batch_size 30 --model_path sweep_results_full_3/model0/translate.ckpt-944 --max_decode_step 300 --write_n_best False --decode_input data/dev.shuf.anno --decode_output sweep_results_full_3/output0/dev

python2 train3.py --cell_type 'lstm' --attention_type 'luong' --depth 8 --hidden_units 556 --learning_rate 0.00020 --dropout_rate 0.81 --batch_size 128 --embedding_size 500 --num_encoder_symbols 6909 --num_decoder_symbols 4617 --max_epochs 8 --display_freq 1 --model_dir 'sweep_results_full_3/model1/'

mkdir sweep_results_full_3/output1

python2 decode.py  --beam_width 1 --decode_batch_size 30 --model_path sweep_results_full_3/model1/translate.ckpt-944 --max_decode_step 300 --write_n_best False --decode_input data/train.shuf.anno --decode_output sweep_results_full_3/output1/train

python2 decode.py  --beam_width 1 --decode_batch_size 30 --model_path sweep_results_full_3/model1/translate.ckpt-944 --max_decode_step 300 --write_n_best False --decode_input data/dev.shuf.anno --decode_output sweep_results_full_3/output1/dev

python2 train3.py --cell_type 'lstm' --attention_type 'luong' --depth 4 --hidden_units 985 --learning_rate 0.00020 --dropout_rate 0.61 --batch_size 128 --embedding_size 500 --num_encoder_symbols 6909 --num_decoder_symbols 4617 --max_epochs 8 --display_freq 1 --model_dir 'sweep_results_full_3/model2/'

mkdir sweep_results_full_3/output2

python2 decode.py  --beam_width 1 --decode_batch_size 30 --model_path sweep_results_full_3/model2/translate.ckpt-944 --max_decode_step 300 --write_n_best False --decode_input data/train.shuf.anno --decode_output sweep_results_full_3/output2/train

python2 decode.py  --beam_width 1 --decode_batch_size 30 --model_path sweep_results_full_3/model2/translate.ckpt-944 --max_decode_step 300 --write_n_best False --decode_input data/dev.shuf.anno --decode_output sweep_results_full_3/output2/dev

python2 train3.py --cell_type 'lstm' --attention_type 'luong' --depth 6 --hidden_units 469 --learning_rate 0.00020 --dropout_rate 0.11 --batch_size 128 --embedding_size 500 --num_encoder_symbols 6909 --num_decoder_symbols 4617 --max_epochs 8 --display_freq 1 --model_dir 'sweep_results_full_3/model3/'

mkdir sweep_results_full_3/output3

python2 decode.py  --beam_width 1 --decode_batch_size 30 --model_path sweep_results_full_3/model3/translate.ckpt-944 --max_decode_step 300 --write_n_best False --decode_input data/train.shuf.anno --decode_output sweep_results_full_3/output3/train

python2 decode.py  --beam_width 1 --decode_batch_size 30 --model_path sweep_results_full_3/model3/translate.ckpt-944 --max_decode_step 300 --write_n_best False --decode_input data/dev.shuf.anno --decode_output sweep_results_full_3/output3/dev

python2 train3.py --cell_type 'lstm' --attention_type 'luong' --depth 6 --hidden_units 355 --learning_rate 0.00020 --dropout_rate 0.56 --batch_size 128 --embedding_size 500 --num_encoder_symbols 6909 --num_decoder_symbols 4617 --max_epochs 8 --display_freq 1 --model_dir 'sweep_results_full_3/model4/'

mkdir sweep_results_full_3/output4

python2 decode.py  --beam_width 1 --decode_batch_size 30 --model_path sweep_results_full_3/model4/translate.ckpt-944 --max_decode_step 300 --write_n_best False --decode_input data/train.shuf.anno --decode_output sweep_results_full_3/output4/train

python2 decode.py  --beam_width 1 --decode_batch_size 30 --model_path sweep_results_full_3/model4/translate.ckpt-944 --max_decode_step 300 --write_n_best False --decode_input data/dev.shuf.anno --decode_output sweep_results_full_3/output4/dev

python2 train3.py --cell_type 'lstm' --attention_type 'luong' --depth 3 --hidden_units 648 --learning_rate 0.00020 --dropout_rate 0.65 --batch_size 128 --embedding_size 500 --num_encoder_symbols 6909 --num_decoder_symbols 4617 --max_epochs 8 --display_freq 1 --model_dir 'sweep_results_full_3/model5/'

mkdir sweep_results_full_3/output5

python2 decode.py  --beam_width 1 --decode_batch_size 30 --model_path sweep_results_full_3/model5/translate.ckpt-944 --max_decode_step 300 --write_n_best False --decode_input data/train.shuf.anno --decode_output sweep_results_full_3/output5/train

python2 decode.py  --beam_width 1 --decode_batch_size 30 --model_path sweep_results_full_3/model5/translate.ckpt-944 --max_decode_step 300 --write_n_best False --decode_input data/dev.shuf.anno --decode_output sweep_results_full_3/output5/dev

python2 train3.py --cell_type 'lstm' --attention_type 'luong' --depth 6 --hidden_units 995 --learning_rate 0.00020 --dropout_rate 0.05 --batch_size 128 --embedding_size 500 --num_encoder_symbols 6909 --num_decoder_symbols 4617 --max_epochs 8 --display_freq 1 --model_dir 'sweep_results_full_3/model6/'

mkdir sweep_results_full_3/output6

python2 decode.py  --beam_width 1 --decode_batch_size 30 --model_path sweep_results_full_3/model6/translate.ckpt-944 --max_decode_step 300 --write_n_best False --decode_input data/train.shuf.anno --decode_output sweep_results_full_3/output6/train

python2 decode.py  --beam_width 1 --decode_batch_size 30 --model_path sweep_results_full_3/model6/translate.ckpt-944 --max_decode_step 300 --write_n_best False --decode_input data/dev.shuf.anno --decode_output sweep_results_full_3/output6/dev

python2 train3.py --cell_type 'lstm' --attention_type 'luong' --depth 7 --hidden_units 626 --learning_rate 0.00020 --dropout_rate 0.90 --batch_size 128 --embedding_size 500 --num_encoder_symbols 6909 --num_decoder_symbols 4617 --max_epochs 8 --display_freq 1 --model_dir 'sweep_results_full_3/model7/'

mkdir sweep_results_full_3/output7

python2 decode.py  --beam_width 1 --decode_batch_size 30 --model_path sweep_results_full_3/model7/translate.ckpt-944 --max_decode_step 300 --write_n_best False --decode_input data/train.shuf.anno --decode_output sweep_results_full_3/output7/train

python2 decode.py  --beam_width 1 --decode_batch_size 30 --model_path sweep_results_full_3/model7/translate.ckpt-944 --max_decode_step 300 --write_n_best False --decode_input data/dev.shuf.anno --decode_output sweep_results_full_3/output7/dev

python2 train3.py --cell_type 'lstm' --attention_type 'luong' --depth 1 --hidden_units 700 --learning_rate 0.00020 --dropout_rate 0.90 --batch_size 128 --embedding_size 500 --num_encoder_symbols 6909 --num_decoder_symbols 4617 --max_epochs 8 --display_freq 1 --model_dir 'sweep_results_full_3/model8/'

mkdir sweep_results_full_3/output8

python2 decode.py  --beam_width 1 --decode_batch_size 30 --model_path sweep_results_full_3/model8/translate.ckpt-944 --max_decode_step 300 --write_n_best False --decode_input data/train.shuf.anno --decode_output sweep_results_full_3/output8/train

python2 decode.py  --beam_width 1 --decode_batch_size 30 --model_path sweep_results_full_3/model8/translate.ckpt-944 --max_decode_step 300 --write_n_best False --decode_input data/dev.shuf.anno --decode_output sweep_results_full_3/output8/dev

python2 train3.py --cell_type 'lstm' --attention_type 'luong' --depth 4 --hidden_units 502 --learning_rate 0.00020 --dropout_rate 0.08 --batch_size 128 --embedding_size 500 --num_encoder_symbols 6909 --num_decoder_symbols 4617 --max_epochs 8 --display_freq 1 --model_dir 'sweep_results_full_3/model9/'

mkdir sweep_results_full_3/output9

python2 decode.py  --beam_width 1 --decode_batch_size 30 --model_path sweep_results_full_3/model9/translate.ckpt-944 --max_decode_step 300 --write_n_best False --decode_input data/train.shuf.anno --decode_output sweep_results_full_3/output9/train

python2 decode.py  --beam_width 1 --decode_batch_size 30 --model_path sweep_results_full_3/model9/translate.ckpt-944 --max_decode_step 300 --write_n_best False --decode_input data/dev.shuf.anno --decode_output sweep_results_full_3/output9/dev

