const {PrismaClient} = require("@prisma/client")
const prisma = new PrismaClient();
class UsuarioController{
    static async registerPage(req,res){
        return res.render("pages/registro");
    }
    static async create(req,res){
        
    }
}
module.exports = UsuarioController;