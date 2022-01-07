# 리스트에 있는 숫자들의 최고값, 최소값, 합, 평균 구하기 


records = [90, 85, 70, 55, 95, 60, 80, 90, 85, 70, 55, 95, 60, 80, 90, 85, 70, 55, 95, 60, 80]
# len(records)

sum = 0
avg = 0
max = records[0]
min = records[0]
n = 0

for n in range(len(records)):
    if max < records[n] :
        max = records[n]
    if min > records[n] :
        min = records[n]
    n += 1

for i in records :
    sum += i
    
avg = sum / len(records)

print('최고점 : ', max)
print('최저점 : ', min)
print('총  점 : ', sum)
print('평  균 : ', avg)