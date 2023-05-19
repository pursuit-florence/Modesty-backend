const express = require('express');
const products = express.Router({ mergeParams: true});

const {
  getAllProductsByCategory,
  getProductByCategory,
  createProduct,
  updateProduct,
  deleteProduct
} = require('../queries/product');

const validateProduct = require('../validations /productValidator');

//index
//localhost:3300/category/:category_id/products

products.get("/", async (req, res)=>{
  const {categoryId} = req.params
  const allProducts = await getAllProductsByCategory(categoryId);
  
  if(!allProducts.error) {
    res.status(200).json(allProducts)
  }else{
    res.status(500).json({error: "server error"})
  }
})


//show
//localhost:3300/category/:category_id/products/:product_id
products.get("/:productId", async(req,res)=>{
  const {categoryId,productId} = req.params
  const product = await  getProductByCategory(categoryId,productId);
  if(product.error != "error"){
    res.status(200).json(product);
  }else{
    res.status(404).json({error:"server error"})
  }
})


//create
//localhost:3300/category/:categoryId/products
products.post("/", async (req, res) => {
  const { categoryId } = req.params;
  const newProduct = req.body;

  // Validate the request body using the imported validator
  const { error } = validateProduct(newProduct);

  if (error) {
    res.status(400).json({ error: error.details[0].message });
    return;
  }

  const createdProduct = await createProduct(newProduct, categoryId);
  if (!createdProduct.error) {
    res.status(200).json(createdProduct);
  } else {
    res.status(404).json({ error: "server error" });
  }
});



//update
//PUT localhost:3300/category/:categoryId/products/:productId
products.put("/:productId", async (req,res)=>{
  const {categoryId,productId} = req.params
  const updatedProduct = await updateProduct(categoryId,productId, req.body)
  if(!updatedProduct.error){
    res.status(200).json(updatedProduct);
  }else{
    res.status(404).json({error:"server error"})
  }
})

products.delete("/:productId", async (req, res)=>{
  const {productId} = req.params;
  const deletedProduct = await deleteProduct(productId);
  if(!deletedProduct.error ){
    res.status(200).json(deletedProduct)
  }else{
    res.status(404).json({error:"server error !!!!!!"})
  }
})


module.exports = products