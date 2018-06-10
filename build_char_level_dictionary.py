#!/usr/bin/env python

import numpy
import json

import sys
import fileinput

from collections import OrderedDict
from data_utils  import extra_tokens

def main():
    for filename in sys.argv[1:]:
        print 'Processing', filename
        word_freqs = OrderedDict()
        num_lines = 0
        with open(filename, 'r') as f:
            for line in f:
                num_lines += 1
                chars_in = set(line.strip())
                words_in = line.strip().split(' ')
                for w in chars_in:
                    if w not in word_freqs:
                        word_freqs[w] = 0
                    word_freqs[w] += line.count(w)
        for ww in extra_tokens:
            word_freqs[ww] = num_lines
        words = word_freqs.keys()
        freqs = word_freqs.values()

        sorted_idx = numpy.argsort(freqs)
        sorted_words = [words[ii] for ii in sorted_idx[::-1]]

        worddict = OrderedDict()
        for ii, ww in enumerate(extra_tokens):
            print ii
            worddict[ww] = ii
        post_tokens = False
        for ii, ww in enumerate(sorted_words):
            if (ww in extra_tokens):
                post_tokens = True
            if (ww not in extra_tokens):
                worddict[ww] = ii + (len(extra_tokens) if not post_tokens else 0)

        with open('%s.json'%filename, 'wb') as f:
            json.dump(worddict, f, indent=2, ensure_ascii=False)

        word_freq_dump = OrderedDict()
        for word in worddict.keys():
            word_freq_dump[word] = word_freqs[word]

	with open('%s.freqs.json'%filename, 'wb') as f:
            json.dump(word_freq_dump, f, indent=2, ensure_ascii=False)

	weights = OrderedDict()        
        for word in word_freqs:
            word_freqs[word] = 1.0 / float(word_freqs[word])
        total = float(sum(word_freqs.values()))
        for i, word in enumerate(worddict.keys()):
            weights[word] = word_freqs[word] / total
        with open('%s.weights.json'%filename, 'wb') as f:
            json.dump(weights, f, indent=2, ensure_ascii=False)
        print 'Done'
        print weights.values()
if __name__ == '__main__':
    main()
