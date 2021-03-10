import re
import sys

def finding_word_number(text):
    words = re.findall(r'[a-zA-Z]+', text)
    dict_words = {}

    for word in words:
        if word in dict_words.keys():
            dict_words[word] += 1
        else:
            dict_words.update({word:1})
    total = 0
    for key, word_num in dict_words.items():
        print(key, ':', word_num)
        total += word_num
    print('total :', total)

if len(sys.argv) != 2:
    print('Error')
    print('사용법: 실행파일명 텍스트파일명')
    sys.exit()
    
file = open(sys.argv[1], 'r')
text = file.read()
file.close()

finding_word_number(text)