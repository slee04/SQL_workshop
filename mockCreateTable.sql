/*customer table*/
SET search_path to test;

CREATE TABLE customer (
    customer_id SERIAL,
    first_name text NOT NULL,
    last_name text NOT NULL,
    email text,
    activebool boolean DEFAULT true NOT NULL,
    create_date date DEFAULT ('now'::text)::date NOT NULL,
    last_update timestamp with time zone DEFAULT now(),
    active integer,
	PRIMARY KEY (customer_id)
);

/*category table*/

CREATE TABLE category (
    category_id SERIAL,
    name text NOT NULL,
    last_update timestamp with time zone DEFAULT now() NOT NULL,
	PRIMARY KEY(category_id)
);

/*language table*/

CREATE TABLE language (
    language_id SERIAL,
    name character(20) NOT NULL,
    last_update timestamp with time zone DEFAULT now() NOT NULL,
	PRIMARY KEY(language_id)
);

/*film table*/

CREATE TABLE film (
    film_id SERIAL,
    title text NOT NULL,
    description text,
    release_year int,
    language_id smallint NOT NULL,
    original_language_id smallint,
    rental_duration smallint DEFAULT 3 NOT NULL,
    rental_rate numeric(4,2) DEFAULT 4.99 NOT NULL,
    length smallint,
    replacement_cost numeric(5,2) DEFAULT 19.99 NOT NULL,
    rating text,
    last_update timestamp with time zone DEFAULT now() NOT NULL,
    special_features text[],
    fulltext tsvector NOT NULL,
	PRIMARY KEY(film_id),
	FOREIGN KEY(language_id) REFERENCES language
);

/*film_category table*/

CREATE TABLE film_category (
    film_id smallint NOT NULL,
    category_id smallint NOT NULL,
    last_update timestamp with time zone DEFAULT now() NOT NULL,
	FOREIGN KEY(film_id) REFERENCES film,
	FOREIGN KEY(category_id) REFERENCES category
);

/*inventory table*/

CREATE TABLE inventory (
    inventory_id SERIAL,
    film_id smallint NOT NULL,
    last_update timestamp with time zone DEFAULT now() NOT NULL,
	PRIMARY KEY(inventory_id),
	FOREIGN KEY(film_id) REFERENCES film
);

/*rental table*/

CREATE TABLE rental (
    rental_id SERIAL,
    rental_date timestamp with time zone NOT NULL,
    inventory_id integer NOT NULL,
    customer_id smallint NOT NULL,
    return_date timestamp with time zone,
    last_update timestamp with time zone DEFAULT now() NOT NULL,
	PRIMARY KEY(rental_id),
	FOREIGN KEY(customer_ID) REFERENCES customer
);