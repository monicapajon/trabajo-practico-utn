var express = require('express');
var router = express.Router();
var novedadesModel = require('../../models/novedadesModel');


/* GET home page. */
router.get('/', async function (req, res, next) {
  var novedades = await novedadesModel.getNovedades();

  res.render('admin/novedades', {
    layout: 'admin/layout',
    usuario: req.session.nombre, novedades
  });
});

//* llamamos pagina /agregar*/
router.get('/agregar', (req, res, next) => {
  res.render('admin/agregar', { //agregar hbs
    layout: 'admin/layout'
  })
})


//*procesa agregar novedades a la BD POST*


router.post('/agregar', async (req, res, next) => {

  try {
    if (req.body.titulo != "" && req.body.subtitulo != "" && req.body.cuerpo != "") {
      await novedadesModel.insertNovedad(req.body);
      res.redirect('/admin/novedades')
    } else {
      res.render('admin/agregar', {
        layout: 'admin/layout',
        error: true,
        message: 'Todos los datos tienen que completarse'
      })
    }

  } catch (error) {
    console.log(error);
    res.render('admin/agregar', {
      layout: 'admin/layout',
      error: true,
      message: 'No se cargo la novedad'
    })
  }
}) //cierra post de agregar novedades

//para eliminar una novedad
router.get('/eliminar/:id', async (req, res, next) => {
  var id = req.params.id;
  await novedadesModel.deleteNovedadesById(id);
  res.redirect('/admin/novedades')
}); //cierra get de eliminar

//para listar UNA SOLA NOVEDAD BY ID (modificar)

router.get('/modificar/:id', async (req, res, next) => {
  var id = req.params.id;
  var novedad = await novedadesModel.getNovedadById(id);

  res.render('admin/modificar', {
    layout: 'admin/layout',
    novedad
  })
});

//cierra el traer UNA SOLA NOVEDAD BY ID

//para modificar la novedad

router.post('/modificar', async (req, res, next) => {
  try {
    var obj = {
      titulo: req.body.titulo,
      subtitulo: req.body.subtitulo,
      cuerpo: req.body.cuerpo
      //id:req.body.id
    }
    //console.log(obj)

    await novedadesModel.modificarNovedadById(obj, req.body.id);
    res.redirect('/admin/novedades');

  } catch (error) {
    console.log(error)
    res.render('admin/modificar', {
      layout: 'admin/layout',
      error: true,
      message: 'No se modifico la novedad'
    })
  }
})


module.exports = router;