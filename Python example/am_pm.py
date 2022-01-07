# if else 예제 오전/오후 구분하기

import datetime

curruent = datetime.datetime.now().hour
curruent = int(curruent)

if curruent >= 12 :
    print('오후 입니다.')
else : 
    print('오전 입니다.')

