const express = require('express');
const mysql = require('mysql2');
const bodyParser = require('body-parser');
const app = express();
const cors = require('cors');
require('dotenv').config();
const PORT = process.env.DB_PORT;

app.use(bodyParser.json());
app.use(cors());

const pool = mysql.createPool({
    connectionLimit: 10,
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASSWORD,
    database: process.env.DB_NAME
})

pool.getConnection((err,conn)=>{
    if(err) throw err;
    console.log('Connected to the DB as ID', conn.threadId)
})

app.listen(PORT, ()=>{
    console.log('Server is running on port ', PORT);
});

app.get('/api/getBooks', (req, res)=>{
    const queryStr = `SELECT * FROM libros;`;

    pool.query(queryStr, (err, response)=>{
        if(err){
            console.error('Error running query', err);
            res.status(500).send('Something wen wrong, try again later');
        } else {
            res.json(response)
        }
    })
})


app.get('/api/getBookName/:id', (req, res)=>{
    const bookID = String(req.params.id)
    const sql = `SELECT * FROM libros WHERE nombre = '${bookID}';`;

    pool.query(sql, (err,result)=>{
        if(err){
            console.error('Error executing query', err)
            res.status(500).send('Something went wrong, try again later.')
        }else {
            res.json(result)
        }
    })
})

app.get('/api/getBookFilter', (req, res)=>{
    const { filter } = req.body;
    const sql = `SELECT * FROM libros WHERE editorial = '${filter}';`;

    pool.query(sql, (err,result)=>{
        if(err){
            console.error('Error executing query', err)
            res.status(500).send('Something went wrong, try again later.')
        }else {
            res.json(result)
        }
    })
})

app.get('/api/getBookId/:id', (req, res)=>{
    const bookID = String(req.params.id)
    const sql = `SELECT * FROM libros WHERE id = '${bookID}';`;

    pool.query(sql, (err,result)=>{
        if(err){
            console.error('Error executing query', err)
            res.status(500).send('Something went wrong, try again later.')
        }else {
            res.json(result)
        }
    })
})

app.post('/api/deleteBook', (req, res)=>{
    const { id } = req.body;
    const queryStr = `DELETE FROM libros WHERE id = '${id}';`;

    pool.query(queryStr, (err,result)=>{
        if(err){
            console.error('Error executing query', err)
            res.status(500).send('Something went wrong, try again later.')
            res.json({"status":"FAILED"})
        } else{
            res.json({"status":"OK"})
        }
    })
})

app.post('/api/modifyBook', (req, res)=>{
    const {     id,
                nombre,
                autor,
                year_publicacion,
                editorial,
                precio,
                cover  
            } = req.body;

    // use for each value that exists, generate the sql query
    // console.log(id,nombre);
    // const queryStr = `UPDATE libros SET nombre = '${nombre}' WHERE id = '${id}';`;

    // pool.query(queryStr, (err,result)=>{
    //     if(err){
    //         console.error('Error executing query', err)
    //         res.status(500).send('Something went wrong, try again later.')
    //         res.json({"status":"FAILED"})
    //     } else{
    //         res.json({"status":"OK"})
    //     }
    // })
})


app.post('/api/addBook', (req, res)=>{
    const {     nombre,
                autor,
                year_publicacion,
                editorial,
                precio,
                cover
            } = req.body;
    

    const queryStr = `INSERT INTO libros (nombre, autor, year_publicacion, editorial, precio, cover)
                        VALUES ('${nombre}', '${autor}', '${year_publicacion}', '${editorial}', '${precio}', '${cover}');`;
    
    pool.query(queryStr, (err, result)=>{
        if(err){
            console.error('Error executing query', err);
            res.status(500).send('Something went wrong, try again later')
            res.json({"status":"FAILED"})
        } else {
            res.json({"status":"OK"})
        }
    })
})



