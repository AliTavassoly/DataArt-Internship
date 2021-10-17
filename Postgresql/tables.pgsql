CREATE TABLE product(
    ID serial PRIMARY KEY,
    ProductlineID INT,
    Name varchar (255),
    Scale INT,
    vendor varchar (255),
    PdtDescription varchar (255),
    QtylStock INT,
    BuyPrice numeric(19, 0),
    MSRP varchar (255)
);

CREATE TABLE customer(
    ID serial PRIMARY KEY,
    salesRepEmployeeNum INT,
    "Name" varchar (255),
    LastName varchar (255),
    FirstName varchar (255),
    Phone varchar (255),
    Address1 varchar (255),
    Address2 varchar (255),
    City varchar (255),
    State varchar (255),
    PostalCode INT,
    Country varchar (255),
    CreditLimit numeric(19, 0)
);

CREATE TABLE "order"(
    ID serial PRIMARY KEY,
    CustomerID INT REFERENCES customer(ID),
    OrderDate timestamp,
    ShippedDate timestamp,
    Status INT,
    Comments varchar (255)
);

CREATE TABLE order_product(
    ID SERIAL PRIMARY KEY,
    OrderID INT REFERENCES "order"(ID),
    ProductCode INT REFERENCES product(ID),
    Quantity INT,
    PriceEach numeric(19, 0)
);

CREATE TABLE payment(
    CheckNum varchar (255) PRIMARY KEY,
    CustomerID INT REFERENCES customer(ID),
    PaymentDate timestamp,
    Amount numeric(19, 0)
);
