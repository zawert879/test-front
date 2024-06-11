const express = require('express')
const app = express()
const port = 3000

app.get('/', (req, res) => {
  res.send('Hello World!')
})

app.use(function(req, res, next) {
  res.status(404).send('Sorry cant find that! FRONT');
});

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})