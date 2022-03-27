function logar(e) {
    e.preventDefault();// não dá refresh na tela

    var tag = document.getElementById("pais");

    const URL_TO_FETCH = '/autenticar';
    
    const data = {
        name: document.getElementById('usuario').value,
        password: document.getElementById('senha').value
    }

    fetch(URL_TO_FETCH, { method: 'post', headers: {'Accept': 'application/json','Content-Type': 'application/json'}, 
    body: JSON.stringify(data)})
    .then(function (response) {
        response.json().then(function (result) {
            token = result.token;
            localStorage.setItem('token',token);
            alert("usuário logado com sucesso");
        });
    }).catch(function (err) { console.error("Erro:" + err); });
}


function listabyId(e){
    e.preventDefault();// não dá refresh na tela
    var tag = document.getElementById("pais");
    const data = {
        id: document.getElementById("id").value
    }
    let token = localStorage.getItem('token');

    fetch('/paispeloid/'+data.id+'',  {method: 'get', 
    headers: new Headers({ 'x-access-token': token})})
    .then(function (response) {
        response.text().then(function (result){
            tag.innerHTML = result;
        })
    }).catch(function (err) { console.error(err); });
}


function listarpornome(e){
    e.preventDefault();// não dá refresh na tela
    var tag = document.getElementById("pais");
    const data = {
        nomepais: document.getElementById("nomepais").value
    }
    let token = localStorage.getItem('token');

    fetch('/paisbyname/'+data.nomepais+'', {method: 'get', 
    headers: new Headers({ 'x-access-token': token})})
    .then(function (response) {
        response.text().then(function (result){
            tag.innerHTML = result;
        })
    }).catch(function (err) { console.error(err); });
}


function listarpeloidioma(e){
    e.preventDefault();// não dá refresh na tela
    var tag = document.getElementById("pais");
    const data = {
        idioma: document.getElementById("idioma").value
    }
    let token = localStorage.getItem('token');

    fetch('/paispeloidioma/'+data.idioma+'', {method: 'get', 
    headers: new Headers({ 'x-access-token': token})})
    .then(function (response) {
        response.text().then(function (result){
            tag.innerHTML = result;
        })
    }).catch(function (err) { console.error(err); });
}
function listarPais(){

    var tag = document.getElementById("pais");
    let token = localStorage.getItem('token');

    fetch('/recuperartodos', {method: 'get', 
    headers: new Headers({ 'x-access-token': token})})
    .then(function (response) {
        response.text().then(function (result){
            tag.innerHTML = result;
        })
    }).catch(function (err) { console.error(err); });
}


function NovoPais(e){
    e.preventDefault();// não dá refresh na tela
    var tag = document.getElementById("pais");
    const data = {
        nome: document.getElementById("Nome").value,
        sigla: document.getElementById("sigla").value,
        idioma: document.getElementById("newidioma").value
    }
    let token = localStorage.getItem('token');

    fetch('/novopais/'+data.sigla+'/'+data.idioma+'/'+data.nome+'', {method: 'post', 
    headers: new Headers({ 'x-access-token': token})})
    .then(function (response) {
        response.text().then(function (result){
            tag.innerHTML = result;
        })
    }).catch(function (err) { console.error(err); });
}