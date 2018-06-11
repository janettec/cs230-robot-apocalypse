#!/bin/bash


python2 train3_noPre.py --cell_type 'lstm' --attention_type 'luong' --depth 4 --hidden_units 1024 --learning_rate 0.0002 --dropout_rate 0.66 --batch_size 128 --embedding_size 500 --num_encoder_symbols 16252 --num_decoder_symbols 9566 --max_epochs 8 --display_freq 1 --model_dir 'model_noPre/'


python2 train3_norm.py --cell_type 'lstm' --attention_type 'luong' --depth 4 --hidden_units 1024 --learning_rate 0.0002 --dropout_rate 0.66 --batch_size 128 --embedding_size 500 --num_encoder_symbols 16331 --num_decoder_symbols 14922 --max_epochs 8 --display_freq 1 --model_dir 'model_norm/'


python2 train3_tok.py --cell_type 'lstm' --attention_type 'luong' --depth 4 --hidden_units 1024 --learning_rate 0.0002 --dropout_rate 0.66 --batch_size 128 --embedding_size 500 --num_encoder_symbols 7500 --num_decoder_symbols 4843 --max_epochs 8 --display_freq 1 --model_dir 'model_tok/'

python2 train3_bpe.py --cell_type 'lstm' --attention_type 'luong' --depth 4 --hidden_units 1024 --learning_rate 0.0002 --dropout_rate 0.66 --batch_size 128 --embedding_size 500 --num_encoder_symbols 6911 --num_decoder_symbols 4617 --max_epochs 8 --display_freq 1 --model_dir 'model_bpe/'
