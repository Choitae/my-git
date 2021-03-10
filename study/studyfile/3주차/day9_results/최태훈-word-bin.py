import sys

args = sys.argv[1]
result = sys.argv[2]

import re
import string

frequency = {}
document_text = open(args, 'r')
text_string = document_text.read().lower()
match_pattern = re.findall(r'\b[a-z]{3,12}\b', text_string)

for word in match_pattern:
    count = frequency.get(word,0)
    frequency[word] = count + 1
     
frequency_list = frequency.keys()
results = open(result, 'w')

for words in frequency_list:
    print(words, frequency[words])
    results.write('%s %d \n' % (words, frequency[word]))
document_text.close()
results.close()