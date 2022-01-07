# 도형을 선택받아 그 도형의 넓이 구하기



from math import pi

def circle(num):
    result = pi * num**2
    return result 

def triangle(num1,num2):
    result = num1*num2/2
    return result

def rect(num1,num2):
    result = num1*num2
    return result
    



t = int(input("도형을 고르시오 1.원 2.삼각형 3.사각형"))

if t == 1:
    num = float(input("반지름을 입력하세요"))
    result = circle(num)
    print ("반지름 {}인 원의 넓이는 {}입니다.".format (num,result))

elif t == 2:
    num1 = int(input("밑변을 입력하세요"))
    num2 = int(input("높이를 입력하세요"))
    result = triangle(num1,num2)
    print("밑변이 {}그리고 높이가 {}의 삼각형의 넓이는 {}입니다.".format (num1,num2,result))

elif t == 3:
    num1 = int(input("가로길이를 입력하세요"))
    num2 = int(input("세로길이를 입력하세요"))
    result = rect(num1,num2)
    print("가로길이 {}, 세로길이 {}의 사각형 넓이는 {}입니다." .format (num1, num2, result))

else:
    print("보기에 없는 도형번호입니다.")