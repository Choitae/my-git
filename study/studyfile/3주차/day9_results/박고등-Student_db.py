import sys
import pandas as pd
import re
import csv

st_numberlist=[]
st_namelist=[]
st_oldlist=[]
st_majorlist=[]
st_phonelist=[]
st_addlist=[]
data={"번호":st_numberlist,"이름":st_namelist,"나이":st_oldlist,"전공":st_majorlist,"전화번호":st_phonelist,"주소":st_addlist}




def db_program():
    interface="""
-----------------------------------------  
{} 명의 학생 정보가 있습니다. 
1. 학생정보 입력
2. 학생정보 검색
3. 학생정보 출력
4. 학생정보 저장
5. 종료
학생정보 관리, 메뉴를 선택하시오: 
------------------------------------------
""".format(len(data["번호"]))
    onoff=True   
    while onoff:
        print(interface,end='')
        manunum=input("")
        if manunum=="1":
            student_info_in()
        elif manunum=="2":
            student_info_search()
        elif manunum=="3":
            student_info_prtout()
        elif manunum=="4":
            student_info_save()
        elif manunum=="5":
            print("프로그램을 종료합니다.")
            break

        else :
            print("잘못된 입력입니다. 다시 입력해주세요") 
            db_program()




def student_info_in():
    print("------------------------------")    
    st_name=input("1.이름 : ")
    st_namelist.append(st_name)
    st_old=input("2.나이 : ")
    st_oldlist.append(st_old)
    st_major=input("3.전공 : ")
    st_majorlist.append(st_major)
    st_phone=input("4.전화번호(-)를 붙여서 : ")
    st_phonelist.append(st_phone)
    st_add=input("5.주소 : ")
    st_addlist.append(st_add)
    st_numberlist.append(len(data["이름"]))
    print("------------------------------")    
    print("{}이 입력되었습니다.".format(st_name))
    db_program()

    
def student_info_search():
    print("검색 메뉴를 선택하십시오")
    print("------------------------------")  
    print("검색선택 (1 번호 , 2 이름, 3 이전  )",end='')
    search_num=input("")

    if search_num=="1":
        print("현재 학생의 번호목록 입니다. \n{}".format(data["번호"]))
        search_num2=input("학생 번호를 입력하십시오")
        """
        if type(search_num2)!=int or not(search_num2 in data["번호"]): 
            try :
                type(search_num2)==Error
            except :
                print("입력 형태가 영 안맞다. ")

            print("잘못된 입력입니다. 다시 입력해주세요")
            student_info_search()
        """
        print("""
        {}
        {}
        {}
        {}
        {}
        {}
        """.format(data["번호"][int(search_num2)-1],data["이름"][int(search_num2)-1],data["나이"][int(search_num2)-1],data["전공"][int(search_num2)-1],data["전화번호"][int(search_num2)-1],data["주소"][int(search_num2)-1]))
    elif search_num=="2":
         a=input("이름을 입력하십시오",end="")
         search_num2=data["이름"].index(a)
         print("""
        {}
        {}
        {}
        {}
        {}
        {}
        """.format(data["번호"][int(search_num2)],data["이름"][int(search_num2)],data["나이"][int(search_num2)],data["전공"][int(search_num2)],data["전화번호"][int(search_num2)],data["주소"][int(search_num2)]))
    elif search_num=="3":
         print("이전으로 돌아갑니다.")
         db_program()


def student_info_prtout():
    # print("db 전체(이름, 전화번호, 주소 보안처리)를 출력합니다.")
    print("--------------------------")
    """   
    for var in range(0,len(st_namelist)):
        for key in ["번호","이름","나이","전공","전화번호","주소"]
        
            if key=="이름": 
                if data[key][var]<=2:
                    prt=re.sub("*$",'*',data[key][var])
                    print(prt)
                elif data[key][var]>=3:
            elif key=="전화번호": 
            elif key=="주소":
                
            else:
                data[key][var],end="\n")        
    """
    print(pd.DataFrame(data))
    print("--------------------------")
    """    
    print("  ".join(data["번호"]))
    encryption
    "  ".join(data["이름"])
    "  ".join(data["나이"])
    "  ".join(data["전공"])
    "  ".join(data["전화번호"])
    "  ".join(data["주소"])
    """
def student_info_save():
    print("""
    파일 작업 메뉴를 선택하시오:  
------------------------------
1. 파일 작업 선택 (1 저장, 2 불러오기, 3 이전)
 
------------------------------""")
    
    num=input("")
    if num=="1":
        filename=input("저장하실 파일이름을 설정해주세요")
        with open(filename,"wt",encoding="utf-8") as f:
           
            f.write("번호,이름,나이,전공,전화번호,주소 \n")
               
            for i in range(0,len(data["이름"])):
                f.write("{},{},{},{},{},{} \n".format(data["번호"][i],data["이름"][i],data["나이"][i],data["전공"][i],data["전화번호"][i],data["주소"][i]))
    elif num=="2" :
        filename=input("불러오실 파일이름을 설정해주세요")
        with open(filename,"rt",encoding="utf-8") as f:        
            lines=csv.reader(f)
            next(lines)
            for line in lines:
               data["번호"].append(line[0])
               data["이름"].append(line[1])
               data["나이"].append(line[2])
               data["전공"].append(line[3])
               data["전화번호"].append(line[4])
               data["주소"].append(line[5]) 
    elif num=="3":
         db_program()           


### 실행
db_program()