use lecture1;

-- 도서번호가 10인 도서의 이름
select bookname
from book
where bookid = 10;

-- 도서번호가 1~10 사이: between
select bookname
from book
where bookid between 1 and 10;

-- 도서번호가 1~10 사이 : 비교식
select bookname
from book
where bookid >= 0 and bookid <=10;

-- 가격이 30,000원 이상인 도서의 이름
select bookname
from book
where price >= 30000;

-- 가격이 5000원 에서 20000원 미만인 도서의 이름
select bookname, price
from book
where price >=5000 and price < 20000;

-- 추신수와 김연아의 총 구매액
select sum(saleprice) as '총 구매액'
from orders, customer
where customer.custid = orders.custid
group by customer.name
having customer.name in ('추신수', '김연아');

-- 추신수가 구매한 도서의 수
select count(*) as '구매 도서 수'
from  orders, customer
where orders.custid = customer.custid
group by customer.name
having customer.name = '추신수';

-- 추신수가 구매한 도서의 출판사 수
select count(distinct book.publisher)
from book, customer, orders
where customer.custid = orders.custid
	and book.bookid = orders.bookid
group by customer.name
having customer.name = '추신수';

-- 추신수가 구매한 도서의 이름, 가격, 정가와 판매가격의 차이
select book.bookname, book.price, (book.price - orders.saleprice) as '정가와 판매가격 차이'
from orders, book, customer
where customer.custid = orders.custid
	and book.bookid = orders.bookid
    and customer.name = '추신수';

-- 추신수가 구매하지 않은 도서의 이름
select distinct book.bookname
from book left outer join (customer, orders)
on book.bookid = orders.bookid
and customer.custid = orders.custid
and customer.name in ('추신수');

-- 추신수가 구매하지 않은 도서의 이름
select book.bookname
from book
where book.bookid not in (select book.bookid
							from book, orders, customer
                            where book.bookid = orders.bookid
							and customer.custid = orders.custid
                            and customer.name = '추신수');