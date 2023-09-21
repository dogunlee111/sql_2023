-- 출판사 '대한미디어'를 '대한 출판사'로 이름을 변경하시오.
update BOOK set PUBLISHER = '대한출판사'
where publisher like '대한미디어';

-- abs: 절대값구하는 함수
select abs(-33), abs(33) from dual;

- 5.657을 소수 첫째 자리까지 반올림한 값을 구하시오.
select round(5.657, 1) from daul;

-- 고객별 평균 주문 금액을 백원 단위로 반올림 한 값을 구하시오.

select custid "고객번호", round(avg(saleprice), -2) "평균금액" from orders
group by custid;

-- 도서명에 '과학'이 포함된 도서를 '수학'으로 변경하여 도서정보를 출력 하시오.
-- 실제 book테이블의 원본데이터를 변경하면 안됩니다.
select bokid, replace(bookname, '과학', '수학') bookname, publisher, price from book;
select * from book;

-- 출판사가 '해냄'인 도서명의 글자수와 바이트수를 출력하시오.
select bookname "도서명", length(bookname) "글자수", lengthb(bookname) "바이트수" from book
where publisher like '해냄';

-- 고객중에서 같은 성씨를 가진 사람이 몇명인지 성씨별 인원수를 출력하시오.
select substr(name, 1, 1) "성씨", count(*) "인원수" from customer
group by substr(name, 1, 1);

-- 서점의 주문확정일은 주문일로부터 10일후이다. 주문번호, 주문일, 주문확정일을 출력하시오.
select orderid 주문번호, orderdate 주문일, orderdate+10 주문확정일 from orders order by orderid;

-- 2023년 8월 28일에 주문 받은 주문번호, 주문일, 고객번호, 도서번호를 모두 출력하시오.
-- 단, 주문일은 "yyyy년 mm월 dd일"과 같은 format으로 표시하시오.

select orderid 주문번호, orderdate 주문일, custid 고객번호, bookid 도서번호
from orders
where orderdate = to_date('20230828', 'yyyymmdd');

-- 2023년 8월 28일에 주문 받은 주문번호, 주문일, 고객명, 도서명으로 모두 출력하시오.
-- 단, 주문일은 "yyyy-mm-dd일"과 같은 format으로 표시하시오.

select orderid 주문번호,to_char(orderdate, 'yyyy-mm-dd') 주문일, name 고객명, bookname 도서명
from orders 0, customer c, book b
where c.custid=0, custid and b.bookid=0.bookid
and orderdate = to_date('20230828', 'yyyymmdd');

-- DB 서버의 설정된 날짜와 시간 요일을 출력하시오.
-- 실제 반환된 날짜와 형식을 지정한(년도 4자리/월2자리/날짜2자리 간략한 요일, 시:분:초) 날짜와 시간 2가지를 모두 출력하시오.
select sysdate 원래 반환된 값, to_char(sysdate, 'yyyy/mm/dd dy hh24:mi:ss') 지정형식 날짜 및 시간 from dual;