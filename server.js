require('dotenv').config();
var express = require("express");
var app = express();
const cors = require('cors');
const bodyParser = require('body-parser');
const routes = require('./routes');
const PORT = process.env.PORT || 9000

app.use(cors());
app.use(express.urlencoded({extended: true}));
app.use(bodyParser.json());
routes.route(app);
// ===========================================================
app.get("/status", function(req, res) {
  res.send("Welcome the Book Club!");
});
app.listen(PORT, function() {
  console.log("App listening on PORT " + PORT);
});
