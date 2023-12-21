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
join regions r on c.region_id =r.region_id
join continents c2 on r.continent_id=c2.continent_id 
order by c.name asc

Selezionare le lingue ufficiali dell’Albania
select language_id from country_languages
where country_id=5 and official=1 

Selezionare il Gross domestic product (GDP) medio dello United Kingdom tra il 2000 e il 2010
select c.name,cs.gdp from country_stats cs 
join countries c on cs.country_id=c.country_id
where (c.name="United States") and (cs.`year` >2000 and cs.`year` <2010)


Selezionare tutte le nazioni in cui si parla hindi, ordinate dalla più estesa alla meno estesa
select * from countries c 
join country_languages cl on c.country_id=cl.country_id
join languages l on cl.language_id=l.language_id
where l.`language`="Hindi"
order by c.area desc


Modificare la nazione di nome Italy, inserendo come national day il 2 giugno 1946
UPDATE countries 
SET national_day ='1946-06-02'
WHERE name='Italy';