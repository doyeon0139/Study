birth = int(input('태어난 연도를 입력하세요'))

# anymal = ['원숭이', '닭', '개', '돼지', '쥐', '소', '호랑이', '토끼', '용', '뱀', '말', '양']
anymal = ['🐵','🐔','🐶','🐷','🐭','🐮','🐯','🐰','🐲','🐍','🐴','🐑']

a = birth % 12

for i in range(len(anymal)):
    if a == i:
        print('당신의 띠는 {}입니다.'.format(anymal[i]))