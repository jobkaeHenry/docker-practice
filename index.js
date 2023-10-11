const express = require('express')

const app = express()

app.get('/',(_req,res)=>{
  res.send('hello world')
})

app.listen(3000,()=>{
  console.log('server listening on',3000)
})
