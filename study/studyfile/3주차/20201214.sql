select bookname, price
from book;

select price, bookname
from book;

select publisher
from book;

select distinct publisher
from book; 

select *
from book
where price< 20000;

select *
from book
where price<= 20000 and price>=10000;

select *
from book
where price between 10000 and 20000;

select *
from book
where publisher like '정론사' or publisher like '새미디어';

select *
from book
where publisher in('정론사', '새미디어');

select *
from book
where publisher in('정론사', '새미디어');

select publisher
from book
where bookname like '철락의 역사';

select publisher, bookname
from book
where bookname like '%_급';

select *
from book
where bookname like '%썬%' and price <= 20000;

