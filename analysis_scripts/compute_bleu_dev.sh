#!/bin/bash

perl multi-bleu.perl data/dev.clean.code < sweep_results_full/output0/dev_0

perl multi-bleu.perl data/dev.clean.code < sweep_results_full/output1/dev_0

perl multi-bleu.perl data/dev.clean.code < sweep_results_full/output2/dev_0

