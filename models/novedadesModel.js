var pool = require('./bd');
/*sirve para listar las novedades*/
async function getNovedades() {
    var query = 'select * from novedades';
    var rows = await pool.query(query);
    return rows;
}
// *sirve para agregar las novedades INSERT*

async function insertNovedad(obj) {
    try {
        var query = 'insert into novedades set ?';
        var rows = await pool.query(query, [obj]);
        return rows;

    } catch (error) {
        console.log(error);
        throw error;
    }
}
//sirve para eliminar novedades//
async function deleteNovedadesById(id) {
    var query = 'delete from novedades where id = ?';
    var rows = await pool.query(query, [id]);
    return rows;
}

//para traer (select) una novedad by ID
async function getNovedadById(id) {
    var query = 'select * from novedades where id=?';
    var rows = await pool.query(query, [id]);
    return rows[0];
}

//para modificar UPDATE de los datos
async function modificarNovedadById(obj, id) {
    try {
        var query = 'update novedades set ? where id=?';
        var rows = await pool.query(query, [obj, id]);
        return rows;
    } catch (error) {
        throw error;
    }
}

module.exports = { getNovedades, insertNovedad, deleteNovedadesById, getNovedadById, modificarNovedadById }