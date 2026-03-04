--INNER JOIN
---Fetch customer name and their order amount 
select c.customer_name, o.order_amount
from customers c
inner join orders o
on c.customer_id=o.customer_id;

--LEFT JOIN
--Fetch all customers and their orders

select c.customer_name, o.order_amount
from customers c
left join orders o
on c.customer_id=o.customer_id;

--RIGHT JOIN
--Fetch all records even if customer record is missing

select c.customer_name, o.order_amount
from customers c
right join orders o
on c.customer_id=o.customer_id;

--JOIN + GROUP BY
--Find total order amount per customer

select c.customer_name, 
sum(o.order_amount) as total_spent
from customers c
join orders o
on c.customer_id=o.customer_id 
group by customer_name;

--MULTIPLE JOIN
--Fetch customer name , order amount, and payment status

select c.customer_name, 
       o.order_amount,
       p.payment_status
from customers c
join orders o
on c.customer_id=o.customer_id
join payments p
on o.order_id = p.order_id;

--LEFT JOIN with NULL condition
--Find customer who never placed any order

select c.customer_name, o.order_amount
from customers c
left join orders o
on c.customer_id=o.customer_id
  where o.order_id is null;
















