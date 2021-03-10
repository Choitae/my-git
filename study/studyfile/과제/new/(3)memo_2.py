import re
import sys
class button : 
    def __init__(self, _equip):
        self.equip = _equip
    def power_(self):
        self.equip.power_push()
    def up_push(self):
        self.equip.up_push()
    def down_push(self):
        self.equip.down_push()
    
class Student :
    def __init__(self) : 
        global dic_p
        self.ans = True
        
    def search_inf(self) :
        while (self.ans) : 
            
            choise = int(input("1. 검색 선택 (1 번호, 2 이름, 3 이전): ______"))
            menu[choise]
        
    def change_f(self):
        self.ans = False
        return self.ans
        
    def search_name(self) :
        name = input("이름")
        for i in dic_p:
            for j in dic_p[i]:
                if j == name:
                    print(f'{i} : {dic_p[i][0]},{dic_p[i][1]}세,{dic_p[i][2]} ')
                    
    def search_number(self):
        num = int(input("번호 : "))
        print(f'{num} : {dic_p[num][0]},{dic_p[num][1]}세,{dic_p[num][2]} ')
    
    def write_inf(self):
        name = input("1. 이름 : ")
        m_list = []
        length = len(dic_p)+1
        age = int(input("2. 나이 :"))
        sub = input("3. 전공 : ")
        ph = int(input("4. 전화번호 : "))
        h = input("5. 주소 : ")
        m_list = [name, age, sub, ph, h]
        dic_p.update({length : m_list})
        print(f'{name}이 입력되었습니다.')
        return dic_p


    
class File_sr :
    def __init__(self, f):
        self.file = f
    
    def save_f(self, memo) :
        with open(self.file, 'a', encoding='utf8') as f:
            pickle.dump(memo, f)
            f.close()
       
    def read_f(self, a):
        with open(self.file, 'r', encoding = 'utf8') as r:
            file_r = r.read()
            people = len(file_r)
            print(f'db.txt에서 학생 {people}명을 불러왔습니다')
                   
class Out_file :
    def out_file(self):
        sys.exit()
        

student = Student()
file_sr = File_sr('db.txt')
out_file = Out_file()

dic_p = {}
menu_1 = { 1 : student.write_inf(), 2 : student.search_inf(), 3 : file_sr.read_f(), 4 : file_sr.save_f(), 5 : out_file.out_file()}
menu_s =  {1 : student.search_number(), 2 : student.search_name(), 3 : student.change_f()}
while (True):
    print("학생정보 관리.")
    print(f'{len(dic_p)}명의 학생 정보가 있습니다.')
    print("-"*30)
    print("1. 학생정보 입력\n 2. 학생정보 검색\n 3. 학생정보 출력\n 4. 학생정보 저장\n 5. 종료")
    print("-"*30)
    choise = int(input("메뉴를 선택하시오:_____"))
    menu_1[choise]
    