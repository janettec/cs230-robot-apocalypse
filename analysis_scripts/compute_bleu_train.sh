#!/bin/bash

perl multi-bleu.perl data/train.clean.code < sweep_results_full/output0/train_0

perl multi-bleu.perl data/train.clean.code < sweep_results_full/output1/train_0

perl multi-bleu.perl data/train.clean.code < sweep_results_full/output2/train_0

