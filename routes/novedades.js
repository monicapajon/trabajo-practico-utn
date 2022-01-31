var express = require('express');
var router = express.Router();
var novedadesModel = require('../models/novedadesModel');
/* GET home page. */
router.get('/', async function (req, res, next) {
  var novedades = await novedadesModel.getNovedades();

  res.render('novedades', {
    isNovedades: true,
    novedades

  });//equivale q el render va a llamar a novedades.hbs
});

module.exports = router;