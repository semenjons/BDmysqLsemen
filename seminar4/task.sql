-- подсчитать общее колличество лайков, которые получили пользователи младше 12 лет 

select count(*) as "кол-во лайков" from likes
JOIN
profiles  as p 
WHERE p.user_id = likes.user_id AND TIMESTAMPDIFF(YEAR, p.birthday, NOW()) < 12


-- Определить кто больше поставил лайков: мужчины или женщины.

select case (gender)
    when 'm' then 'мужчин'
	when 'f' then 'женщин'
    end as 'кого больше', count(*) as 'лайков'
from profiles p
join likes l
where l.user_id = p.user_id group by gender limit 1;


 -- вывести всех пользователей которые не отправляли сообщенияalter

 select concat(u.firstname, ' ', u.lastname) AS 'Пользователь'
from users as u
    left join messages m on u.id = m.from_user_id
where m.from_user_id is null;


-- Пусть задан некоторый пользователь. Из всех пользователей найти человека, 
-- который больше всех общался с выбранным пользователем.

select u.firstname, u.lastname
from users u
join messages m
where m.from_user_id = u.id AND m.to_user_id = 1 
group by u.firstname, u.lastname
order by count(from_user_id) desc limit 1;