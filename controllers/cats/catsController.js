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

function getOneCat(req, res, next) {
  catsDb.getOneCat(req.params.id)
  .then(data => {
    res.locals.cat = data;
    next();
  })
  .catch(err => {
    next(err);
  })
}

function createCat(req, res, next) {
  catsDb.createCat(req.body)
  .then(data => {
    res.locals.newCat = data;
    next();
  })
  .catch(err => {
    next(err);
  })
}

function edit(req, res) {
  catsDb.getOneCat(req.params.id)
    .then(data=> {
      res.locals.cat = data;
      next();
    })
    .catch(err=> {
      err:err.message
    })
}

function update(req, res, next) {
  req.body.id = req.params.id;
  catsDb.updateCat(req.body.id)
    .then(data => {
      res.redirect(`/cats/${req.body.id}`)
      console.log('WE MADE IT');
      next();
    })
    .catch(err=> {
      next(err);
    })
}

function destroy(req, res) {
  catsDb.deleteCat(req.params.id)
    .then(() => {
      res.redirect('/cats');
    })
    .catch(err => {
      res.status(500).json({
        message:err.message
      })
    })
}

module.exports = {
  getAll,
  getOneCat,
  createCat,
  edit,
  update,
  destroy
}
