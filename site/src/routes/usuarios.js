var express = require("express");
var router = express.Router();

var usuarioController = require("../controllers/usuarioController");

router.get("/", function (req, res) {
    usuarioController.testar(req, res);
});

router.get("/listar", function (req, res) {
    usuarioController.listar(req, res);
});

//Recebendo os dados do html e direcionando para a função cadastrar de usuarioController.js
router.post("/cadastrar", function (req, res) {
    usuarioController.cadastrar(req, res);
})

// rota criada para redirecionar os dados do cadastro para a funcao cadastrar2 da usuarioController.js
router.post("/cadastrar2", function (req, res) {
    usuarioController.cadastrar2(req, res);
})

router.post("/autenticar", function (req, res) {
    usuarioController.entrar(req, res);
});

// rota criada para redirecionar os dados do cadastro para a funcao mensagem da usuarioController.js
router.post("/mensagem", function (req, res) {
    usuarioController.mensagem(req, res);
})

module.exports = router;