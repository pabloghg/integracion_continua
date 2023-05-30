var express = require('express')
var mysql = require('mysql')
var app = express()
var port = process.env.PORT || 8888

async function get_usuarios() {
    return new Promise((res, rej) => {
        let con = mysql.createConnection({
            host: 'db',
            user: 'root',
            password: 'root',
            database: 'integracion_continua',
            port: 3306
        });
        con.connect(function (er) {
            if (er) rej(er);
            con.query('select * from usuario', function (err, re) {
                if (err) rej(err);
                res(re);
            })
        })
    })
}

app.get('/', async function (req, res) {
    try {
        let usuarios = await get_usuarios();
        return res.json({
            error: null,
            data: usuarios
        })
    } catch (error) {
        return res.json({
            error: error,
            data: null
        })
    }
})

app.listen(port);
