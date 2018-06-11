#!/bin/bash


#python2 train3.py --cell_type 'lstm' --attention_type 'luong' --depth 4 --hidden_units 1024 --learning_rate 0.00020 --dropout_rate 0.66 --batch_size 128 --embedding_size 500 --num_encoder_symbols 6909 --num_decoder_symbols 4617 --max_epochs 20 --display_freq 1 --model_dir 'full_useShuf/'


python2 decode.py  --beam_width 1 --decode_batch_size 30 --model_path full_useShuf/translate.ckpt-2360 --max_decode_step 300 --write_n_best False --decode_input data/train.shuf.anno --decode_output output_full_useShuf/train2


python2 decode.py  --beam_width 1 --decode_batch_size 30 --model_path full_useShuf/translate.ckpt-2360 --max_decode_step 300 --write_n_best False --decode_input data/dev.shuf.anno --decode_output output_full_useShuf/dev2


python2 decode.py  --beam_width 1 --decode_batch_size 30 --model_path full_useShuf/translate.ckpt-2360 --max_decode_step 300 --write_n_best False --decode_input data/test.shuf.anno --decode_output output_full_useShuf/test2

#python2 decode.py  --beam_width 1 --decode_batch_size 30 --model_path full_3/translate.ckpt-2360 --max_decode_step 300 --write_n_best False --decode_input data/dev.shuf.anno --decode_output output_full_3/dev

#python2 decode.py  --beam_width 1 --decode_batch_size 30 --model_path full_3/translate.ckpt-2360 --max_decode_step 300 --write_n_best False --decode_input data/test.shuf.anno --decode_output output_full_3/test
