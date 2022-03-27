const { Client } = require('pg');
const User = require("./User");

class UserDAL{
    #client;
    async conectar(){
        this.#client = new Client({
            user: 'postgres',
            host: 'localhost',
            database: 'paises',
            password: 'postgres123',
            port: 5432,
          })
          await this.Client.connect();
    }

    get Client(){return this.#client;}


    async selectUser(name,password){
        let query = `SELECT * from public."Usuarios" where name='${name}' and password= '${password}'`
        var user = new User();
        await this.conectar();
        try{
            let res = await this.Client.query(query);
            user = res.rows[0];
            return user;
        }
        finally{this.Client.end();}
    }
}

module.exports = UserDAL;