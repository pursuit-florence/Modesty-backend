const db = require('../db/dbConfig')

//index
const getAllProductsByCategory = async (id)=>{
  try{
    const allProducts = await db.any("SELECT * FROM products where category_id= $1", [id])
    console.log(allProducts)
    return allProducts;
  }catch (err){
    return err
  }
};

//show
const getProductByCategory = async (categoryId,productId)=>{
  try{
    const category = await db.one("SELECT * FROM products WHERE category_id = $1 and product_id = $2",[categoryId,productId])
    return category;
  }catch (error){
    return {error:"error"}
  }
}


//create
const createProduct = async(product,categoryId) =>{
  try{
    const newProduct = await db.one(`INSERT INTO products (name, description, price,color, size, image_url,type,category_id)
    VALUES($1, $2, $3, $4, $5, $6, $7) RETURNING * `, [product.name, product.description, product.price, product.color, product.size, product.image_url, product.type, categoryId])
    return newProduct
    
  }catch(err){
    return {error:"error"}
  }
}

//update
const updateProduct = async (categoryId,productId, product) => {
try{
  const updateProduct = await db.one(`UPDATE products SET name = $1, description = $2, price = $3, color = $4, size = $5, image_url = $6, type = $7 and product_id = $8 RETURNING *`, [product.name, product.description, product.price, product.color, product.size, product.image_url, product.type])
  return updateProduct
}catch (err){
  return {error:"error"}
}
}


//delete
const deleteProduct = async (id)=>{
  try{
    const deleteProduct = await db.one(`DELETE FROM products WHERE product_id = $1 RETURNING * `,[id])
    return deleteProduct
  }catch(err){
    return {err}
  }
}


module.exports = {
  getAllProductsByCategory,
  getProductByCategory,
  createProduct,
  updateProduct,
  deleteProduct
}