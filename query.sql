-- Середня оцінка кожного телефону користувачами 
select model, round(avg(grade), 0) as grade_avg from cellphone, rating
where cellphone.cellphone_id = rating.cellphone_id
group by cellphone.cellphone_id;

-- Кількість оцінок більше 5 для телефонів з операційною системою Android
select os, count(*) from characteristic natural join rating
where grade > 5 and os = 'Android'
group by os;

-- Середня оцінка телефонів чоловіками та жінками
select gender, round(avg(grade), 2) as grade_avg from users natural join rating
group by gender;