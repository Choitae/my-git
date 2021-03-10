# html_count.py
import sys
import re


with open(sys.argv[1], encoding='cp949') as f:
    html = f.read()
    text = re.sub('<.+?>', '',html, 0, re.I|re.S)
    nospace = re.sub('%nbsp;| |\t|\r|\n', '', text)

n1 = str(len(html))
n2 = str(len(text))
n3 = str(len(nospace))

f = open('result.txt', 'a')
f.write("html : ")
f.write(n1)
f.write(' text : ')
f.write(n2)
f.write(' nospace : ')   
f.write(n3)
f.write(\n)
f.close()
f = open('result.txt', 'r')
result = f.read()
f.close()
print(result)
