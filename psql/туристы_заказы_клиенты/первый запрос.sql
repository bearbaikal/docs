select clients.id, clients.name, count(orders.price) from orders
left join clients
on orders.client_id = clients.id
where orders.price != 1000
group by clients.id, clients."name"
order by clients.id


