import numpy as np 

# samples = np.random.choice(18805, 1100, replace=False)

anno_train = []
code_train = []
anno_dev = []
code_dev = []
with open('all.anno') as anno_file:
	i = 0
	for line in anno_file:
		if i < 1000:
			anno_train.append(line)
		elif i >= 1000 and i < 1100:
			anno_dev.append(line)
		else:
			break
		i += 1
with open('all.code') as code_file:
	i = 0
	for line in code_file:
		if i < 1000:
			code_train.append(line)
		elif i >= 1000 and i < 1100:
			code_dev.append(line)
		else:
			break
		i += 1

assert len(anno_train) == len(code_train)
assert len(anno_dev) == len(code_dev)

anno_train = np.asarray(anno_train)
code_train = np.asarray(code_train)
anno_dev = np.asarray(anno_dev)
code_dev = np.asarray(code_dev)

train_perm = np.random.permutation(len(anno_train))
dev_perm = np.random.permutation(len(anno_dev))

anno_train = anno_train[train_perm]
code_train = code_train[train_perm]
anno_dev = anno_dev[dev_perm]
code_dev = code_dev[dev_perm]

with open('train.anno', 'w+') as anno_train_file:
	for line in anno_train:
		anno_train_file.write(line)
	anno_train_file.close()

with open('train.code', 'w+') as code_train_file:
	for line in code_train:
		code_train_file.write(line)
	code_train_file.close()

with open('dev.anno', 'w+') as anno_dev_file:
	for line in anno_dev:
		anno_dev_file.write(line)
	anno_dev_file.close()

with open('dev.code', 'w+') as code_dev_file:
	for line in code_dev:
		code_dev_file.write(line)
	code_dev_file.close()



