var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next)
 {
  res.render('nosotros', {
    isNosotros:true
  });//equivale q el render va a llamar a nosotros.hbs
});

module.exports = router;