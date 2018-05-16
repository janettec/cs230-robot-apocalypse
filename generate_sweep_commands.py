import numpy as np
from math import ceil


#Randomly sweep hyperparameters
n = 10
train_len = 1000
learning_rate_sweep = np.power(10,-4*np.random.rand(n))
depth_sweep = np.random.randint(1,9,n)
depth_sweep = np.sort(depth_sweep) #sorting in ascending order so ones that take forever to run are at the end
hidden_units_sweep = np.random.randint(25,2000,n)
dropout_rate_sweep = 0.95*np.random.rand(n) #Probably wouldn't want to use dropout higher than 0.95
#batch_size_sweep = np.power(2,np.random.randint(4,9,n)) #Commented out because we decided batch size doesn't really need to be tuned - just using default of 128
batch_size = 128
#save_freq = 5*int(ceil(train_len/batch_size)) #Want to save every 5 epochs
disp_freq = 1 #I think this is what saves the loss scalar info so I set it to 1 so we have loss information for each minibatch iteration

f = open('train_sweep.sh', 'w')
f.write('#!/bin/bash\n\n')
#f.write('bash\n\n')
#f.write('pip install --user tensorflow==1.5\n\n')

for i in range(n):
            f.write('python train.py --cell_type \'lstm\' --attention_type \'luong\' --depth %d --hidden_units %d --learning_rate %1.5f --dropout_rate %1.2f --batch_size %d --embedding_size 500 --num_encoder_symbols 30000 --num_decoder_symbols 30000 --max_epochs 5 --display_freq %d --model_dir \'model%d/\'\n\n' %(depth_sweep[i],hidden_units_sweep[i],learning_rate_sweep[i],dropout_rate_sweep[i],batch_size,disp_freq,i))
