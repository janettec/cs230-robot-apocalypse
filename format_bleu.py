import numpy as np
import re

regex = r"BLEU = ([0-9]*\.[0-9]*),"
train = np.zeros((20,5))
dev = np.zeros((20,5))
section = 6
isDev = False
model = 0
beam = 0
with open('bleu.txt') as f:
	for line in f:
		if not isDev:
			train[model % 20][beam % 5] = re.search(regex, line).group(1)
		else:
			dev[model % 20][beam % 5] = re.search(regex, line).group(1)
		beam += 1
		if beam > 99:
			isDev = True
		if beam % 5 == 0:
			model += 1

with open('train.csv', 'w+') as f:
	for i in range(20):
		f.write(",".join(map(str, train[i].tolist())) + '\n')

with open('dev.csv', 'w+') as f:
	for i in range(20):
		f.write(",".join(map(str, dev[i].tolist())) + '\n')
