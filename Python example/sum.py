num = input('숫자를 모두 입력하세요')

number = num.split()

sum = 0


for i in number:
    sum += int(i)   #int(number[i]) 이게 왜 틀렸을까

print('숫자의 합은 : {} 입니다.'.format(sum))
