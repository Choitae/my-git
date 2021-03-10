-- 1. 도서번호가 10인 도서의 이름
select bookname
from book
where bookid = 10;

-- 2. 도서번호가 1~10 사이 : between
select *
from book
where bookid between 1 and 10;

-- 3. 도서번호가 1~10 사이 : 비교식
select *
from book
where bookid >= 1 and bookid <=10; 

-- 4. 가격이 30,000원 이상인 도서의 이름
select bookname, book.price
from book
where price >= 30000;

-- 5. 가격이 5000원에서 20000원 미만인 도서의 이름
select bookname
from book
where price >= 5000 and price < 20000;

-- 6. 추신수와 김연아의 총 구매액
select customer.name, sum(book.price) as '총 구매액'
from orders, customer, book
where orders.custid = customer.custid
	and book.bookid = orders.bookid
	and customer.name in ('추신수','김연아')
group by customer.name;

-- 7. 추신수가 구매한 도서의 수
select orders.custid, customer.name, count(orders.orderid) as '도서 구매 수'
from orders, customer
where customer.custid = orders.custid
	and customer.name = '추신수';

-- 8. 추신수가 구매한 도서의 출판수 수
select customer.name, book.publisher, count(publisher) as '출판사 수'
from customer, orders, book
where customer.custid = orders.custid
	and orders.bookid = book.bookid
    and customer.name = '추신수';
    
-- 9. 추신수가 구매한 도서의 이름, 가격, 정가와 판매가격의 차이
select customer.name, book.bookname, book.price - orders.saleprice as '가격 차이'
from customer, orders, book
where customer.custid = orders.custid
	and orders.bookid = book.bookid
    and customer.name = '추신수';
   
-- 10. 추신수가 구매하지 않은 도서의 이름
select book.bookname
from customer, orders, book
where customer.custid = orders.custid
	and orders.bookid = book.bookid
    and customer.name not in ('추신수');
    