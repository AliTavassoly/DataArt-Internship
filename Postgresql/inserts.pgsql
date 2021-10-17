INSERT INTO product(ProductlineID, Name, Scale, vendor, PdtDescription, QtylStock, BuyPrice, MSRP)
VALUES (1, 'Product1', 5, 'vendor1', 'PdtDescription1', 10, 1000, 'MSRP1');

INSERT INTO customer(salesRepEmployeeNum, "Name", LastName, FirstName, Phone, Address1, Address2, City, State, PostalCode, Country, CreditLimit)
VALUES (1, 'ali tavassoly', 'ali', 'tavassoly', '09016307606', 'address1', 'address2', 'yazd', 'yazd-state', 9898, 'Iran', 100000);

INSERT INTO customer(salesRepEmployeeNum, "Name", LastName, FirstName, Phone, Address1, Address2, City, State, PostalCode, Country, CreditLimit)
VALUES (1, 'ali akbari', 'ali', 'akbari', '09016307606', 'address1', 'address2', 'yazd', 'yazd-state', 9898, 'Iran', 100000);

INSERT INTO customer(salesRepEmployeeNum, "Name", LastName, FirstName, Phone, Address1, Address2, City, State, PostalCode, Country, CreditLimit)
VALUES (1, 'reza pishkoo', 'reza', 'pishkoo', '09132312421', 'address1', 'address2', 'tehran', 'tehran-state', 9898, 'Iran', 100000);

INSERT INTO customer(salesRepEmployeeNum, "Name", LastName, FirstName, Phone, Address1, Address2, City, State, PostalCode, Country, CreditLimit)
VALUES (1, 'hassan ahmadi', 'hassan', 'ahmadni', '09132312421', 'azadi', 'address2', 'tehran', 'tehran-state', 9898, 'Iran', 100000);

INSERT INTO customer(salesRepEmployeeNum, "Name", LastName, FirstName, Phone, Address1, Address2, City, State, PostalCode, Country, CreditLimit)
VALUES (1, 'moien ahmadi', 'moien', 'ahmadni', '09132312421', 'afafazadiaafaf', 'address2', 'tehran', 'tehran-state', 9898, 'Iran', 100000);

INSERT INTO "order"(CustomerID, OrderDate, ShippedDate, Status, Comments)
VALUES (1, '2016-06-22 19:10:25-07', '2020-01-01 23:00:34-10', 1, 'will be Delivered by our neighbor');

INSERT INTO "order"(CustomerID, OrderDate, ShippedDate, Status, Comments)
VALUES (2, '2016-06-22 19:10:25-07', '2020-01-01 23:00:34-10', 1, 'will be Delivered by our neighbor');

INSERT INTO "order"(CustomerID, OrderDate, ShippedDate, Status, Comments)
VALUES (3, '2016-06-22 19:10:25-07', '2020-01-01 23:00:34-10', 2, 'will be Delivered by our neighbor');

INSERT INTO "order"(CustomerID, OrderDate, ShippedDate, Status, Comments)
VALUES (1, '2016-06-22 19:10:25-07', '2020-01-01 23:00:34-10', 1, 'will be Delivered by our neighbor');

INSERT INTO "order"(CustomerID, OrderDate, ShippedDate, Status, Comments)
VALUES (2, '2016-06-22 19:10:25-07', '2020-01-01 23:00:34-10', 1, 'will be Delivered by our neighbor');

INSERT INTO order_product(OrderID, ProductCode, Quantity, PriceEach)
VALUES (1, 1, 50, 2000);

INSERT INTO payment(CheckNum, CustomerID, PaymentDate, Amount)
VALUES ('EAFfafadfrEdassaffmgsl', 1, '2018-10-10 02:00:37-02', 50);

INSERT INTO payment(CheckNum, CustomerID, PaymentDate, Amount)
VALUES ('afafafafaf', 1, '2018-10-10 02:00:37-02', 2500);

INSERT INTO payment(CheckNum, CustomerID, PaymentDate, Amount)
VALUES ('1234', 1, '2018-10-10 02:00:37-02', 500);