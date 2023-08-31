insert into orders VALUES (1, 1, 1, 6000, TO_DATE('2023-01-10','YYYY-mm-dd'));
insert into orders VALUES (2, 1, 1, 6000, TO_DATE('2023-03-15','YYYY-mm-dd'));
insert into orders VALUES (3, 2, 1, 6000, TO_DATE('2022-11-07','YYYY-mm-dd'));
insert into orders VALUES (4, 3, 1, 6000, TO_DATE('2023-07-12','YYYY-mm-dd'));
insert into orders VALUES (5, 4, 1, 6000, TO_DATE('2023-07-07','YYYY-mm-dd'));
insert into orders VALUES (6, 1, 1, 6000, TO_DATE('2022-11-14','YYYY-mm-dd'));
insert into orders VALUES (7, 4, 1, 6000, TO_DATE('2023-08-28','YYYY-mm-dd'));
insert into orders VALUES (8, 3, 1, 6000, TO_DATE('2023-08-04','YYYY-mm-dd'));
insert into orders VALUES (9, 2, 1, 6000, TO_DATE('2022-10-29','YYYY-mm-dd'));
insert into orders VALUES (10, 3, 1, 6000, TO_DATE('2022-10-04','YYYY-mm-dd'));

insert into imported_book values(21, 'Zen Golf', 'Person', 12000);
insert into imported_book values(22. 'Soccer Skills', 'Human Kinetics', 15000);

select publisher, prices FROM book
                         where bookname like '축구의 역사';

select * name, phone from customer
             where name='김연아';
-- book 테이브렝서 도서명과 가격을 검색하시오.
select bookname, price from book;
-- book 테이블에서 가격과 도서명을 검색하시오.
select price, bookname from book;
-- book 테이블에서 도서번호, 도서명, 출판사, 가격을 검색하시오.
select bookid, bookname, publisher, price from book;
select * from book;
-- book 테이블에서 모든 출판사를 검색하시오.
select pbulisher from book;
-- book 테이블에서 모든 출판사를 검색하시오.(중복되는 출판사는 제거하세요)
select distinct publisher from book;
-- book 테이블에서 가격이 20000원 미만인 도서를 검색하시오.
select * from book
         where price < 15000;
-- book테이블에서 가격이 10000원 이상 16000원 이하인 도서를 검색하시오.
select * from book
         where price BETWEEN 10000 AND 16000;
-- book 테이블에서 가격이 10000원 이상 1000원 이하인 도서를 검색하세요.
-- 단 , between and를 사용하지 마세요.
select * from book
         where price >= 10000 AND price <= 16000;
         
-- book 테이브렝서 추판사가 굿스포츠, 해냄, 웅진지식하우스인 도서를 검색하시오
-- 단 in 연산자를 사용하시오.
select * from book
         where publisher in('굿스포츠', '해냄', '웅진지식하우스');
-- book테이블에서 출판사가 굿스포츠, 해냄, 웅진지식하우스인 도서를 검색하시오.
-- 단 in 연산자를 사용하지마세요.(비교연산자와 or 연산자 사용)
select * from book
        where publisher='굿스포츠' of publisher='해냄' or publisher='웅진지식하우스';
-- book 테이블에서 출판사가 굿스포츠, 해냄, 웅진지식하우스가 아닌 도서를 검색하시오.
-- 단 not in  연산자를 사용하시오
select * from book
         where publisher not in('굿스포츠', '해냄', '웅진지식하우스');
---- book 테이블에서 출판사가 굿스포츠, 해냄, 웅진지식하우스가 아닌 도서를 검색하시오.
-- 단 not in 연산자를 사용하지 마시오.(비교연산자와 or 연산자 사용)
select * from book
         where publisher<>'굿스포츠' or publisher<>'해냄' and publisher<>'웅진지식하우스';