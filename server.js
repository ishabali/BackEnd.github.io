require('dotenv').config();
var express = require("express");
var app = express();
const PORT = process.env.PORT || 9000
//new comment// 

// ===========================================================
app.get("/", function(req, res) {
  res.send("Welcome the Book Club!");
});
app.listen(PORT, function() {
  console.log("App listening on PORT " + PORT);
});