#!/bin/bash

echo model 0

perl ./multi-bleu-detok.perl data/train.shuf.code < sweep_results_full_2/output0/train_0

perl ./multi-bleu-detok.perl data/dev.shuf.code < sweep_results_full_2/output0/dev_0

echo model 1

perl ./multi-bleu-detok.perl data/train.shuf.code < sweep_results_full_2/output1/train_0

perl ./multi-bleu-detok.perl data/dev.shuf.code < sweep_results_full_2/output1/dev_0

echo model 2

perl ./multi-bleu-detok.perl data/train.shuf.code < sweep_results_full_2/output2/train_0

perl ./multi-bleu-detok.perl data/dev.shuf.code < sweep_results_full_2/output2/dev_0

echo model 3

perl ./multi-bleu-detok.perl data/train.shuf.code < sweep_results_full_2/output3/train_0

perl ./multi-bleu-detok.perl data/dev.shuf.code < sweep_results_full_2/output3/dev_0

echo model 4

perl ./multi-bleu-detok.perl data/train.shuf.code < sweep_results_full_2/output4/train_0

perl ./multi-bleu-detok.perl data/dev.shuf.code < sweep_results_full_2/output4/dev_0

echo model 5

perl ./multi-bleu-detok.perl data/train.shuf.code < sweep_results_full_2/output5/train_0

perl ./multi-bleu-detok.perl data/dev.shuf.code < sweep_results_full_2/output5/dev_0

echo model 6

perl ./multi-bleu-detok.perl data/train.shuf.code < sweep_results_full_2/output6/train_0

perl ./multi-bleu-detok.perl data/dev.shuf.code < sweep_results_full_2/output6/dev_0

echo model 7

perl ./multi-bleu-detok.perl data/train.shuf.code < sweep_results_full_2/output7/train_0

perl ./multi-bleu-detok.perl data/dev.shuf.code < sweep_results_full_2/output7/dev_0

