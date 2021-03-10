# html_count.py
import sys
import re
args = sys.argv[1:]

def main():
    for i in range args:
        with open(args[i], encoding='cp949') as f:
        html = f.read()
        text = re.sub('<.+?>', '',html, 0, re.I|re.S)
        nospace = re.sub('%nbsp;| |\t|\r|\n', '', text)
        n1 = str(len(html))
        n2 = str(len(text))
        n3 = str(len(nospace))
        f = open('result.txt', 'a')
        f.write("html : ", n1, " text : ", n2, " nospace : ", "\n")
        f.close()
        f = open('result.txt', 'r')
        result = f.read()
        f.close()
        print(result)
        
main()
