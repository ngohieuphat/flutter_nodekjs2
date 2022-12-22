// imports from package
const express = require('express');
const mongoose = require('mongoose');


// import form other files
const authRouter = require("./routes/auth");
// init
const PORT = 3000;
const app = express();
const DB = "mongodb+srv://admin:admin@cluster0.afcbszf.mongodb.net/?retryWrites=true&w=majority";

// middleware
app.use(express.urlencoded({extended:true}));
app.use(express.json());
app.use(authRouter);
//connect 
mongoose.connect(DB).then(()=>{
    console.log('connection successful');
}).catch((e)=>{
    console.log(e);
})

app.listen(PORT , ()=>{
    console.log(`listening on port ${PORT}` );
});

//localhost