create database INTERNSHIP;
use INTERNSHIP;

select * from brands;

select customer_id,first_name,last_name, email,city from customers;

select product_id , product_name , list_price from products where model_year="2016";

select product_id , product_name , list_price from products where model_year="2017" order by product_name DESC;

SELECT product_name,COUNT(product_id),sum(list_price) AS Total_Count 
FROM products
GROUP BY product_name
HAVING COUNT(product_id)>1
LIMIT 20;

select SUM(list_price) as Total_List_Price,AVG(list_price) as Average_List_Price,Max(list_price) as Maximum_List_Price,Min(list_price) as Minimum_List_Price
from products 
where model_year="2016";

SELECT o1.order_id,o1.quantity,o1.discount,o2.shipped_date
FROM order_items as o1
INNER JOIN orders as o2
ON o1.order_id=o2.order_id
ORDER BY o1.order_id;


SELECT o1.order_id,o1.quantity,o1.discount,o2.shipped_date
FROM order_items as o1
LEFT JOIN orders as o2
ON o1.order_id=o2.order_id
ORDER BY o1.order_id;



SELECT o1.order_id,o1.quantity,o1.discount,o2.shipped_date
FROM order_items as o1
RIGHT JOIN orders as o2
ON o1.order_id=o2.order_id
ORDER BY o1.order_id;

create view task_4
as
SELECT o1.order_id,o1.quantity,o1.discount,o2.shipped_date
FROM order_items as o1
RIGHT JOIN orders as o2
ON o1.order_id=o2.order_id
ORDER BY o1.order_id;


select * from task_4;

select product_name,model_year
from products
where list_price>=(select avg(list_price) from products);

SHOW INDEX FROM products;

CREATE INDEX new_index_model_year ON products(model_year);
CREATE INDEX new_index_product_id ON products(product_id);
CREATE INDEX new_index_brand_id ON products(brand_id);


SHOW INDEX FROM products;


SELECT p.product_name,p.list_price,b.brand_name
FROM products as p
INNER JOIN brands as b
ON p.brand_id=b.brand_id
ORDER BY p.product_name;

SELECT COUNT(*) AS total_rows
FROM products AS p
INNER JOIN brands AS b
    ON p.brand_id=b.brand_id;


SELECT p.product_name,p.list_price,b.brand_name
FROM products as p
LEFT JOIN brands as b
ON p.brand_id=b.brand_id
ORDER BY p.product_name;


SELECT p.product_name,p.list_price,b.brand_name
FROM products as p
RIGHT JOIN brands as b
ON p.brand_id=b.brand_id
ORDER BY p.product_name;




