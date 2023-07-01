select *from film
order by title  desc
limit 3

--select * from table
--offset start rows
--fetch first rows 

select film_id,title from film
order by title  asc 
fetch first row only

select film_id,title from film
order by title asc 
fetch first 5 row only --istedgimiz rakamı yazabilizi 5 yerine.

select film_id,title from film
order by  title
offset 5 rows
fetch first 5 row only 

select * from rental
select customer_id,rental_id,return_date from rental
where customer_id In (2,3,4) -- customer_id=2 or  customer_id=3 or customer_id=5
order by return_date desc--z den a ya dogru gşdştyor buyukten küçüge dogru.


select customer_id,rental_id,return_date from rental
where customer_id not in(2,3,4)
order by return_date desc


select customer_id,rental_id,return_date from rental
where customer_id <> 2 and customer_id<>3 and customer_id <> 4 and customer_id <> 5
order by customer_id 
 

select * from payment
where amount between 8 and 9 -- ikiside dahil


select * from payment
where amount not between 8 and 9


select payment_date,amount from payment 
where payment_date between '2007-02-07' and '2007-02-15' 


select payment_date from payment 
where payment_date between '2007-02-07' and '2007-02-15' 

select first_name ,last_name from customer
where first_name like 'Jen%'

select first_name ,last_name from customer
where first_name not like 'Jen%'

 select first_name,last_name from customer
 where first_name like '%en%'


select first_name ,last_name from customer 
where first_name like '__er%'

select first_name ,last_name from customer
where first_name like '__e__'

select first_name,last_name from customer
where first_name like 'Jen__'

select first_name ,last_name from customer
where first_name like '%__an'--% işaret sayseinde 4 den fazla karekterli bir isim oldugunu anlıyoruz.

select first_name from customer
where first_name ilike 'Bar%' --ilike saysinde karakter uyumuna bakılmaz.


--joinsler rdbm relesional database ,
--iki tabloyu birbirine baglarız birlşeitirmelerden bir veri elde ediilmesidir.


CREATE TABLE sepet_a(
          a int primary key,
          fruit_a varchar(100) not null
);

CREATE TABLE sepet_b(
          b int primary key,
         fruit_b varchar(100) not null
);
select * from sepet_a
select * from sepet_b


select * from film

insert into sepet_a (a,fruit_a)
values
(1,'Apple'),
(2, 'Orange'),
(3, 'banana'),
(4, 'cucumber')

select * from sepet_a

insert into sepet_b(b,fruit_b)
values
(1,' Orange'),
(2,'Apple'),
(3,'Carrot'),
(4,'Banana')

select * from sepet_a
select * from sepet_b

select * from sepet_a 
inner join sepet_b
on fruit_a=fruit_b


select * from sepet_a
left join sepet_b 
on fruit_a= fruit_b

select * from sepet_a
right join sepet_b 
on fruit_a=fruit_b


select * from sepet_a
full join sepet_b
on fruit_a=fruit_b

select * from sepet_a
left join sepet_b
on fruit_a =fruit_b
where fruit_b is null


select * from sepet_a
right join sepet_b
on fruit_a=fruit_b
where fruit_a is null

select * from sepet_a
full join sepet_b
on fruit_a=fruit_b
where fruit_a is null or fruit_b is null


select * from customer
select * from payment
select customer.customer_id,first_name,last_name,amount,payment_date from customer 
inner join payment 
on customer.customer_id=payment.customer_id 
order by payment_date asc

select * from customer-- first name columuu sadece customerdea oldugu için cutomer.first_name dememize gerek yok.

select customer.customer_id,first_name,last_name,amount,payment_date from customer 
inner join payment 
on customer.customer_id=payment.customer_id 
order by payment_date asc
where customer.customer_id=5;


select c.customer_id,first_name,last_name,amount,payment_date from customer c
inner join payment  p
on c.customer_id=p.customer_id
where c.customer_id=5

select c.customer_id,first_name,last_name,amount,payment_date from customer c
inner join payment
using(customer_id)--on c.customer_id=p.customer_id
where c.customer_id=5

select c.customer_id c_c_id,c.first_name c_f_n,c.last_name c_l_n,amount,payment_date from customer c
inner join payment p --burda birden fazla tablonun içindeki ortak degerin nasıl birleştirilecegini gösteriri.
on c.customer_id=p.customer_id
inner join staff s
on s.staff_id=p.staff_id 



select * from film

select  * from inventory

select * from film 
inner join  inventory
on film.film_id=inventory.film_id

select *from film f
left join inventory i
using(film_id)
 
 select f.film_id ,inventory_id,title from film f
 left join inventory i
 using(film_id)
 
select f.film_id ,inventory_id,title from film f
left join inventory i
on f.film_id=i.film_id
where i is null
 

select c.first_name ||''||c.last_name as full_name,c.email,a.address,ct.city,cnt.country from customer c
left join  address a
on c.address_id=a.address_id
left join city ct
on ct.city_id=a.city_id
left join country cnt
on ct.country_id=cnt.country_id


*film_title,lanugage,hangş categıprde

select  film f,film_category fc,language l from film
left join film f
on fc.film_id=f.film_id
left join language l
on f.language_id=l.language_id


select title,l.name,c.name from film f
left join language l
on l.language_id=f.language_id
left join film_category fc
using(film_id)
left join  category c
using(category_id)

 
select * from film
 
 
 
 
 
 
 
 































