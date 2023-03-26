CREATE DATABASE seminar_2;
use seminar_2;
--1. Используя операторы языка SQL, создайте табличку “sales”. Заполните ее данными
CREATE Table sales
(
	id int auto_increment primary key,
	order_date date not null,
	count_product INT DEFAULT 0
);
INSERT INTO sales(order_date, count_product)
values ("2022-01-01", '156')
('2022-01-02', 180),
('2022-01-03', 21),
('2022-01-04', 124),
('2022-01-05', 341);

--2. Сгруппируйте значений количества в 3 сегмента — меньше 100, 100-300 и больше 300.
select id as 'id заказа',
case
            when count_product < 100 then 'Маленький заказ'
            when count_product between 100 and 300 then 'Средний заказ'
            when count_product > 300 then 'Большой заказ'
            else 'Не определено'
      and as 'Тип заказа'
from sales;
CREATE TABLE orders(
      id INT auto_increment PRIMARY KEY,
      employee_id varchar(10) not null,
      amount decimal(10, 2),
      order_status varchar(9)
);
--3. Создайте таблицу “orders”, заполните ее значениями. Покажите “полный” статус заказа, используя оператор CASE
INSERT INTO orders(employee_id, amount, order_status)
values ('e03', 15.00, 'OPEN'),
      ('e01', 25.50, 'OPEN'),
      ('e05', 100.70, 'CLOSED'),
      ('e02', 22.18, 'OPEN'),
      ('e04', 9.50, 'CANCELLED');
select id as 'id заказа',
      employee_id as 'Employee',
case
            when order_status = 'OPEN' then 'Order is in open state'
            when order_status = 'CLOSED' then 'Order is closed'
            when order_status = 'CANCELLED' then 'Order is cancelled'
            else 'Не определено'
      end as 'full_order_status'
from orders;
-- 4. Чем NULL отличается от 0?
-- значение NULL означает отсутствие данных, a 0 - это арифметическое значение. 