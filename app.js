// DEPENDENCIES
const express = require("express");
const cors = require("cors");
const categoryController= require('./controllers/categoryController')

// CONTROLLERS

// CONFIGURATION
 const app = express();

// MIDDLEWARE
 app.use(cors());
 app.use(express.json());

// ROUTES
 app.get("/", (req, res) => {
     res.send("Welcome to the Modesty App");
 });

 app.use('/category',categoryController)
 


module.exports = app;