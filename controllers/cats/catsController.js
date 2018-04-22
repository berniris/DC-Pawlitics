const catsDb = require('../../models/cats');
const blurbsDb = require('../../models/blurbs');

function getAll (req, res, next) {
  console.log('About to get all the cats');
  catsDb.getAllCats()
  .then(data => {
    console.log('Queried DB and got' + data.length + 'results');
    res.locals.cats = data;
    next();
  })
  .catch(err => {
    next(err);
  })
}

function getOneCat(req, res, next) {
  catsDb.getOneCat(req.params.id)
  .then(data => {
    res.locals.cat = data;
    next();
  })
  .catch(err => {
    next(err);
  })
  console.log(req.params.id)
}

console.log(catsDb);


function getOneBlurb(req, res, next) {
  blurbsDb.getOneBlurb(req.params.id)
  .then(data => {
    res.locals.blurb = data;
    next();
  })
  .catch(err => {
    next(err);
  })
}

function create(req, res, next) {
  catsDb.createCat(req.body)
  .then(data => {
    res.locals.newCat = data;
    next();
  })
  .catch(err => {
    next(err);
  })
}

// console.log(catsDb.createCat())


module.exports = {
  getAll,
  getOneCat,
  getOneBlurb,
  create
}
