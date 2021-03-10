import sys

option = sys.argv[1]

if option == '-w' : #x는 파일 자체를 새로 만드는 것, w는 파일 내용을 지우고 만드는 것 #a는 추가하기.
    memo = sys.argv[2] ## 입력하기
    f = open('memo.txt', 'w') 
    f.write(memo)
    f.write('\n')
    f.close()
    
elif option == '-v':
    f = open('memo.txt')
    memo = f.read()
    f.close()
    print(memo)
