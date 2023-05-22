\c themodestydb;
INSERT INTO category (name, description)
VALUES
  ('Women', 'Clothing and accessories for women'),
  ('Men', 'Clothing and accessories for men'),
  ('Kids', 'Clothing and accessories for kids');

-- Seed data for the products table
INSERT INTO products (name, description, price, color, size, image_url, type, category_id)
VALUES
  -- Category 1: Women
  ('Classic White T-shirt', 'A basic white dashiki shirt for everyday wear', 349.99, 'White', 'M', 'https://slimages.macysassets.com/is/image/MCY/products/9/optimized/24170659_fpx.tif?op_sharpen=1&wid=700&hei=855&fit=fit,1&fmt=webp', 'T-shirt', 1),
  ('Belted brownish flower Dress', 'A beautiful belted flowery  dress for special occasions', 79.99, 'Multi-color', 'M', 'https://slimages.macysassets.com/is/image/MCY/products/9/optimized/24499589_fpx.tif?op_sharpen=1&wid=700&hei=855&fit=fit,1&fmt=webp', 'Dress', 1),
  ('Statement Necklace', 'A stunning statement necklace to elevate your outfits', 269.99, 'Gold', 'N/A', 'https://slimages.macysassets.com/is/image/MCY/products/1/optimized/24230611_fpx.tif?op_sharpen=1&wid=700&hei=855&fit=fit,1&fmt=webp', 'Accessory', 1),
  ('Striped Polo T-shirt', 'A stylish striped polo t-shirt for a smart-casual look', 69.99, 'Black/White', 'L', 'https://slimages.macysassets.com/is/image/MCY/products/6/optimized/23273266_fpx.tif?op_sharpen=1&wid=700&hei=855&fit=fit,1&fmt=webp', 'T-shirt', 1),
  ('Sleeveless Maxi Dress', 'A sleeveless maxi dress with a flowing silhouette', 69.99, 'Bright rose', 'M', 'https://slimages.macysassets.com/is/image/MCY/products/0/optimized/24186060_fpx.tif?op_sharpen=1&wid=700&hei=855&fit=fit,1&fmt=webp', 'Dress', 1),
  ('Classic Oxford Shoes', 'Timeless and versatile Oxford shoes for formal and casual occasions', 89.99, 'White', 'M', 'https://slimages.macysassets.com/is/image/MCY/products/3/optimized/23655843_fpx.tif?op_sharpen=1&wid=700&hei=855&fit=fit,1&fmt=webp', 'Shoes', 1),
  ('Cute Maxi skirts', 'A cute and comfortable pecan maxi skirt', 114.99, 'Pecan', 'S', 'https://slimages.macysassets.com/is/image/MCY/products/3/optimized/23702843_fpx.tif?op_sharpen=1&wid=700&hei=855&fit=fit,1&fmt=webp', 'skirt', 1),
  ('Printed Tiered Smocked-Back Challis', 'A beautiful floral print maxi dress for special occasions', 79.99, 'Multi-color', 'M', 'https://slimages.macysassets.com/is/image/MCY/products/0/optimized/24399940_fpx.tif?op_sharpen=1&wid=700&hei=855&fit=fit,1&fmt=webp', 'Dress', 1),
  ('Embellished Satin Gown', 'An elegant satin evening gown for formal events', 149.99, 'Mocha', 'M', 'https://slimages.macysassets.com/is/image/MCY/products/0/optimized/18046040_fpx.tif?op_sharpen=1&wid=700&hei=855&fit=fit,1&fmt=webp', 'Dress', 1),
  ('Wide-Brim Straw Hat', 'A fashionable wide-brim straw hat for sun protection', 79.99, 'Caramel', 'N/A', 'https://slimages.macysassets.com/is/image/MCY/products/0/optimized/21753780_fpx.tif?op_sharpen=1&wid=700&hei=855&fit=fit,1&fmt=webp', 'Accessory', 1),

  -- Category 2: Men
  ('Casual Men Sneakers', 'comfortable and casual sneakers for everyday use', 99.99, 'Black', 'M', 'https://slimages.macysassets.com/is/image/MCY/products/2/optimized/23681512_fpx.tif?op_sharpen=1&wid=700&hei=855&fit=fit,1&fmt=webp','Shoe', 2),
  ('Classic White Shirt', 'A classic white shirt for formal and casual occasions', 119.99, 'White', 'L', 'https://slimages.macysassets.com/is/image/MCY/products/3/optimized/10789153_fpx.tif?op_sharpen=1&wid=700&hei=855&fit=fit,1&fmt=webp', 'Shirt', 2),
  ('Leather Biker Jacket', 'A fashionable leather biker jacket for a cool look', 129.99, 'Yellow', 'M', 'https://slimages.macysassets.com/is/image/MCY/products/9/optimized/16551659_fpx.tif?op_sharpen=1&wid=700&hei=855&fit=fit,1&fmt=webp', 'Jacket', 2),
  ('Slim Fit Denim Jeans', 'Trendy and slim-fit denim jeans for a stylish look', 69.99, 'Blue Stone', 'M', 'https://slimages.macysassets.com/is/image/MCY/products/2/optimized/2807202_fpx.tif?op_sharpen=1&wid=700&hei=855&fit=fit,1&fmt=webp', 'Jeans', 2),
  ('Men Kallum Cap Toe Oxfords Shoes', 'Elegant and formal dress shoes for special occasions', 150.99, 'Black', 'M', 'https://slimages.macysassets.com/is/image/MCY/products/4/optimized/23898254_fpx.tif?op_sharpen=1&wid=700&hei=855&fit=fit,1&fmt=webp', 'Shoes', 2),
  ('Men Classic-Fit Striped Mesh Polo Shirt', 'A comfortable and casual striped t-shirt', 24.99, 'White multi', 'M', 'https://slimages.macysassets.com/is/image/MCY/products/7/optimized/23746617_fpx.tif?op_sharpen=1&wid=700&hei=855&fit=fit,1&fmt=webp', 'T-shirt', 2),
  ('Men Classic-Fit Plaid Short-Sleeve Shirt', 'A stylish plaid button-up shirt for a smart-casual look', 39.99, 'Shore rose', 'L', 'https://marvel-b1-cdn.bc0a.com/f00000000243010/www.haggar.com/dw/image/v2/BBND_PRD/on/demandware.static/-/Sites-master-catalog-haggar/default/dwf649dcc1/images/hi-res/HW00544_603.jpg?sw=446&sh=641&sm=cut', 'Shirt', 2),
  ('Men Tommy Logo Sweatshort', 'Comfortable and breathable cotton shorts for summer', 34.99, 'White', 'M', 'https://slimages.macysassets.com/is/image/MCY/products/3/optimized/24120753_fpx.tif?op_sharpen=1&wid=700&hei=855&fit=fit,1&fmt=webp', 'Shorts', 2),
  ('Slim Fit African Print Pants', 'Stylish and slim-fit pants for a trendy look', 49.99, 'Blue', 'M', 'https://litb-cgis.rightinthebox.com/webp_desc_image/202302/bps/desc/inc/wmyfye1676361485771.jpg?com=1&fmt=webp&v=1', 'Pants', 2),

  -- Category 3: Kids
  ('Cute Animal Print T-shirt', 'A cute t-shirt with animal print for kids', 14.99, 'Navy Blue', 'S', 'https://slimages.macysassets.com/is/image/MCY/products/0/optimized/23225970_fpx.tif?op_sharpen=1&wid=700&hei=855&fit=fit,1&fmt=webp', 'T-shirt', 3),
  ('Rain Set Dusty Pink & Grey - Toddler|Child', 'A colorful raincoat for protection from rain', 29.99, 'Multi', 'M', 'https://slimages.macysassets.com/is/image/MCY/products/0/optimized/23701850_fpx.tif?op_sharpen=1&wid=700&hei=855&fit=fit,1&fmt=webp', 'Coat', 3),
  ('Kids Denim Overalls', 'Adorable denim overalls for a trendy and playful look', 39.99, 'Light Blue', 'S', 'https://slimages.macysassets.com/is/image/MCY/products/4/optimized/23948984_fpx.tif?op_sharpen=1&wid=700&hei=855&fit=fit,1&fmt=webp', 'Overalls', 3),
  ('Kids Prints 2-in-1 Backpack & Lunch Bag - Unicorn', 'A cute backpack featuring popular cartoon characters', 19.99, 'Multi', 'N/A', 'https://slimages.macysassets.com/is/image/MCY/products/9/optimized/18701019_fpx.tif?op_sharpen=1&wid=700&hei=855&fit=fit,1&fmt=webp', 'Accessory', 3),
  ('Sporty Tracksuit', 'A sporty tracksuit for active kids', 49.99, 'Pink', 'M', 'https://slimages.macysassets.com/is/image/MCY/products/8/optimized/22030998_fpx.tif?op_sharpen=1&wid=700&hei=855&fit=fit,1&fmt=webp', 'Tracksuit', 3),
  ('Printed Leggings', 'Colorful and printed leggings for girls', 24.99, 'Pink', 'M', 'https://slimages.macysassets.com/is/image/MCY/products/9/optimized/23327089_fpx.tif?op_sharpen=1&wid=700&hei=855&fit=fit,1&fmt=webp', 'Leggings', 3),
  ('Casual Sneakers', 'Comfortable and casual sneakers for kids', 34.99, 'White', 'M', 'https://slimages.macysassets.com/is/image/MCY/products/6/optimized/22816986_fpx.tif?op_sharpen=1&wid=700&hei=855&fit=fit,1&fmt=webp', 'Shoes', 3),
  ('Cotton Polo T-shirt', 'A comfortable cotton polo t-shirt for boys', 19.99, 'Multi', 'L', 'https://slimages.macysassets.com/is/image/MCY/products/3/optimized/24044473_fpx.tif?op_sharpen=1&wid=700&hei=855&fit=fit,1&fmt=webp', 'T-shirt', 3),
  ('Kids Denim Jacket', 'Stylish and trendy denim jacket for kids', 44.99, 'Blue', 'M', 'https://slimages.macysassets.com/is/image/MCY/products/2/optimized/14621522_fpx.tif?op_sharpen=1&wid=700&hei=855&fit=fit,1&fmt=webp', 'Jacket', 3),
  ('Colorful Sneakers', 'Vibrant and colorful sneakers for kids', 29.99, 'Multicolor', 'M', 'https://slimages.macysassets.com/is/image/MCY/products/7/optimized/23985557_fpx.tif?op_sharpen=1&wid=700&hei=855&fit=fit,1&fmt=webp', 'Shoes', 3);