var express = require("express");
var router = express.Router();

const { hostname } = require("os");
const ip = require("ip");

/* GET home page. */
router.get("/", function (req, res, next) {
  res.render("index", { hostname: hostname(), ip: ip.address() });
});

module.exports = router;
