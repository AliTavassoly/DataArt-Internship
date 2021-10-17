CREATE OR REPLACE FUNCTION get_orders(name varchar(255))
  RETURNS TABLE (OrderID INT)
  LANGUAGE plpgsql AS
$func$
BEGIN
   RETURN QUERY
   SELECT "order".id FROM customer INNER JOIN "order" ON (customer.id = "order".customerid)
        WHERE customer.firstname = name;
END
$func$;