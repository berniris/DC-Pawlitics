const catsDb = require('../../models/cats');

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
