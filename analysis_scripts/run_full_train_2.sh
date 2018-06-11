#!/bin/bash


python2 train3.py --cell_type 'lstm' --attention_type 'luong' --depth 4 --hidden_units 1024 --learning_rate 0.0002 --dropout_rate 0.66 --batch_size 128 --embedding_size 500 --num_encoder_symbols 6909 --num_decoder_symbols 4617 --max_epochs 15 --display_freq 1 --model_dir 'full_useShuf/'

python2 train3.py --cell_type 'lstm' --attention_type 'luong' --depth 8 --hidden_units 486 --learning_rate 0.00096 --dropout_rate 0.66 --batch_size 128 --embedding_size 500 --num_encoder_symbols 6909 --num_decoder_symbols 4617 --max_epochs 15 --display_freq 1 --model_dir 'full_useShuf_bp/'
