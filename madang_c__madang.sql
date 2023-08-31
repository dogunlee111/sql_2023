-- 도서정보 Book 테이블
create table Book(
    bookid NUMBER(2) primary key,
    bookname VARCHAR2(40),
    publisher VARCHAR2(40),
    price NUMBER(8)
);
-- 수입도서정보 Imported_Book 테이블
create table Imported_Book(
    bookid NUMBER(2),
    bookname VARCHAR2(40),
    publisher VARCHAR2(40),
    price NUMBER(8)
);

-- 고객정보 Customer 테이블
create table Customer(
    custid NUMBER(2) PRIMARY KEY,
    name VARCHAR2(40),
    address VARCHAR2(50),
    phone VARCHAR2(20)
);

-- 주문정보 Orders 테이블
create table Orders(
    orderid NUMBER(2) PRIMARY KEY,
    custid NUMBER(2) REFERENCES Customer(custid),
    bookid NUMBER(2) REFERENCES Book(bookid),
    saleprice NUMBER(8),
    orderdate DATE
);

-- Book 테이블에 10권의 도서 정보를 추가하세요
insert into Book values(1, '축구의 역사', '굿스포츠', 7000);
insert into Book values(2, '해리포터 죽음의 성물', '좋은책', 11000);
insert into Book values(3, '선택할 자유', '자유기업원', 22000);
insert into Book values(4, '레이건 일레븐', '열아홉', 15000);
insert into Book values(5, '군중심리', '현대지성', 19000);
insert into Book values(6, '권력과 진보', '생각의힘', 17000);
insert into Book values(7, '선량한 차별주의자', '창비', 37000);
insert into Book values(8, '중국은 어떻게 실패하는가', '부키', 20000);
insert into Book values(9, '이미 시작된 전쟁', '페이지2북스', 21000);
insert into Book values(10, '붕괴하는 세계와 인구학', '김앤김북스', 33000);

-- customer 테이블에 고객정보 5명 추가
insert into customer values(1, '박지성', '영국 맨체스터','000-5000-001');
insert into customer values(2, '김연아', '서울 동작구 흑석동','02-333-5555');
insert into customer values(3, '장미란', '서울 용산구 보광동','02-555-7777');
insert into customer values(4, '추신수', '인천 광역시 연수구','032-233-5656');
insert into customer values(5, '박세리', '대전광역시 유선구','042-322-1237');



