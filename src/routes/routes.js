const router = require("express").Router()
const usuarioController = require("../controllers/UsuarioController");
router.get("/user/registro",usuarioController.registerPage);


module.exports = router