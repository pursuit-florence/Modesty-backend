\c themodestydb;
INSERT INTO category (name, description)
VALUES
  ('Women', 'Clothing and accessories for women'),
  ('Men', 'Clothing and accessories for men'),
  ('Kids', 'Clothing and accessories for kids');

-- Seed data for the products table
INSERT INTO products (name, description, price, color, size, image_url, type, category_id)
VALUES
  ('Classic White T-shirt', 'A basic white t-shirt for everyday wear', 19.99, 'White', 'M', 'https://example.com/white_tshirt.jpg', 'T-shirt', 1),
  ('Slim Fit Blue Jeans', 'Stylish and slim-fit jeans for a trendy look', 49.99, 'Blue', 'M', 'https://example.com/blue_jeans.jpg', 'Jeans', 2),
  ('Floral Maxi Dress', 'A beautiful floral print maxi dress for special occasions', 79.99, 'Multi-color', 'M', 'https://example.com/floral_dress.jpg', 'Dress', 1),
  ('Casual Sneakers', 'Comfortable and casual sneakers for everyday use', 39.99, 'Black', 'M', 'https://example.com/sneakers.jpg', 'Shoes', 2),
  ('Statement Necklace', 'A stunning statement necklace to elevate your outfits', 29.99, 'Gold', 'N/A', 'https://example.com/necklace.jpg', 'Accessory', 3),
  ('Striped Polo T-shirt', 'A stylish striped polo t-shirt for a smart-casual look', 29.99, 'Black/White', 'L', 'https://example.com/polo_tshirt.jpg', 'T-shirt', 2),
  ('Ripped Denim Shorts', 'Trendy and comfortable ripped denim shorts for summer', 34.99, 'Blue', 'S', 'https://example.com/denim_shorts.jpg', 'Jeans', 3),
  ('Sleeveless Maxi Dress', 'A sleeveless maxi dress with a flowing silhouette', 69.99, 'Purple', 'M', 'https://example.com/maxi_dress.jpg', 'Dress', 1),
  ('Classic Oxford Shoes', 'Timeless and versatile Oxford shoes for formal occasions', 89.99, 'Brown', 'M', 'https://example.com/oxford_shoes.jpg', 'Shoes', 2),
  ('Cute Kids T-shirt', 'A cute and comfortable t-shirt for kids', 14.99, 'Yellow', 'S', 'https://example.com/kids_tshirt.jpg', 'T-shirt', 3);