ALTER TABLE customers
ADD CONSTRAINT check_age_1 CHECK (age > 18);



ALTER TABLE products
ADD CONSTRAINT check_price_1 CHECK (price>10 AND price<100);


-- Imitate a foreign key
-- MySQL does not have a support for complex subquerries inside of check constraints
-- It is better to use Triggers for those purposes

ALTER TABLE orders
ADD CONSTRAINT check_customer_exists CHECK (customer_id IN (SELECT customer_id FROM customers));


DELIMITER //
-- Imitate a foreign key
CREATE TRIGGER check_customer_on_insert
BEFORE INSERT ON orders
FOR EACH ROW
BEGIN
  DECLARE exist INT;
  SELECT COUNT(*) INTO exist FROM customers WHERE customer_id = NEW.customer_id;
  IF exist = 0 THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Customer does not exist.';
  END IF;
END//

DELIMITER // 
-- A procedure for creating an order in database
CREATE PROCEDURE CreateOrder (IN customer_id_1 INT, IN product_id_1 INT)
BEGIN
  DECLARE available_stock INT;
  DECLARE already_customer INT;
  -- Check if customer exists
  
  SELECT COUNT(*) INTO already_customer FROM customers WHERE customer_id = customer_id_1;
  IF already_customer = 0 THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Customer does not exist.';
  END IF;
  
  -- Check product stock availability
  SELECT stock INTO available_stock FROM products WHERE product_id = product_id_1;
  IF available_stock = 0 THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Product out of stock.';
  END IF;
  -- Insert order if all checks pass
  INSERT INTO orders (customer_id, product_id)
  VALUES (customer_id, product_id);
  
  -- Update product stock (assuming successful order)
  UPDATE products SET stock = stock - 1 WHERE product_id = product_id;
END//

DELIMITER ;
CALL CreateOrder(1,1);
