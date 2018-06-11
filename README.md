# cs230-robot-apocalypse

## Preprocessing: 
- Generate python code corpus
- Generate annotation corpus
- Shuffle data
- Split data to train/dev

## Running: 
A shell script for hyperparameter tuning was generated using generate_sweep_commands.py. The data used for the coarse sweep can be found in split_data.

To train manually:
```ruby
python train.py   --cell_type 'lstm' \ 
                    --attention_type 'luong' \
                    --hidden_units 1024 \
                    --depth 2 \
                    --embedding_size 500 \
                    --num_encoder_symbols 30000 \
                    --num_decoder_symbols 30000 ...
                    
```

To decode manually: 
```ruby
python decode.py  --beam_width 5 \
                    --decode_batch_size 30 \
                    --model_path $PATH_TO_A_MODEL_CHECKPOINT (e.g. model/translate.ckpt-100) \
                    --max_decode_step 300 \
                    --write_n_best False
                    --decode_input $PATH_TO_DECODE_INPUT
                    --decode_output $PATH_TO_DECODE_OUTPUT
                    
```
Seq2seq model modified from JayParks (https://github.com/JayParks/tf-seq2seq)

BLEU score calculation: 
```perl
perl multi-bleu-detok.perl data/dev.code < output$MODEL_NUM_dev/output_train_$BEAM_WIDTH
```
