const express = require('express');
const app = express();
const path = require('path');
const routes = require('./routes/proyectoRoutes');
const conecctionDb = require('./config/database');
const puerto = process.env.PORT || 5000;

conecctionDb.connect();
app.use(express.json());
app.use(express.urlencoded({extended:false}));

app.set('views', path.join(__dirname,'views'));
app.set('view engine','ejs');
app.use(express.static(path.join(__dirname,'public')));


app.use("",routes);

app.listen(puerto,()=>{
    console.log("Servidor corriendo en el puerto " + puerto)
});
