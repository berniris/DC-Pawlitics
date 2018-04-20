const catsDb = require('../../models/cats');
console.log(catsDb);
console.log(getAll())

function getAll (req, res, next) {
   console.log(data);
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

function getOne(req, res, next) {
  catsDb.getOneCat(req.params.id)
  .then(data => {
    res.locals.cats = data;
    next();
  })
  .catch(err => {
    next(err);
  })
}

module.exports = {
  getAll: getAll
}
