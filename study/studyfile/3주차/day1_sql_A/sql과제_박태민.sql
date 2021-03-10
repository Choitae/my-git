/* 고객 요구에 따른 쿼리
 * bookstore 테이블: Book, Customer, Orders 의 레코드 이용
*/

-- 도서번호가 10인 도서의 이름
select bookname
from book
where bookid = 10;

-- 도서번호가 1~10 사이: between
select *
from book
where bookid between 1 and 10;

-- 도서번호가 1~10 사이 : 비교식
select *
from book
where bookid >= 1 and bookid <= 10;

-- 가격이 30,000원 이상인 도서의 이름
select bookname
from book
where price >= 30000;

-- 가격이 5000원 에서 20000원 미만인 도서의 이름
select bookname
from book
where price >= 5000 and price < 20000;

-- 추신수와 김연아의 총 구매액

select sum(saleprice)
from customer inner join orders on customer.custid = orders.custid
where customer.name ='김연아' or customer.name ='추신수';

-- 추신수가 구매한 도서의 수
select count(*)
from customer, orders
where customer.custid = orders.custid and customer.name ='추신수';


-- 추신수가 구매한 도서의 출판사 수

select count(distinct publisher)
from book
where bookid In (select bookid
				from customer, orders
                where customer.custid = orders.custid and customer.name ='추신수');

-- 추신수가 구매한 도서의 이름, 가격, 정가와 판매가격의 차이
select bookname, price, saleprice, price - saleprice as 가격차이
from book, customer, orders
where customer.custid = orders.custid
		and orders.bookid = book.bookid
		and customer.name ='추신수';
        
-- 추신수가 구매하지 않은 도서의 이름

select distinct bookname
from book
where bookid not in(select bookid
				from customer, orders
                where customer.custid = orders.custid and customer.name ='추신수');
        