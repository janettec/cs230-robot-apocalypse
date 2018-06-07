
n = 10 # num models

f = open('print_bleu_scores.sh', 'w')
f.write('#!/bin/bash\n\n')

for i in range(n):
    f.write('echo model %d train\n\n' % (i))
    f.write('perl ./multi-bleu.perl data/train.code < output%d_train/output_train_0\n\n' % (i))
    f.write('perl ./multi-bleu.perl data/train.code < output%d_train/output_train_1\n\n' % (i))
    f.write('perl ./multi-bleu.perl data/train.code < output%d_train/output_train_2\n\n' % (i))
    f.write('perl ./multi-bleu.perl data/train.code < output%d_train/output_train_3\n\n' % (i))
    f.write('perl ./multi-bleu.perl data/train.code < output%d_train/output_train_4\n\n' % (i))

for i in range(n):
    f.write('echo model %d dev\n\n' % (i))
    f.write('perl ./multi-bleu.perl data/dev.code < output%d_dev/output_dev_0\n\n' % (i))
    f.write('perl ./multi-bleu.perl data/dev.code < output%d_dev/output_dev_1\n\n' % (i))
    f.write('perl ./multi-bleu.perl data/dev.code < output%d_dev/output_dev_2\n\n' % (i))
    f.write('perl ./multi-bleu.perl data/dev.code < output%d_dev/output_dev_3\n\n' % (i))
    f.write('perl ./multi-bleu.perl data/dev.code < output%d_dev/output_dev_4\n\n' % (i))
