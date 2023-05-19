const db = require('../db/dbConfig')

//index
const getAllCategory = async ()=>{
  try{
    const allCategory = await db.any("SELECT * FROM category");
    // console.log(allCategory)
    return allCategory;
  }catch(err){
    return err;
  }
}

//show
const getCategory = async (id)=>{
  try{
    const category = await db.one("SELECT * FROM category WHERE product_id = $1", [id]);

    return category;
  }catch (error){
    return {error};
  }
}

//create
const createCategory = async (category)=>{
  try {
    const newCategory = await db.one(`INSERT INTO category (name,description) VALUES ($1, $2) RETURNING *`,[category.name, category.description]);
    return newCategory
  }catch (err){
    return{error:"error"}
  }
}

//update
const updateCategory = async (categoryId, category) =>{
  try{
    const updatedCategory = await db.one(`UPDATE category SET name = $1, description = $2 WHERE category_id = $3 RETURNING *`,[category.name, category.description, categoryId])
    return updatedCategory
  }catch (err){
    return {error:err};
  }
}


//delete
const deleteCategory = async (id) =>{
  try{
    const deleteCategory = await db.one(`DELETE FROM category WHERE category_id = $1`)
  }catch (err){
    return {error:err}
  }
}

module.exports = {
  getAllCategory,
  getCategory,
  createCategory,
  updateCategory,
  deleteCategory
}