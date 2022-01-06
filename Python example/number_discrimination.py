# 사용자로부터 점수를 입력받아 양수, 음수를 판별하는 프로그램 작성

num = (input('숫자를 입력하세요'))

if num.isdecimal :
    num = int(num)
    if num > 0 :
        print('양수입니다.')

    elif num < 0:
        print('음수입니다.')

    else : 
        print('0 입니다.')

else:
    print('잘못 입력했습니다.')