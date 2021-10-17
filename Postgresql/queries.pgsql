-- 1
-- This task is covered in tables.pgsql file

-- 2
ALTER TABLE Customer
DROP COLUMN PostalCode;

-- 3
UPDATE payment
SET amount = 2500
WHERE checknum = '1234';

-- 4
SELECT * FROM customer
WHERE city = 'tehran';

-- 5
SELECT lastname FROM customer
WHERE address1 LIKE '%azadi%';

-- 6
SELECT customer.firstname FROM customer INNER JOIN "order" ON (customer.id = "order".customerid)
WHERE "order".id = 4;

-- 7
-- The function declaration is in functions.pgsql
-- Here is the query that uses the function:
SELECT * FROM get_orders('tavassoly');

-- 8
SELECT customer_name as "Customer Name", customer_lastname as "Customer Lastname", product_name as "Product Name", total as "Total Price" FROM
    (SELECT customer1.firstname as customer_name, customer1.lastname as customer_lastname, product1.name as product_name, quantity * priceeach AS total FROM order_product
    INNER JOIN "order" AS order1 ON order_product.orderid = order1.id
    INNER JOIN customer AS customer1 ON customer1.Id = order1.customerid
    INNER JOIN product AS product1 ON productcode = product1.ID) as order_product_customer
    WHERE order_product_customer.total > 1000 
        AND NOT EXISTS(SELECT customerID FROM payment WHERE paymentdate < '2019-01-01'::date);