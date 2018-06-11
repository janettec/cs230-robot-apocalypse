#!/bin/bash


python2 train3.py --cell_type 'lstm' --attention_type 'luong' --depth 7 --hidden_units 1024 --learning_rate 0.0002 --dropout_rate 0.91 --batch_size 128 --embedding_size 500 --num_encoder_symbols 6911 --num_decoder_symbols 4617 --max_epochs 15 --display_freq 1 --model_dir 'sweep_results_full/model0/'


python2 train3.py --cell_type 'lstm' --attention_type 'luong' --depth 2 --hidden_units 1024 --learning_rate 0.0002 --dropout_rate 0.90 --batch_size 128 --embedding_size 500 --num_encoder_symbols 6911 --num_decoder_symbols 4617 --max_epochs 15 --display_freq 1 --model_dir 'sweep_results_full/model1/'

python2 train3.py --cell_type 'lstm' --attention_type 'luong' --depth 5 --hidden_units 1024 --learning_rate 0.0002 --dropout_rate 0.89 --batch_size 128 --embedding_size 500 --num_encoder_symbols 6911 --num_decoder_symbols 4617 --max_epochs 15 --display_freq 1 --model_dir 'sweep_results_full/model2/'
