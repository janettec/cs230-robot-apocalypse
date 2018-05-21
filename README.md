# cs230-robot-apocalypse

Preprocessing: 
Generate python syntax corpus
Generate annotation corpus
Split data to train/dev

To train:
```ruby
python train.py   --cell_type 'lstm' \ 
                    --attention_type 'luong' \
                    --hidden_units 1024 \
                    --depth 2 \
                    --embedding_size 500 \
                    --num_encoder_symbols 30000 \
                    --num_decoder_symbols 30000 ...
                    
```

To decode: 
```ruby
python decode.py  --beam_width 5 \
                    --decode_batch_size 30 \
                    --model_path $PATH_TO_A_MODEL_CHECKPOINT (e.g. model/translate.ckpt-100) \
                    --max_decode_step 300 \
                    --write_n_best False
                    --decode_input $PATH_TO_DECODE_INPUT
                    --decode_output $PATH_TO_DECODE_OUTPUT
                    
```

BLEU score calculation: 
```perl
perl multi-bleu.perl data/dev.code < output$MODEL_NUM_dev/output_train_$BEAM_WIDTH
```
