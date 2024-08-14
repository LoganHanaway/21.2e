-- Comments in SQL Start with dash-dash --
-- Add a product with the name "chair", price 44.00, and can_be_returned false
INSERT INTO products (name, price, can_be_returned) 
VALUES ('chair', 44.00, FALSE);

-- Add a product with the name "stool", price 25.99, and can_be_returned true
INSERT INTO products (name, price, can_be_returned) 
VALUES ('stool', 25.99, TRUE);

-- Add a product with the name "table", price 124.00, and can_be_returned false
INSERT INTO products (name, price, can_be_returned) 
VALUES ('table', 124.00, FALSE);

-- Display all rows and columns
SELECT * FROM products;

-- Display all product names
SELECT name FROM products;

-- Display all product names and prices
SELECT name, price FROM products;

-- Add a new product, e.g., "lamp" with price 30.00 and can_be_returned true
INSERT INTO products (name, price, can_be_returned) 
VALUES ('lamp', 30.00, TRUE);

-- Display products that can be returned
SELECT * FROM products WHERE can_be_returned = TRUE;

-- Display products with price less than 44.00
SELECT * FROM products WHERE price < 44.00;

-- Display products with price between 22.50 and 99.99
SELECT * FROM products WHERE price BETWEEN 22.50 AND 99.99;

-- Apply a $20 discount to all products
UPDATE products SET price = price - 20;

-- Remove products with price less than 25.00
DELETE FROM products WHERE price < 25.00;

-- Increase all remaining product prices by $20
UPDATE products SET price = price + 20;

-- Update all products to be returnable
UPDATE products SET can_be_returned = TRUE;
