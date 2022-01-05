from math import pi

def circle_round(num):
    result = num * 2 * pi
    return result

def circle(num):
    result = num ** 2 * pi  
    return result

n = int(input("원의 반지름을 입력하세요"))

answer = circle(n)
round = circle_round(n)

print('원의 넓이는 {}이고,\n원의 둘레는 {} 입니다.'.format (answer, round))

