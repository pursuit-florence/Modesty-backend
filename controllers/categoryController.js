const express = require('express');
const category = express.Router();
const productController = require('../controllers/productsController')

const {
  getAllCategory,
  getCategory,
  createCategory,
  updateCategory,
  deleteCategory
} = require('../queries/category');

//localhost:3300/category/:categoryId/products
category.use("/:categoryId/products",productController)

//index
category.get("/", async (req,res)=>{
  const allCategory = await getAllCategory();
  if(!allCategory.error){
    res.status(200).json(allCategory)
  }else{
    res.status(500).json({ error: "server error" });
  }
})

//show
//GET /Album/ :id
category.get("/:categoryId", async(req,res)=>{
  const {categoryId} = req.params
  const catgory = await getCategory(categoryId);
  if(catgory.error != "error"){
    res.status(200).json(catgory)
  }else{
    res.status(404).json({ error: "server error" });
  }
})

//create one catgory --> insert into category
//POST /catgory
category.post("/", async (req, res)=>{
  const newCategory = await createCategory(req.body);
  if(!newCategory.error){
    res.status(200).json(newCategory);
  }else{
    res.status(404).json({error: "server error"})
  }
})

//update

category.put("/:categoryId", async (req, res)=>{
  const {categoryId} = req.params;
  const updatedCategory = await updateCategory(categoryId, req.body);
  if(! updatedCategory.error){
    res.status(200).json(updatedCategory);
  }else{
    res.status(404).json({ error: "server error" });
  }
})


category.delete("/:categoryId", async (req, res)=>{
  const {categoryId} = req.params;
  const deletedCategory = await deleteCategory(categoryId);
  if(!deletedCategory.error){
    res.status(200).json(deletedCategory);
  }else{
    res.status(404).json({ error: "server error" });
  }
})

module.exports = category
