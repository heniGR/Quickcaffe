const express = require('express')
const usersRoutes = require('./src/routes');

const app = express();
const port = 3000;

app.get("/",(req,res)=> {

})
app.use('/api/v1/users',usersRoutes);
app.listen(port,()=>console.log(`listening on port ${port}`));