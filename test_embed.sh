#!/bin/bash

python2 train3.py --cell_type 'lstm' --attention_type 'luong' --depth 4 --hidden_units 1024 --learning_rate 0.00020 --dropout_rate 0.66 --batch_size 128 --embedding_size 200 --num_encoder_symbols 6909 --num_decoder_symbols 4617 --max_epochs 15 --display_freq 1 --model_dir 'full_useShuf_embed200/'

python2 decode.py  --beam_width 1 --decode_batch_size 30 --model_path full_useShuf_embed200/translate.ckpt-1770 --max_decode_step 300 --write_n_best False --decode_input data/train.shuf.anno --decode_output output_full_useShuf/train_embed200


python2 decode.py  --beam_width 1 --decode_batch_size 30 --model_path full_useShuf_embed200/translate.ckpt-1770 --max_decode_step 300 --write_n_best False --decode_input data/dev.shuf.anno --decode_output output_full_useShuf/dev_embed200

python2 decode.py  --beam_width 1 --decode_batch_size 30 --model_path full_useShuf_embed200/translate.ckpt-1770 --max_decode_step 300 --write_n_best False --decode_input data/test.shuf.anno --decode_output output_full_useShuf/test_embed200
