

use sqldb;

select * from usertbl;
select * from buytbl;

select userid from buytbl group by userid;
select userid, sum(amount) from buytbl group by userid;
select userid, sum(amount) as total_amount from buytbl group by userid order by total_amount;

-- 평균 구매량
select userid, avg(amount) as '평균구매량' from buytbl group by userid order by '평균구매량';

-- 구매횟수
select userid, sum(amount) as '구매횟수' from buytbl group by userid;

-- 사용자별 총구매액이 1000 이상인 고객 데이터를 출력
select userid, sum(price*amount) as '총구매액' from buytbl group by userid having sum(price*amount) >= 1000;

-- 구매횟수가 2회 이상인 구매정보를 출력
select userid, count(amount) as '구매횟수' from buytbl group by userid having count(amount) >= 2;

-- usertbl에서 가장 키가 큰 사람과 작은 사람을 출력하시오
select username, height from usertbl where height in ((select max(height) from usertbl), (select min(height) from usertbl));

use employees;
select * from employees;

use sqldb;

create table testtbl1(id int, fname varchar(50), lname varchar(50));
insert into testtbl1 select emp_no, first_name, last_name from employees.employees;  -- 데이터 테이브에 접근
select * from testtbl1;

-- 데이터 수정 : update
select * from testtbl1 where fname = 'Aamer';
update testtbl1 set lname ='없음' where fname='Aamer';
select * from testtbl1 where fname = 'Aamer';

update buytbl set price = price*1.5;
select * from buytbl;

## Join
select * from usertbl;
select * from buytbl;

select * from buytbl inner join usertbl
	on buytbl.userID = usertbl.userID;
    
select * from buytbl b inner join usertbl u
	on b.userid = u.userid;
    
select * from buytbl, usertbl
	where buytbl.userId = usertbl.userId;
    
select * from buytbl b, usertbl u
	where b.userid = u.userid;
    
-- 모니터를 구매한 사람들의 이름을 출력
select username from buytbl b inner join usertbl u
	on b.userid = u.userid
    where prodname = '모니터';
    
-- 전화번호가 없는 고객의 이름, 주소, 구매제품 출력





















