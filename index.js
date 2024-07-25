require("dotenv").config();
const express = require("express");
const router = require("./src/routes/routes");
const port = process.env.PORT||5000;
const app = express();

app.use(express.json());
app.use(express.urlencoded({extended:false}));
app.set('view engine', 'ejs');


app.get("/",(req,res)=>{
    return res.render("index");
})

app.use("/",router)

app.listen(port,()=>{
    console.log(`Servidor online na porta ${port}`);
})

