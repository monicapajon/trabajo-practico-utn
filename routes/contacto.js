var express = require('express');
var router = express.Router();
var nodemailer = require('nodemailer');//para poder trabajar con el envio mail
/* GET home page. */
router.get('/', function (req, res, next) {
  res.render('contacto', {
    isContacto: true
  });//llamar a contacto.hbs
});

router.post('/', async (req, res, next) => {
  console.log(req.body);
  var nombre = req.body.nombre;
  var email = req.body.email;
  var telefono = req.body.telefono;
  var mensaje = req.body.comentario;

  var obj = {
    to: 'monicabpajon@gmail.com',
    subject: 'Contacto desde web Estudio Pericial Caligráfico',
    html: nombre + ' se contacto a traves de la web y quiere mas info a este correo: ' + email + '.<br> Además hizo el siguiente comentario ' + mensaje +
      '.<br> Su tel es: ' + telefono + '.'
  }//cierro objeto

  var transport = nodemailer.createTransport({
    host: process.env.SMTP_HOST,
    port: process.env.SMTP_PORT,
    auth: {
      user: process.env.SMTP_USER,
      pass: process.env.SMTP_PASS
    }
  });//cierro el transport
  var info = await transport.sendMail(obj);

  res.render('contacto', {
    isContacto: true,
 message: 'Mensaje enviado correctamente'
  })
})


module.exports = router;