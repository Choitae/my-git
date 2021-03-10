import sys
import re

def sent_len(file):
    with open(file,'r',encoding = 'cp949') as f:
        html = f.read()
    with open('result.txt', 'a', encoding = 'utf8') as r:
        #read가 필요 없음.
        l_h = len(html)
        text = re.sub('<.+?>', '', html, 0, re.I|re.S)
        l_t = len(text)
        nospace = re.sub('&nbsp;| |\t|\r|\n', '', text)
        l_n = len(nospace)
        print(f'new.html html = {l_h}, text = {l_t}, nospace = {l_n}')
        r.write(f'new.html html = {l_h}, text = {l_t}, nospace = {l_n}')
        r.write('\n')
if len(sys.argv) <2:
    sys.exit()    
    
f1_name = sys.argv[1] #file 1 #띄어쓰기가 공백
f2_name = sys.argv[2] #file 2

sent_len(f1_name)
sent_len(f2_name)