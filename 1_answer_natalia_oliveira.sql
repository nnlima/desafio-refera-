
select 
f.title as "titulo do filme",
count(r.rental_id) as "quantidade"
from inventory i 
left join rental r on i.inventory_id = r.inventory_id 
left join film f on f.film_id = i.film_id 
group by  f.title
order by  quantidade desc 
limit 2
