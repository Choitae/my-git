import re
with open('sentence.txt','r',encoding='utf8') as r:
    book = r.read()
with open('result.txt', 'a', encoding = 'utf8') as f:
    w_d = ""
    word = re.findall(r"\w+", book)
    for i in word :
        cnt = 0
        for j in word:
            if i == j:
                cnt += 1
                word.remove(j)
        w_d += (f'{i} : {cnt} / ')
    f.write(w_d)
    f.write('\n')
            