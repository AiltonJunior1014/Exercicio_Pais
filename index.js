const express = require("express");
const jwt = require('jsonwebtoken');
const app = express();
// var bodyParser = require('body-parser')

app.use(express.json());
// app.use(bodyParser.urlencoded({ extended: false }))
// app.use(bodyParser.json())

app.use('/static', express.static(__dirname + '/static'));

const Pais = require("./Pais");
const PaisDAL = require("./PaisDAL");
const User = require("./user");
const UserDAL = require("./userDAL");

const SECRET="Unoeste";


app.post("/autenticar", function (req, res) {
    let usuario = req.body.name;
    let senha = req.body.password;
    var dal = new UserDAL();
    
    dal.selectUser(usuario, senha)
        .then(user => {
            if (user.name != "" && user.password != "") {
                var token = jwt.sign({id: user.id}, SECRET, { expiresIn: 120 }); //expira em 1 minuto
                
                res.status(200).send({ auth: true, token: token });
            }
            else
                res.send({ auth: false, mens: 'Falha ao autenticar'});

            ;})
        .catch(err=>{"Erro"+err});
});
        


function verAutenticacao(req) {
    // recuperando o token do cabeçalho
    let token = req.headers['x-access-token'];
    if (!token) { return false; }

    var payload; //possui informações sobre o token (id, criação, expiração); não é utilizado aqui 
    try {
        payload = jwt.verify(token, SECRET);
        console.log(payload); // somente exibindo o payload
        return true;
    }
    catch { return false; /* erro de validação e expiração*/ }
}



// definindo a rota ajuda
app.get("/ajuda", function (req, res) {
    res.send("Página de ajuda!");
});

app.post("/novopais/:sigla/:idioma/:nome", function(req,res){
    var p = new Pais(0,req.params.sigla,req.params.idioma,req.params.nome);

    
    var dal = new PaisDAL();
    if(verAutenticacao(req, res))
    {
        dal.gravar(p)
        .then(res => console.log("Salvo com Sucesso"))
        .catch(err => console.console.log("Erro: "+err));

        res.send("Pais"+p.nome+" Salvo.");
    }
    else   
        res.send("Usuário sem autenticação");
})

app.get("/paispeloid/:id", function(req,res){

    var dal = new PaisDAL();
    
    var pais = new Pais();
    if(verAutenticacao(req, res))
    {
        dal.selecionarUm(req.params.id)
        .then(pais => {
            res.json(pais)
        })
        .catch(err => console.console.log("Erro: "+err));
    }
    else   
        res.send("Usuário sem autenticação");
});

app.get("/paisbyname/:filtro", function(req,res){

    var dal = new PaisDAL();

    if(verAutenticacao(req, res))
    {
        dal.selecionarVariosbyName("nome  ~*'"+req.params.filtro+"'").then(pais=>{
            res.json(pais);
        }).catch(err=>{"Erro"+err});
        
    }
    else
        res.send("Usuário sem autenticação");
    
});

app.get("/paispeloidioma/:filtro", function(req,res){

    var dal = new PaisDAL();
    let paises;
    if(verAutenticacao(req, res))
    {
        paises = dal.selecionarIdioma("idioma  ~*'"+req.params.filtro+"'").then(paises => {
            res.json(paises);
        }).catch(err => {"Erro "+err});
    }
    else   
        res.send("Usuário sem autenticação");
});

app.get("/recuperartodos", function(req,res){

    var dal = new PaisDAL();
    let paises;
    
    if(verAutenticacao(req, res))
    {
        paises = dal.selecionarVariosbyName("").then(paises => {
            res.json(paises);
        }).catch(err => {"Erro "+err});
    }
    else   
        res.send("Usuário sem autenticação");
});


// definindo a rota raiz
app.get("/", function(req,res){
    res.sendFile(__dirname+"/static/index.html");
});

// executando o servidor
app.listen(8081, function () {
    console.log("Servidor na porta 8081");
});

