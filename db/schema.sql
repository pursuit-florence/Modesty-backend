DROP DATABASE IF EXISTS themodestydb;
CREATE DATABASE themodestydb;

\c themodestydb;



CREATE TABLE products (
  product_id SERIAL PRIMARY KEY,
  name TEXT,
  description TEXT,
  price DECIMAL(10,2) NOT NULL,
  color VARCHAR(50) DEFAULT 'N/A',
  size VARCHAR(20) DEFAULT 'M',
  image_url TEXT,
  type TEXT NOT NULL,
  category_id INT NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (category_id) REFERENCES category (category_id) ON DELETE CASCADE
);

CREATE TABLE category(
  category_id SERIAL PRIMARY KEY,
  name TEXT,
  description TEXT
);
-- CREATE TABLE orders (
--   orders_id SERIAL PRIMARY KEY,
--   customer_id INT NOT NULL,
--   order_date TEXT,
--   total_amount INT
-- );

-- CREATE TABLE customer (
-- customer_id SERIAL PRIMARY KEY,
-- name TEXT,
-- email TEXT,
-- address TEXT,
-- phone INT
--);







