const mysql = require('mysql');
//permitir usar promises o async/await
const {promisify} = require('util');

const { database } =require('./keys');

const pool = mysql.createPool(database);

pool.getConnection((err, connection) =>{
    if(err) {
        if(err.code === 'PROTOCOL_CONNECTION_LOST') {
            console.error('LA CONEXIÓN CON LA BASE DE DATOS HA SIDO CERRADA');
        }
        if(err.code === 'ER_CON_COUNT_ERROR'){
            console.error('LA BASE DE DATOS TIENE MUCHAS CONEXIONES');
        }
        if(err.code === 'ECONNREFUSED'){
            console.error('LA CONEXIÓN CON LA BASE DE DATOS HA SIDO RECHAZADA');
        }
    }

    if(connection) connection.release();
    console.log('DB HA SIDO CONECTADA :) ');
    return;

});

//Promisify lo que era QUERYS
pool.query = promisify(pool.query);
module.exports  = pool;
