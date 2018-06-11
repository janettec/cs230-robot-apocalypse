#!/bin/bash


python2 decode_plot_attn.py --beam_width 1 --decode_batch_size 1 --model_path full_useShuf_attnVis/translate.ckpt-1770 --max_decode_step 300 --write_n_best False --decode_input output_full_useShuf_attnVis/train.good.anno --decode_output output_full_useShuf_attnVis/attn_vis_plots/good
