
select actor  
from actor a2 
left join (
	select
	count(a.actor_id) as qt,
 	concat(a.first_name, ' ',a.last_name) as "actor" ,
 	a.actor_id  
 	from film_actor fa 
		left join (
			select 
			f.title as "titulo do filme",
			f.film_id ,
			count(r.rental_id) as "quantidade"
			from inventory i 
			left join rental r on i.inventory_id = r.inventory_id 
			left join film f on f.film_id = i.film_id 
			group by  f.film_id ,f.title
			order by  quantidade desc 
			limit 16) m on m.film_id = fa.film_id 
		left join actor a on a.actor_id = fa.actor_id 
		where quantidade is not null
		group by actor, a.actor_id
		order by qt desc
		limit 1
 		) n on n.actor_id = a2.actor_id 
where actor is not null





