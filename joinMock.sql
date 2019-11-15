SELECT
  f.*,
  fc.*,
  ca.*,
  l.*,
  i.inventory_id, 
  i.film_id, 
  i.last_update,
  r.inventory_id,
  r.rental_id,
  r.rental_date,
  r.customer_id,
  r.return_date,
  r.last_update,
  cu.customer_id,
  cu.first_name,
  cu.last_name,
  cu.email,
  cu.activebool,
  cu.create_date,
  cu.active,
  cu.last_update
  
FROM
  public.film f
  LEFT JOIN public.film_category fc
  	ON f.film_id = fc.film_id
  LEFT JOIN public.category ca
    ON fc.category_id = ca.category_id
  LEFT JOIN public.language l
  	ON f.language_id = l.language_id
  LEFT JOIN public.inventory i
    ON f.film_id = i.film_id
  LEFT JOIN public.rental r
  	ON i.inventory_id = r.inventory_id
  LEFT JOIN public.customer cu
  	ON r.customer_id = cu.customer_id
LIMIT
  5