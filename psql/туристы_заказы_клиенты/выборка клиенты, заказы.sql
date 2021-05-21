select client_id, count(orders.id)
from orders
where orders.price < 1000
group by client_id
order by client_id



select name, 
(select count(id) from orders where price < 1000 and client_id = c.id) as count1,
(select count(id) from orders where price > 1000 and client_id = c.id) as count2
from clients c 






