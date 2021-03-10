-- 도서번호가 10인 도서의 이름
select bookid, bookname
from book
where bookid = 10;

-- 도서번호가 1~10 사이: between
select bookid, bookname
from book
where bookid between 1 and 10;

-- 도서번호가 1~10 사이 : 비교식
select bookid, bookname
from book
where bookid >= 1 and bookid <= 10 ;

-- 가격이 30,000원 이상인 도서의 이름
select price, bookname
from book
where price >= 30000;

-- 가격이 5000원 에서 20000원 미만인 도서의 이름
select price, bookname
from book
where price between 5000 and 19999;

-- 추신수와 김연아의 총 구매액
select customer.custid, name, sum(saleprice) as 총구매액
from customer, orders
where customer.custid = orders.custid
group by customer.custid
having name = '추신수' or name = '김연아';

-- 추신수가 구매한 도서의 수
select customer.custid, name, count(*) as 도서의수
from customer, orders
where customer.custid = orders.custid
group by customer.custid
having name = '추신수';

select custid, count(*) as 도서의수
from orders
where custid in 
(select custid
from customer
where name = '추신수');

-- 추신수가 구매한 도서의 출판사 수
select book.publisher, name, count(*) as 출판사수
from customer, orders, book
where customer.custid = orders.custid and orders.bookid = book.bookid and name = '추신수'
group by book.publisher;

select book.publisher, count(*) as 출판사수
from book
where bookid in 
(select bookid
from orders
where custid in
(select custid
from customer
where name = '추신수'));

-- 추신수가 구매한 도서의 이름, 가격, 정가와 판매가격의 차이
select name, book.bookname, book.price, book.price - orders.saleprice as 할인폭
from book, orders, customer
where orders.bookid = book.bookid and customer.custid = orders.custid and name = '추신수';

-- 추신수가 구매하지 않은 도서의 이름
select name, book.bookname
from book, orders, customer
where orders.bookid = book.bookid and customer.custid = orders.custid and name != '추신수';

