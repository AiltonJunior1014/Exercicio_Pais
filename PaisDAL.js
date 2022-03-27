const { Client } = require('pg');
const Pais = require("./Pais");

class PaisDAL{
    #client;
    async conectar()
    {
        this.#client = new Client({
            user: 'postgres',
            host: 'localhost',
            database: 'paises',
            password: 'postgres123',
            port: 5432,
          })
          await this.Client.connect();
    }

    get Client(){return this.#client; }

    async selecionarUm(id)
    {
        await this.conectar();   
        
        var pais=new Pais();
        try {
           let res = await this.Client.query(`SELECT * from pais where id=${id}`);
           pais=res.rows[0];
           return pais;              
        }
        finally
        {
            this.Client.end();
        }
                
    }
    async selecionarVariosbyName(filtro)
    {
        let query = "SELECT * from pais"
        if(filtro!="")
           query = query+` where  ${filtro}`;

        await this.conectar();   
        
        try{ 
            let res = await this.Client.query(query);
            return res.rows;
        }
        finally{this.Client.end();}
    }

    async selecionarIdioma(filtro)
    {
        let query = "SELECT * from pais"
        if(filtro!="")
           query = query+` where  ${filtro}`;

        await this.conectar();   
        try{ 
            
            let res = await this.Client.query(query);
            return res.rows;
        }
        finally{this.Client.end();}
    }


    async gravar(pais)
    {
        await this.conectar();  
        let sql="INSERT INTO pais VALUES (default,$1,$2,$3)";
        var values=Object.values(pais).slice(1); //retira o id do país
        try{
            let res=await this.Client.query(sql,values);
            return res.rowCount>0;
        }
        finally{
            this.Client.end();
        }
    }

    async alterar(pais)
    {
        await this.conectar();  
        let sql="UPDATE pais SET id=$1, sigla=$2, idioma=$3, nome=$4 WHERE id = $1";
        var values=Object.values(pais);
        try{
            let res = await this.Client.query(sql,values);
            return res.rowCount;
        }
        finally{
            this.Client.end();
        }
    }
    async apagar(id)
    {
        await this.conectar();  
        let sql="DELETE FRbOM pais WHERE id = "+id;
        try{
          return (await this.Client.query(sql)).rowCount;
        }
        finally{
            this.Client.end();
        }
    }
  
}

module.exports = PaisDAL;