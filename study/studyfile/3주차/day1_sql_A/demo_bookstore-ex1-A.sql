/* 고객 요구 */

-- 도서번호가 10인 도서의 이름
SELECT bookname FROM Book WHERE bookid=10;
-- 도서번호가 1~10 사이: 
SELECT bookname FROM Book WHERE bookid between 1 and 10;
-- 도서번호가 1~10 사이 : 비교식
SELECT bookname FROM Book WHERE bookid >= 1 and bookid <= 10;

-- 가격이 30,000원 이상인 도서의 이름
SELECT bookname FROM Book WHERE price >= 30000;

-- 가격이 5000원 에서 20000원 미만인 도서의 이름

-- 추신수, 김연아의 총 구매액
SELECT SUM(saleprice) FROM Customer, Orders
	WHERE Customer.custid=Orders.custid
	AND Customer.name LIKE '추신수'; 


select customer.name, sum(saleprice) as '구매액'
from orders, customer
where customer.custid = orders.custid
group by customer.name
having customer.name in ('추신수', '김연아');



-- 추신수가 구매한 도서의 수
SELECT COUNT(*) FROM Customer, Orders WHERE Customer.custid=Orders.custid
AND Customer.name LIKE '추신수'; 

-- 추신수가 구매한 도서의 출판사 수
SELECT COUNT(DISTINCT publisher)
	FROM Customer, Orders, Book
	WHERE Customer.custid=Orders.custid AND Orders.bookid=Book.bookid
	AND Customer.name LIKE '추신수';

-- 추신수가 구매한 도서의 이름, 가격, 정가와 판매가격의 차이
SELECT bookname, price, price-saleprice
FROM Customer, Orders, Book
WHERE Customer.custid=Orders.custid AND Orders.bookid=Book.bookid
AND Customer.name LIKE '추신수';

-- 추신수이 구매하지 않은 도서의 이름
SELECT bookname FROM Book b1 WHERE NOT EXISTS
(SELECT bookname FROM Customer, Orders
WHERE Customer.custid=Orders.custid AND Orders.bookid=b1.bookid
AND Customer.name LIKE '추신수');
