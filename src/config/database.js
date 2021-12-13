const mysql = require('mysql2');
const conecctionDb = mysql.createConnection(
    {
        host:'bv5pmcxj1r6tddi9l3v3-mysql.services.clever-cloud.com',
        user: 'uhbxc5edbcpmxfa8',
        database:'bv5pmcxj1r6tddi9l3v3',
        password:'oMkY0l37s18ljMBAaQ9j'
    }
);

conecctionDb.connect((error)=>{
    if(error){
        console.log(error)
    }
    else{
        console.log("Servidor conectado a MySQL")
    }
});

module.exports = conecctionDb;