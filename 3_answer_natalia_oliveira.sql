
select 
data_client , 
count(n.customer_id)  
from customer c 
left join (
	select c.customer_id , 
	to_char(min(r.rental_date),
	'MM-YYYY') as data_client from rental r 
left join customer c on c.customer_id = r.customer_id 
group by c.customer_id) n on n.customer_id = c.customer_id 
group by data_client

