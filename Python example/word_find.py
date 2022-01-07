# 특수문자 속 단어 찾기

# a 중 글자 골라내기
import string

a = """!"P#$%&'y()*+,t-./:h;<=o>?@[\]n^_`{|}~"""

for i in a:
    if i not in string.punctuation:
        word = i
        print(word,end='')


