Selezionare tutte le nazioni il cui nome inizia con la P e la cui area è maggiore di 1000 kmq
select name from countries
WHERE name LIKE "P%" and area > 1000


 Contare quante nazioni sono presenti nel database
select COUNT(*) from countries


Selezionare il nome delle regioni del continente europeo, in ordine alfabetico
select c.name from countries c
join regions r ON c.country_id=r.region_id
order by name asc


Contare quante regioni sono presenti nel continente Africa
select count(*)  from regions r
where name like "%Africa"


Selezionare quali nazioni non hanno un national day
select name from countries c
where national_day is null 


Per ogni nazione, in ordine alfabetico, selezionare il nome, la regione e il continente
select c.name,r.name,c2.name from countries c
join regions r on c.country_id=r.region_id
join continents c2 on c.country_id=c2.continent_id
order by c.name asc, r.name asc,c2.name asc 