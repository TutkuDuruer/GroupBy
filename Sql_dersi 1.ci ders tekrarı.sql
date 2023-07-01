--select  first_name from customer
--select first_name,last_name,email from customer -- birden fazla alanıda getirmesini saglıyabilirm.
--select * from customer  --customer tablosundaki tüm coloumları getirdi.
--select first_name ||' '|| last_name ,email from customer --aradaki koşugu kendimiz ayarlıyabiriliz.
--select 5*3,5+3

--select 5+3
select last_name |''| last name,email from customer  -- colouma isim vericegiz bu alligns oluyor coloums aliens
select first_name,last_name  from customer 
select first_name,last_name as surname from customer 
select first_name as name,last_name as surname,email from customer
select first_name ||''|| last_name as total_name ,email from customer
select first_name ||' '|| last_name full_name ,email from customer 
select first_name ||''|| last_name as "full name" ,email from customer -- eger ismi ,bir boşluk bırakacak şekilde yeniden tanımlamak istersek bu şekilde kullanabiliriz.

--order by sort experssion asc azaaln desc,defaulta büyükten küçüge dogru olur.
select * from customer 
select first_name from customer
order by first_name asc --artarak a küçüktür z en büyüktür en büyük z ile başyalyıp a ya dogru gidicek

select first_name from customer 
order by first_name desc

select first_name from customer
order by first_name 


select first_name,last_name from customer 
order by first_name desc ---isme göre sıralıyoruz bu yüzden de en önce first_name'ı görürüz ikisi birlikte gelir.
--tüm row hareket eder.,bir row'u hareket eder 

select email,address_id,activebool from customer
order by email desc --büyükten küçüge.

select first_name,last_name from customer 
order by first_name asc,last_name desc --ilk yazdıgım sıralama ikinic sıralamayı ezer.

select first_name,length(first_name) as len  from customer 
order by len asc


--order by sort expression desc,asc Null first,null last
--adress2 deki ilk 4 deger null digerlei dolu.

select * from address
order by address2 nulls first --önce null getirdi sonra sıraladı adress2 ye göre

select *from address
order by address2 nulls last

--bir columun içinde birden çok geçebilir mesela ali isim 100 kez gecer biz bunu birkez görmek isterizo t
-- o yuzden distinct kullanırız.
--select distinct coloumn1,column2 form  customer

select *from rental
--kaç unique çalışan
select distinct staff_id from rental
select * from rental

select distinct staff_id,customer_id from rental
order by staff_id,customer_id

--1 numaralı çalışan 1 numaralı müşteriye çeşitli malzemeler atmış olabilir.

--filtereleme için where kullanılır.son 1 yılda yapılan satışa

--select *from table 
--where condition
--order by sort_expression

select * from country

select distinct country as d_country from country --distinct coloumı etkiliyırdu.Bu yüzden distinci buraya getirmeliyiz.
order by d_country desc


--100 tane satış yapan adamı bul,=,<,>,>=,<= kullnıyruz.<>,!=
-- and, or ,in ,between 12.05.2023and12.02.2021 ,
--like,ilike içinde e geçenleri bana getirderken kullnılır.
--not
--is null+where
--is not null
select *from customer 
select first_name,last_name from customer
where first_name= 'Jamie' --str ifadelerinde lowercase and ıppercase'e duyarlıdır.

select first_name,last_name from customer 
where first_name='Jamie' and last_name='Rice' 

select first_name,last_name from customer
where last_name='Rodriguez' or first_name='Adam'

select first_name from customer
where first_name='Adam' or first_name='Laura' or first_name='Andy'

select first_name,last_name from customer 
where first_name In ('Laura','Andy','Adam')-In operatoru,or opetrorunun çok sayıda kullanılmasını engelemek için kullanılır.


select first_name,last_name from customer
where first_name like 'Ann%'-- ann ile başlasın sonrasında ne gelirse gelsin önemli degil demekitr.


select first_name,length(first_name) as len 
from customer
where first_name like 'A%' and 
--len  between 3 and 5 buşekilde dresek hata gelir altta açıkladım sebebini
length(first_name ) between 3 and 5
order by len
-- columnslara vermiş oldugum alians üzerinden ayni as len gibi ,
--iki coloumunu birşleştir şunu yap bunu yap degimin üzerinden bu sorgu üzerinden oluşturduum herhangibirsey üzerinden where condition kullanamıyorum.
--bunu where in içerisinde kullanamayız.
--bunu alta sorgu haline getirip o şekilde kullanabilriz


select first_name ,last_name from customer 
where first_name like '%a'

select first_name ,last_name from customer
where first_name like '%tina'

select first_name ,last_name from customer
where first_name like '%tina%'



select title,release_year,rental_duration,rental_rate,length,rating from film
where release_year=2006 and rental_duration between 3 and 6 
and rental_rate<=2.99 and length!= 101  and rating In ('NC-17','R','PG-13') and(title like '%I' or title like '%t')
order by title desc


--select *from customer
--where 
--order 
--limit ilk kaç satırı istedigmiz row_count(5) ilk beş satırı geitir
--offset()

select * from film
order by film_id
limit 5;

select * from film
order by film_id
limit 4 offset 3

select *from film
order by film_id desc
limit 5








































