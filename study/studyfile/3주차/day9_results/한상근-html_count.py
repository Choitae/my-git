import re
import sys

def file_to_html(file_name):
    file = open(file_name, 'r',encoding = 'utf-8')
    html = file.read()
    file.close()
    return html


def make_body(html):
    body = re.search('<body.*/body>', html, re.S|re.I)
    body = body.group()
    return body


def remove_script(body):
    script = re.sub(r'<script.*?>.*?</script>', '', body, 0, re.S|re.I)
    return script


def remove_tags(script):
    text = re.sub(r'<.*?>', '', script, 0, re.S|re.I)
    return text


def remove_space(text):
    nospace = re.sub('&nbspl| |\t|\r|\n', '', text)
    return nospace


def print_file(file_name, html, text, nospace):
    print(f'{file_name} html = {len(html)}, text = {len(text)}, nospace = {len(nospace)}')

    
def file_save(file_name, html, text, nospace):
    file = open('result.txt', 'at')
    file.write(f'{file_name} html = {len(html)}, text = {len(text)}, nospace = {len(nospace)} \n')
    file.close()
    
#시작
if len(sys.argv) != 3:
    print('Error')
    print('사용법: 파일명 1번html 2번html')
    sys.exit()

file_name1 = sys.argv[1]
file_name2 = sys.argv[2]

#html 만들기
html1 = file_to_html(file_name1)
html2 = file_to_html(file_name2)

#body 부분만 떼오기
body1 = make_body(html1)
body2 = make_body(html2)

#script 부분 자르기
script1 = remove_script(body1)
script2 = remove_script(body2)

#tag, 주석 부분 자르기
text1 = remove_tags(script1)
text2 = remove_tags(script2)

#공백부분 삭제
nospace1 = remove_space(text1)
nospace2 = remove_space(text2)

#프린트
print_file(file_name1, html1, text1, nospace1)
print_file(file_name2, html2, text2, nospace2)

#파일 저장

file_save(file_name1, html1, text1, nospace1)
file_save(file_name2, html2, text2, nospace2)
