#!/usr/bin/env python
# coding: utf-8

# In[3]:


import re
import sys

print(sys.argv, ', 개수: ', len(sys.argv))
# print("안녕하세요 {}".format(sys.argv[1]))
 

if len(sys.argv) == 2: 
    with open('news_naver.html', encoding='cp949') as f:
        html = f.read()
        body = re.search('<body.*/body>', html, re.I|re.S) # re.S == re.DOTALL
        body = body.group()
        body = re.sub('<script.*?>.*?</script>', '', body, 0, re.I|re.S)
        text = re.sub('<.+?>', '', body, 0, re.I|re.S)
        nospace = re.sub('&nbsp;| |\t|\r|\n', '', text)
        
    with open('result.txt', 'w') as f:
        print(f'news.html html = {len(html)}, text = {len(text)}, nospace = {len(nospace)}')
        f.write(f'news.html html = {len(html)}, text = {len(text)}, nospace = {len(nospace)} \n')
        
elif len(sys.argv) == 3:
    with open('news_naver.html', encoding='cp949') as f:
        html = f.read()
        body = re.search('<body.*/body>', html, re.I|re.S) # re.S == re.DOTALL
        body = body.group()
        body = re.sub('<script.*?>.*?</script>', '', body, 0, re.I|re.S)
        text = re.sub('<.+?>', '', body, 0, re.I|re.S)
        nospace = re.sub('&nbsp;| |\t|\r|\n', '', text)
    
    with open('sports_naver.html', encoding='utf8') as f:
        html2 = f.read()
        body2 = re.search('<body.*/body>', html2, re.I|re.S) # re.S == re.DOTALL
        body2 = body2.group()
        body2 = re.sub('<script.*?>.*?</script>', '', body2, 0, re.I|re.S)
        text2 = re.sub('<.+?>', '', body2, 0, re.I|re.S)
        nospace2 = re.sub('&nbsp;| |\t|\r|\n', '', text2)
    
    with open('result.txt', 'w') as f:
        print(f'news.html html = {len(html)}, text = {len(text)}, nospace = {len(nospace)}')
        print(f'test.html html = {len(html2)}, text = {len(text2)}, nospace = {len(nospace2)}')
        f.write(f'news.html html = {len(html)}, text = {len(text)}, nospace = {len(nospace)} \n')
        f.write(f'test.html html = {len(html2)}, text = {len(text2)}, nospace = {len(nospace2)}')

sys.exit() 
    


