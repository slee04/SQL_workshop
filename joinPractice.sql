/*practice select/equijoin statements*/

/*select number 1*/

SELECT
  public.film.title,
  public.customer.first_name,
  public.customer.last_name
FROM
  public.film,
  public.inventory,
  public.rental,
  public.customer
WHERE
  public.film.film_id = public.inventory.film_id
  AND public.inventory.inventory_id = public.rental.inventory_id
  AND public.rental.customer_id = public.customer.customer_id
  AND (
	  public.film.title = 'Caddyshack Jedi'
	  OR public.film.title = 'Born Spinal'
  )

/*select number 2*/

SELECT
  customer.first_name,
  customer.last_name
FROM
  city,
  customer,
  address
WHERE
  customer.address_id = address.address_id
  AND address.city_id = city.city_id
  AND city = 'Vancouver'

/*select number 3*/

SELECT
  customer.first_name,
  customer.last_name,
  payment.amount
FROM
  payment,
  customer
WHERE
  customer.customer_id = payment.customer_id
  AND amount > 10.00