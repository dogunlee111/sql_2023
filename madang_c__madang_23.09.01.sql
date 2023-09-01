select * from book;
-- book ���̺��� �����̶�� ���ڿ��� �����ϰ� ���������� 15000�� �̻��ε����� ���� �˻��Ͻÿ�.
select * from book
        where bookname like '%����%' and price >= 15000;
-- book ���̺��� ���ǻ簡 �½����� �Ǵ� ��ũ�ν��� ������ �˻��Ͻÿ�.
select * from book
        where publisher = '�½�����' or publisher = '��ũ�ν�';
-- ���� ������ in �����ڸ� ����Ͽ� ������ ������.
select * from book
        where publisher in('�½�����','��ũ�ν�');
-- book ���̺��� ������ ������ �˻��Ͻÿ�.
select * from book order by bookname;

-- book ���̺��� ������ȣ ������ �˻��Ͻÿ�.
select * from book order by bookid;

-- book ���̺��� ���ݼ����� �˻��� �ϰ� ���� �����̸� �̸������� �˻��Ͻÿ�.
select * from book order by price, bookname;

-- book ���̺��� ������ ������������ �˻��ϰ� ���� �����̸� ���ǻ�� ������������ �˻��Ͻÿ�.
select * from order by price desc, publisher asc;

select * from orders;
--orders ���̺��� ���� �ֹ��� ������ �� �Ǹž��� ���Ͻÿ�.
-- �����Լ� ���(�հ�: sum)
select sum(saleprice) as ���Ǹűݾ� from orders;

-- orders ���̺��� ����ȣ�� 1�� ���� �ֹ��� ������ ���Ǹž��� ���Ͻÿ�.
select sum(saleprice) as �� �Ǹűݾ�
from orders
where custid = 1;

-- orders ���̺��� �Ǹž��� �հ�, ���, �ּҰ�, �ִ밪�� ���Ͻÿ�.
select sum(saleprice) as ���Ǹűݾ�,
    avg(saleprice) as �Ǹž����,
    min(saleprice) as ��������,
    max(saleprice) as �ִ밡��
from orders;
-- orders ���̺��� �Ǹ��� ������ ������ ���Ͻÿ�.
select count(*) from orders;
-- orders ���̺��� ���������� 13000���̻��� ������ ������ ���Ͻÿ�.
select count(*) from orders where saleprice >= 13000;
-- orders ���̺��� ����ȣ�� 1 �Ǵ� 3�� ���� �ֹ� ������ ���Ͻÿ�.
select count(*) from orders where custid in(1, 3);

-- orders ���̺��� ���� �ֹ��� ������ ������ ���հ踦 ���Ͻÿ�.
-- �׷�ȭ(�κ���): group by
select custid, count(*) �ֹ�����, sum(saleprice) �ֹ��Ѿ�
from orders
group by custid
order by custid;
-- orders ���̺��� �ǸŰ����� 8000�� �̻��� ������ ������ ���� ���� ���� �ֹ� ������ �� ������ ���Ͻÿ�
select custid, count(*) as �������� from orders
where saleprice >= 8000
group by custid
having count(*) >= 2
order by custid;