# Базы данных и SQL 
## Урок 1. Установка СУБД, подключение к БД, просмотр и создание таблиц

- ### Создайте таблицу с мобильными телефонами, используя графический интерфейс. Заполните БД данными

- код<br>
USE mysqlsemen;<br>
CREATE TABLE mobale_phones (<br>
  id INT NOT NULL AUTO_INCREMENT,<br>
  product_name VARCHAR(45) NOT NULL DEFAULT,<br>
  manofacturer VARCHAR(45) NOT NULL DEFAULT,<br>
  product_count INT NOT NULL DEFAULT 0,<br>
  price INT NOT NULL DEFAULT 0,<br>
  PRIMARY KEY (id)); <br>

![Текст с описанием картинки](1.png)

#### - заполняем <br>
- код<br>
USE mysqlsemen;<br>
insert into mobale_phones (product_name, manufacturer, product_count, price)<br>
values<br>
('iPhone X', 'Apple', 3, 76000),<br>
('iPhone 8', 'Apple', 2, 51000),<br>
('Galaxy S9', 'Samsung', 2, 56000),<br>
('Galaxy S8', 'Samsung', 1, 41000),<br>
('P20 Pro', 'Huawei', 5, 36000);

![Текст с описанием картинк](2.png)

- ### Выведите название, производителя и цену для товаров, количество которых превышает 2
- код<br>
use mysqlsemen;<br>
select product_name, manufacturer, price <br>
from mobale_phones <br>
where product_count > 2;<br>

![Текст с описанием картинк](3.png)

- ### Выведите весь ассортимент товаров марки “Samsung”
- код<br>
use mysqlsemen;<br>
select product_name, price <br>
from mobale_phones <br>
where manufacturer = "Samsung";<br>

![Текст с описанием картинк](4.png)

- ### найти товары в которых есть упоминание "Iphone"
- код<br>
use mysqlsemen;<br>
select *<br>
from mobale_phones<br>
where product_name regexp  "IPhone";<br>
![Текст с описанием картинк](5.png)

- ### найти товары в которых есть упоминание "Samsung"
- код<br>
use mysqlsemen;<br>
select *<br>
from mobale_phones <br>
where manufacturer regexp  "Samsung";<br>
![Текст с описанием картинк](6.png)

- ### Товары в которых есть цыфры
- код <br>
use mysqlsemen;<br>
select *<br>
from mobale_phones<br> 
where product_name regexp '[0-9]';<br>

![Текст с описанием картинк](7.png)
- ### Товары в которых есть цыфр 8

- код <br>
use mysqlsemen;<br>
select *<br>
from mobale_phones<br>
where product_name regexp '[8]';<br>

![Текст с описанием картинк](8.png)
