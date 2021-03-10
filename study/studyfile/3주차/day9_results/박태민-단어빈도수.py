# html_count.py
import sys
import re
args = sys.argv[1:]

def main():
    for i in args:
        with open(i, encoding='cp949') as f:
            sample = f.read()
            wordList = re.findall(r'\b[A-Za-z]+\b', sample)
            wordCount = {}
            for word in wordList:
                wordCount[word] = wordCount.get(word, 0) + 1  
                keys = wordCount.keys()
            sum = 0
            f = open('result2.txt', 'a')
            for word in keys:
                f.write(word + ':' + str(wordCount[word])) 
                f.write("\n")
                sum += wordCount[word]
            f.write(f'total words : {sum}')
            f.write("\n")
            f.close()
        f = open('result2.txt', 'r')
        result2 = f.read()
        f.close()
        print(result2)

main()
