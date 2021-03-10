select *
from customer, orders;

select *
from customer, orders
where customer.custid = orders.custid;

select *
from customer, orders
where customer.custid = orders.custid
order by customer.custid desc;

select name, sum(saleprice)
from customer, orders
where customer.custid = orders.custid
group by customer.name;

select name, sum(saleprice)
from customer, orders
where customer.custid = orders.custid
group by customer.name
order by customer.name;

select customer.name, book.bookname, saleprice
from customer, orders, book
where customer.custid = orders.custid
      and orders.bookid = book.bookid;
      
select customer.name, book.bookname, saleprice
from customer, orders, book
where customer.custid = orders.custid
      and orders.bookid = book.bookid
      and book.price >= 20000;
      
select customer.name, saleprice
from customer left outer join orders
     on customer.custid = orders.custid
order by customer.name, saleprice;
      
select name
from customer
where custid in (select custid
			 from orders
             where bookid in( select bookid
							  from book
                              where publisher='새미디어'));

              
select b1.bookname, publisher, price
from book b1
where b1.price>( select avg(b2.price)
				 from book b2
                 where b2.publisher = b1.publisher);
              
              
select *
from customer;

select name, address
from customer
where address like '대한민국%'        
         
union

select name, address
from customer
where custid in (select custid from orders);

select name
from customer inner join orders on orders.custid = customer.custid
where address like '대한민국%';  