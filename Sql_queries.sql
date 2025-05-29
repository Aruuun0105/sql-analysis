select*from users limit 5;
select p.name as product,count(oi.order_id) as total_orders from order_items oi join products p on oi.product_id=p.product_id group by p.name 
order by total_orders desc limit 5;
select p.name as product ,sum(p.price) as total_revenue from order_items oi join products p on oi.product_id=p.product_id group by p.name
order by total_revenue desc;
select u.name as user, round(avg(p.price),2) as avg_spent from users u join orders o on u.user_id=o.order_id join order_items oi on o.order_id=
oi.order_id join products p on oi.product_id=p.product_id group by u.name order by avg_spent desc;
select u.name from users u left join orders o on u.user_id=o.user_id where o.order_id is null;
create view user_summary as select u.name , count(o.order_id) as total_orders,sum(p.price) as total_spent from users u join orders o
on u.user_id=o.user_id join order_items oi on o.order_id=oi.order_id join products p on oi.product_id=p.product_id group by u.name;

select*from user_summary;