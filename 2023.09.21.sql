-- ���ǻ� '���ѹ̵��'�� '���� ���ǻ�'�� �̸��� �����Ͻÿ�.
update BOOK set PUBLISHER = '�������ǻ�'
where publisher like '���ѹ̵��';

-- abs: ���밪���ϴ� �Լ�
select abs(-33), abs(33) from dual;

- 5.657�� �Ҽ� ù° �ڸ����� �ݿø��� ���� ���Ͻÿ�.
select round(5.657, 1) from daul;

-- ���� ��� �ֹ� �ݾ��� ��� ������ �ݿø� �� ���� ���Ͻÿ�.

select custid "����ȣ", round(avg(saleprice), -2) "��ձݾ�" from orders
group by custid;

-- ������ '����'�� ���Ե� ������ '����'���� �����Ͽ� ���������� ��� �Ͻÿ�.
-- ���� book���̺��� ���������͸� �����ϸ� �ȵ˴ϴ�.
select bokid, replace(bookname, '����', '����') bookname, publisher, price from book;
select * from book;

-- ���ǻ簡 '�س�'�� �������� ���ڼ��� ����Ʈ���� ����Ͻÿ�.
select bookname "������", length(bookname) "���ڼ�", lengthb(bookname) "����Ʈ��" from book
where publisher like '�س�';

-- ���߿��� ���� ������ ���� ����� ������� ������ �ο����� ����Ͻÿ�.
select substr(name, 1, 1) "����", count(*) "�ο���" from customer
group by substr(name, 1, 1);

-- ������ �ֹ�Ȯ������ �ֹ��Ϸκ��� 10�����̴�. �ֹ���ȣ, �ֹ���, �ֹ�Ȯ������ ����Ͻÿ�.
select orderid �ֹ���ȣ, orderdate �ֹ���, orderdate+10 �ֹ�Ȯ���� from orders order by orderid;

-- 2023�� 8�� 28�Ͽ� �ֹ� ���� �ֹ���ȣ, �ֹ���, ����ȣ, ������ȣ�� ��� ����Ͻÿ�.
-- ��, �ֹ����� "yyyy�� mm�� dd��"�� ���� format���� ǥ���Ͻÿ�.

select orderid �ֹ���ȣ, orderdate �ֹ���, custid ����ȣ, bookid ������ȣ
from orders
where orderdate = to_date('20230828', 'yyyymmdd');

-- 2023�� 8�� 28�Ͽ� �ֹ� ���� �ֹ���ȣ, �ֹ���, ����, ���������� ��� ����Ͻÿ�.
-- ��, �ֹ����� "yyyy-mm-dd��"�� ���� format���� ǥ���Ͻÿ�.

select orderid �ֹ���ȣ,to_char(orderdate, 'yyyy-mm-dd') �ֹ���, name ����, bookname ������
from orders 0, customer c, book b
where c.custid=0, custid and b.bookid=0.bookid
and orderdate = to_date('20230828', 'yyyymmdd');

-- DB ������ ������ ��¥�� �ð� ������ ����Ͻÿ�.
-- ���� ��ȯ�� ��¥�� ������ ������(�⵵ 4�ڸ�/��2�ڸ�/��¥2�ڸ� ������ ����, ��:��:��) ��¥�� �ð� 2������ ��� ����Ͻÿ�.
select sysdate ���� ��ȯ�� ��, to_char(sysdate, 'yyyy/mm/dd dy hh24:mi:ss') �������� ��¥ �� �ð� from dual;