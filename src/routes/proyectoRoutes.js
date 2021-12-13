const express = require('express');

const routes = express.Router();

const {renderHome, renderZapas,renderBermudas, renderRemeras,renderForm,addProducto} = require('../controllers/proyectoControllers');

routes.get('/',renderHome);

routes.get('/categoria-zapatillas',renderZapas);

routes.get('/categoria-bermudas',renderBermudas);

routes.get('/categoria-remeras',renderRemeras);

routes.get('/agregar-producto',renderForm);

routes.post('/agregar-producto',addProducto);

module.exports = routes;