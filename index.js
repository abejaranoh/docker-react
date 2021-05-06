const express = require ('express');

const app = express();

app.get ('/', (req, res) => {
    res.send('Hey YOU!!!');
});

app.listen(8080, () => {
    console.log('Hoeren on Port 8080');
})
