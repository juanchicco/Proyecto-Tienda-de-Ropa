const conecctionDb = require('../config/database');
const connectionDb = require('../config/database');


const renderHome = (req,res)=>{
    conecctionDb.query('SELECT * FROM productos',(error,data)=>{
        if(error){
            console.log(error)
        }
        else{
            res.render('../views/pages/index',{
                data
            })
        }
    })
    
    
};

const renderZapas = (req,res) =>{
    conecctionDb.query('SELECT * FROM productos WHERE id_categoria=1',(error,data)=>{
        if(error){
            console.log(error)
        }
        else{
            res.render('../views/pages/categoriaZapas.ejs',{
                data
            })
        }
    })
};

const renderBermudas = (req,res) =>{
    conecctionDb.query('SELECT * FROM productos WHERE id_categoria=2',(error,data)=>{
        if(error){
            console.log(error)
        }
        else{
            res.render('../views/pages/categoriaBermuda.ejs',{
                data
            })
        }
    })
};

const renderRemeras = (req,res)=>{
    connectionDb.query('SELECT * FROM productos WHERE id_categoria=3',(error,data)=>{
        if(error){
            console.log(error)
        }
        else{
            res.render('../views/pages/categoriaRemeras.ejs',{
                data
            })
        }
    })
};

const renderForm = (req,res) =>{
    res.render('../views/pages/formulario.ejs')
};

const addProducto = (req,res) =>{
    const {nombre,categoria,descripcion,precio,imagen} = req.body;
    conecctionDb.query('INSERT INTO productos(nombre,id_categoria,imagen,descripcion,precio)VALUES(?,?,?,?,?)',[nombre,categoria,imagen,descripcion,precio],(error,data)=>{
        if(error){
            console.log(error)
        }else{
            res.redirect('/')
        }

    })
};

module.exports = {renderHome,renderZapas,renderBermudas,renderRemeras,renderForm,addProducto};