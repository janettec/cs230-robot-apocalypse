#!/bin/bash

#python2 train_attn_vis.py --cell_type 'lstm' --attention_type 'luong' --depth 4 --hidden_units 1024 --learning_rate 0.0002 --dropout_rate 0.66 --batch_size 128 --embedding_size 500 --num_encoder_symbols 6909 --num_decoder_symbols 4617 --max_epochs 15 --display_freq 1 --model_dir 'full_useShuf_attnVis/'

#python2 train3.py --cell_type 'lstm' --attention_type 'luong' --depth 4 --hidden_units 1024 --learning_rate 0.00020 --dropout_rate 0.60 --batch_size 128 --embedding_size 500 --num_encoder_symbols 6909 --num_decoder_symbols 4617 --max_epochs 8 --display_freq 1 --model_dir 'sweep_results_full_2/model0/'

#python2 train3.py --cell_type 'lstm' --attention_type 'luong' --depth 5 --hidden_units 1024 --learning_rate 0.00020 --dropout_rate 0.81 --batch_size 128 --embedding_size 500 --num_encoder_symbols 6909 --num_decoder_symbols 4617 --max_epochs 8 --display_freq 1 --model_dir 'sweep_results_full_2/model1/'

#python2 train3.py --cell_type 'lstm' --attention_type 'luong' --depth 6 --hidden_units 1024 --learning_rate 0.00020 --dropout_rate 0.27 --batch_size 128 --embedding_size 500 --num_encoder_symbols 6909 --num_decoder_symbols 4617 --max_epochs 8 --display_freq 1 --model_dir 'sweep_results_full_2/model2/'

python2 decode_attn_vis.py --beam_width 1 --decode_batch_size 1 --model_path full_useShuf_attnVis/translate.ckpt-1785 --max_decode_step 300 --write_n_best False --decode_input data/train.shuf.anno --decode_output output_full_useShuf_attnVis/train


python2 decode_attn_vis.py --beam_width 1 --decode_batch_size 1 --model_path full_useShuf_attnVis/translate.ckpt-1785 --max_decode_step 300 --write_n_best False --decode_input data/dev.shuf.anno --decode_output output_full_useShuf_attnVis/dev

mkdir sweep_results_full_2/output0

python2 decode.py  --beam_width 5 --decode_batch_size 30 --model_path sweep_results_full_2/model0/translate.ckpt-944 --max_decode_step 300 --write_n_best False --decode_input data/train.shuf.anno --decode_output sweep_results_full_2/output0/train 



python2 train3.py --cell_type 'lstm' --attention_type 'luong' --depth 6 --hidden_units 1024 --learning_rate 0.00020 --dropout_rate 0.20 --batch_size 128 --embedding_size 500 --num_encoder_symbols 6909 --num_decoder_symbols 4617 --max_epochs 8 --display_freq 1 --model_dir 'sweep_results_full_2/model3/'

python2 train3.py --cell_type 'lstm' --attention_type 'luong' --depth 1 --hidden_units 1024 --learning_rate 0.00020 --dropout_rate 0.31 --batch_size 128 --embedding_size 500 --num_encoder_symbols 6909 --num_decoder_symbols 4617 --max_epochs 8 --display_freq 1 --model_dir 'sweep_results_full_2/model4/'

python2 train3.py --cell_type 'lstm' --attention_type 'luong' --depth 5 --hidden_units 1024 --learning_rate 0.00020 --dropout_rate 0.56 --batch_size 128 --embedding_size 500 --num_encoder_symbols 6909 --num_decoder_symbols 4617 --max_epochs 8 --display_freq 1 --model_dir 'sweep_results_full_2/model5/'

python2 train3.py --cell_type 'lstm' --attention_type 'luong' --depth 1 --hidden_units 1024 --learning_rate 0.00020 --dropout_rate 0.04 --batch_size 128 --embedding_size 500 --num_encoder_symbols 6909 --num_decoder_symbols 4617 --max_epochs 8 --display_freq 1 --model_dir 'sweep_results_full_2/model6/'

python2 train3.py --cell_type 'lstm' --attention_type 'luong' --depth 7 --hidden_units 1024 --learning_rate 0.00020 --dropout_rate 0.92 --batch_size 128 --embedding_size 500 --num_encoder_symbols 6909 --num_decoder_symbols 4617 --max_epochs 8 --display_freq 1 --model_dir 'sweep_results_full_2/model7/'

python2 train3.py --cell_type 'lstm' --attention_type 'luong' --depth 3 --hidden_units 1024 --learning_rate 0.00020 --dropout_rate 0.78 --batch_size 128 --embedding_size 500 --num_encoder_symbols 6909 --num_decoder_symbols 4617 --max_epochs 8 --display_freq 1 --model_dir 'sweep_results_full_2/model8/'

python2 train3.py --cell_type 'lstm' --attention_type 'luong' --depth 7 --hidden_units 1024 --learning_rate 0.00020 --dropout_rate 0.58 --batch_size 128 --embedding_size 500 --num_encoder_symbols 6909 --num_decoder_symbols 4617 --max_epochs 8 --display_freq 1 --model_dir 'sweep_results_full_2/model9/'

