const express = require("express");

const router = express.Router();

const books = require("../model/XXXXX.js");


router.get("/", (req, res) => {
    books.XXX((data) => {
      const Object = {
        data: data
      };
      console.log(Object);
      res.render("index", Object);
    });
  });
  
  module.exports = router;