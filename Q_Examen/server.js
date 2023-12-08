import Model from './models/Model.js'
import Television from './models/Television.js';
import express from 'express';

//let express = require('express');

let app = express();
app.use(express.static('public'));
app.use(express.urlencoded());

app.get('/', async function (request, response) {
    const television = await Television.loadMany({ casse: 0 });
    const televisionachete = await Television.loadMany({ casse: 1 });
    let sum = 0;
    for (let i = 0; i < televisionachete.length; i++) {
        sum += parseInt(televisionachete[i].prix);
    }

    if (request.query.achete != null) {
        const television2 = await Television.load({ id: parseInt(request.query.achete) });
        television2.update({ casse: 1 });
        await television2.save();
        response.redirect('/');
    }

    if (request.query.modifier != null) {
        const tele = await Television.load({ id: parseInt(request.query.modifier) });
        tele.update({ raison: request.query.raison });
        await tele.save();
        response.redirect('/');
    }
    response.render('home.ejs', { television2: televisionachete, television1: television, sum: sum });
});


app.post('/add', async function (request, response) {
    const television = new Television();
    console.log(request.body);
    television.marque = request.body.marque;
    television.prix = request.body.prix;
    television.taille = request.body.taille;
    television.casse = 0;
    await television.save();
    response.redirect('/');
});

app.post('/addRaison', async function (request, response) {
    console.log(request.body.id);
    const television = await Television.load({ id: parseInt(request.body.id) });
    television.raison = request.body.raison;
    await television.save();
    response.redirect('/');
});



app.listen(3000, function () {
    console.log('Server is running on port 3000')
});