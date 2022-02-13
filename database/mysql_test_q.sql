
-- 한 줄 주석
# 한 줄 주석 

/*
여러 줄 주석
여러 줄 주석
*/

use shopdb;  -- 데이터베이스 선택

-- select 칼럼명 from 테이블명 where 조건;

select * from membertbl;

-- ctrl + enter : 한 줄 실행
-- ctrl + shift + enter : 전체 실행 또는 선택한 블록 실행

select memberaddress from membertbl;
select memberaddress from membertbl where membername = '당당';
select * from producttbl;
select productname, amount from producttbl where amount < 5;

-- employees 데이터베이스에서  titles 테이블의 모든 데이터를 출력..
use employees;
select * from titles;

use shopdb;
select * from membertbl;
select * from producttbl;

-- 삼성 제품만 출력.
select * from producttbl where company = '삼성';

-- 세탁기의 원가은 얼마인가..
select cost from producttbl where productname = '세탁기';

-- shopdb 데이터베이스의 테이블 목록을 출력..
show tables;

show databases;

-- emplpyees 데이터베이스에서 종업원 전체 목록을 출력..
use employees;

show tables;
select * from employees;
select count(*) from employees;

-- 남성 종사자의 목록을 출력하시오..


-- 60년 이전 출생자의 이름과 사번 목록을 출력..


-- 연봉 1억 이상인 사람의 emp_no을 출력..


-- 연봉 1억 이상인 사람의 인원수를 출력..


-- 입사년도가 1990년 07월 07일 이전이면서 'engineer'인 사람들의 데이터를 출력..



-- Table을 생성하고 값을 입력하는 sql query..

-- (create database 데이터베이스이름;)
-- (use 데이터베이스이름;)
-- create table 테이블이름 (칼럼명, 데이터타입, 제약조건);
-- insert into 테이블이름 (칼럼명) values (값1, 값2, ...);


drop database if exists sqldb;
create database sqldb;

USE sqldb;
CREATE TABLE userTbl -- 회원 테이블
( userID   CHAR(8) NOT NULL PRIMARY KEY, -- 사용자 아이디(PK)
  username    VARCHAR(10) NOT NULL, -- 이름
  birthYear   INT NOT NULL,  -- 출생년도
  addr    CHAR(2) NOT NULL, -- 지역(경기,서울,경남 식으로 2글자만입력)
  mobile1 CHAR(3), -- 휴대폰의 국번(011, 016, 017, 018, 019, 010 등)
  mobile2 CHAR(8), -- 휴대폰의 나머지 전화번호(하이픈제외)
  height     SMALLINT,  -- 키
  mDate     DATE  -- 회원 가입일
);

CREATE TABLE buyTbl -- 회원 구매 테이블
(  num  INT AUTO_INCREMENT NOT NULL PRIMARY KEY, -- 순번(PK)
   userID   CHAR(8) NOT NULL, -- 아이디(FK)
   prodName  CHAR(6) NOT NULL, --  물품명
   groupName  CHAR(4)  , -- 분류
   price      INT  NOT NULL, -- 단가
   amount     SMALLINT  NOT NULL -- 수량
);

INSERT INTO userTbl VALUES('LSG', '이승기', 1987, '서울', '011', '1111111', 182, '2008-8-8');
INSERT INTO userTbl VALUES('KBS', '김범수', 1979, '경남', '011', '2222222', 173, '2012-4-4');
INSERT INTO userTbl VALUES('KKH', '김경호', 1971, '전남', '019', '3333333', 177, '2007-7-7');
INSERT INTO userTbl VALUES('JYP', '조용필', 1950, '경기', '011', '4444444', 166, '2009-4-4');
INSERT INTO userTbl VALUES('SSK', '성시경', 1979, '서울', NULL  , NULL      , 186, '2013-12-12');
INSERT INTO userTbl VALUES('LJB', '임재범', 1963, '서울', '016', '6666666', 182, '2009-9-9');
INSERT INTO userTbl VALUES('YJS', '윤종신', 1969, '경남', NULL  , NULL      , 170, '2005-5-5');
INSERT INTO userTbl VALUES('EJW', '은지원', 1972, '경북', '011', '8888888', 174, '2014-3-3');
INSERT INTO userTbl VALUES('JKW', '조관우', 1965, '경기', '018', '9999999', 172, '2010-10-10');
INSERT INTO userTbl VALUES('BBK', '바비킴', 1973, '서울', '010', '0000000', 176, '2013-5-5');

INSERT INTO buyTbl VALUES(NULL, 'KBS', '운동화', NULL   , 30,   2);
INSERT INTO buyTbl VALUES(NULL, 'KBS', '노트북', '전자', 1000, 1);
INSERT INTO buyTbl VALUES(NULL, 'JYP', '모니터', '전자', 200,  1);
INSERT INTO buyTbl VALUES(NULL, 'BBK', '모니터', '전자', 200,  5);
INSERT INTO buyTbl VALUES(NULL, 'KBS', '청바지', '의류', 50,   3);
INSERT INTO buyTbl VALUES(NULL, 'BBK', '메모리', '전자', 80,  10);
INSERT INTO buyTbl VALUES(NULL, 'SSK', '책'    , '서적', 15,   5);
INSERT INTO buyTbl VALUES(NULL, 'EJW', '책'    , '서적', 15,   2);
INSERT INTO buyTbl VALUES(NULL, 'EJW', '청바지', '의류', 50,   1);
INSERT INTO buyTbl VALUES(NULL, 'BBK', '운동화', NULL   , 30,   2);
INSERT INTO buyTbl VALUES(NULL, 'EJW', '책'    , '서적', 15,   1);
INSERT INTO buyTbl VALUES(NULL, 'BBK', '운동화', NULL   , 30,   2);

select * from usertbl;
select * from buytbl;

-- 김경호라는 가수의 데이터를 출력..


-- 출생년도가 1970년 이후이고, 키가 182 이상인 회원의 userid, 이름를 출력..


-- 출생년도가 1970년 이후이거나, 키가 182 이상인 회원의 userid, 이름를 출력..


-- 키가 180 이상이고 183 이하인 회원의 이름을 출력..


-- 출생지가 '경남', '전남' 또는 '경북'인 회원의 이름과 아이디, 주소를 출력..alter


-- 텍스트 검색
-- 성이 '김'인 사람의 데이터를 출력.


-- 이름이 '종신'인 사람의 데이터를 출력...


-- 이름이 '종신'인 성이 한 글자인 사람의 데이터를 출력...

-- 키가 178 이상인 사람의 데이터를 출력..


-- 임재범 보다 키가 큰 사람의 데이터를 출력..

-- 임재범 보다 나이가 많은 사람의 이름을 출력하시오..

-- 김범수와 출생지역이 동일한 사람의 데이터를 출력하시오..

-- 경남에 사는 사람 보다 키가 큰 사람의 데이터를 출력..


-- subquery에서 값이 복수인 경우 비교연산 할 수 없다...
-- all() - 전체 데이터에 True, any() - 어느 하나만 True

-- 경남에 사는 사람과 키가 동일한 사람의 데이터를 출력..

-- 정렬(sort) : order by
-- 출생 기준으로 오름차순 정렬해서 출력..

-- 출생 기준으로 내림차순 정렬해서 출력..


-- 키 순으로 오름차순 정렬하시오..


-- 키 순으로 내림차순 정렬하시오..


-- 출생지의 종류를 중복값없이 출력하시오..


-- 출생지 종류수를 출력하시오..


-- n개만를 출력..


-- 키가 가장 큰 사람의 이름을 출력하시오..


-- subquery를 이용해서 기존 table을 복사해서 새로운 table을 생성..




-- groupby => 데이터를 그룹으로 묶어서 그룹 단위로 데이터를 연산..
-- 1. 그룹화 > 2. 그룹별 연산(집계함수)

use sqldb;

select * from usertbl;
select * from buytbl;

-- 총구매액


-- 평균구매액


-- 구매횟수


-- 사용자별 총구매액이 1000 이상인 고객데이터 출력..
-- group by 에서 조건을 지정하는 경우 : having (o), where (x)
-- select userid, sum(price * amount) as '총구매금액' from buytbl group by userid where sum(price * amount) >= 1000; -- error


-- 구매횟수가 2회 이상인 구매정보를 출력..



-- usertbl에서 가장 키가 큰 사람과 작은 사람을 출력하시오..



use employees;
select * from employees;

create table testtbl1(id int, fname varchar(50), lname varchar(50));
use sqldb;
-- 데이터 밖에서 테이블에 접근..


-- 데이터 수정 : update 테이블명  set ~;


-- buytbl 가격을 1.5배 올린 값으로 수정..


-- buytbl에서 모니터 가격을 50% 할인하도록 가격을 수정..



-- 데이터 삭제 : delete.. (where..)
-- fname이 'Aamer'인 데이터들을 삭제..



## Join


-- inner join


    
-- 조용필이 구매한 제품의 이름과 조용필의 주소를 출력하시오..

    
-- 모니터를 구매한 사람들의 이름을 출력..

    
-- 전화번호가 없는 고객의 이름, 주소, 구매제품을 출력..

    
-- 총구매금액이 가장 큰 고객정보를 출력..

    
-- left join

    
-- right join



-- table 3개 join
create table stdtbl (
	stdname varchar(10) not null primary key,
    addr char(4) not null);    
insert into stdtbl values ('김범수', '경남'), ('성시경', '서울'), ('조용필', '경기'), ('은지원', '경북'), 
	('바비킴', '서울');
select * from stdtbl;

create table clubtbl (
	clubname varchar(10) not null primary key,
    roomno char(4) not null);
insert into clubtbl values ('수영', '101호'), ('바둑', '102호'), ('축구', '103호'), ('봉사', '104호');
select * from clubtbl;

create table stdclubtbl(
	num int auto_increment not null primary key,
    stdname varchar(10) not null,
    clubname varchar(10) not null);
insert into stdclubtbl values(null, '김범수', '바둑'), (null, '김범수', '축구'), (null, '조용필', '축구'), 
	(null, '은지원', '축구'), (null, '바비킴', '봉사');
select * from stdclubtbl;

select * from stdtbl;
select * from clubtbl;
select * from stdclubtbl;


-- 세개 조인
    
-- 축구부에 가입한 학생의 주소를 출력..

    
    
### if구문 / case when 구문
### procedure() : 함수

drop procedure if exists ifproc3;
delimiter $$

create procedure ifproc3()





call ifproc3();


-- case when

drop procedure if exists ifproc2;
delimiter $$

create procedure ifproc2()



call ifproc2();





-- 기본함수..

-- cast : 데이터 타입을 변환
'2020-10-16 12:25:29:123' 
'2020-10-16 12:25:29:123'
'2020-10-16 12:25:29:123'

-- concat : 이어주는 함수
use sqldb;
show tables;

        



-- ifnull(요소1, 요소2) : 요소1이 null이면 요소2를 리턴, 요소1이 null이 아니면 요소1을 리턴.


-- insert('문자열1', index, length, '문자열2') : 문자열1의 index 위치에 length 길이 인덱스에 문자열2를 입력..


-- left ('문자열', num) : 문자열 왼쪽으로부터 num갯수 만큼 요소출력
-- right ('문자열', num) : 문자열 오른쪽쪽으로부터 num갯수 만큼 요소출력


-- repeat('문자열', n) : 문자열을 n회 반복


-- lower()


-- lpad('문자열1', num, '@') : 문자열 1을 num 크기만큼 자리수를 늘리고 빈자리를 '@'로 채운다


-- ltrim, rtrim : 죄우 공백제거..alter


-- replace('문자열1', '문자열2', '문자열3') : 문자열1에서 문자열2를 찾아서 문자열3으로 변경..


-- abs


-- ceiling(), floor(), round()


-- mod : 나머지 계산


-- sqrt : 제곱근


-- pow : 승


-- length : byte 크기
