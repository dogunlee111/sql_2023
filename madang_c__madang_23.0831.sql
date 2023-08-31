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
                         where bookname like '�౸�� ����';

select * name, phone from customer
             where name='�迬��';
-- book ���̺���� ������� ������ �˻��Ͻÿ�.
select bookname, price from book;
-- book ���̺��� ���ݰ� �������� �˻��Ͻÿ�.
select price, bookname from book;
-- book ���̺��� ������ȣ, ������, ���ǻ�, ������ �˻��Ͻÿ�.
select bookid, bookname, publisher, price from book;
select * from book;
-- book ���̺��� ��� ���ǻ縦 �˻��Ͻÿ�.
select pbulisher from book;
-- book ���̺��� ��� ���ǻ縦 �˻��Ͻÿ�.(�ߺ��Ǵ� ���ǻ�� �����ϼ���)
select distinct publisher from book;
-- book ���̺��� ������ 20000�� �̸��� ������ �˻��Ͻÿ�.
select * from book
         where price < 15000;
-- book���̺��� ������ 10000�� �̻� 16000�� ������ ������ �˻��Ͻÿ�.
select * from book
         where price BETWEEN 10000 AND 16000;
-- book ���̺��� ������ 10000�� �̻� 1000�� ������ ������ �˻��ϼ���.
-- �� , between and�� ������� ������.
select * from book
         where price >= 10000 AND price <= 16000;
         
-- book ���̺���� ���ǻ簡 �½�����, �س�, ���������Ͽ콺�� ������ �˻��Ͻÿ�
-- �� in �����ڸ� ����Ͻÿ�.
select * from book
         where publisher in('�½�����', '�س�', '���������Ͽ콺');
-- book���̺��� ���ǻ簡 �½�����, �س�, ���������Ͽ콺�� ������ �˻��Ͻÿ�.
-- �� in �����ڸ� �������������.(�񱳿����ڿ� or ������ ���)
select * from book
        where publisher='�½�����' of publisher='�س�' or publisher='���������Ͽ콺';
-- book ���̺��� ���ǻ簡 �½�����, �س�, ���������Ͽ콺�� �ƴ� ������ �˻��Ͻÿ�.
-- �� not in  �����ڸ� ����Ͻÿ�
select * from book
         where publisher not in('�½�����', '�س�', '���������Ͽ콺');
---- book ���̺��� ���ǻ簡 �½�����, �س�, ���������Ͽ콺�� �ƴ� ������ �˻��Ͻÿ�.
-- �� not in �����ڸ� ������� ���ÿ�.(�񱳿����ڿ� or ������ ���)
select * from book
         where publisher<>'�½�����' or publisher<>'�س�' and publisher<>'���������Ͽ콺';