const affiliatesDb = require('../../models/affiliation');

function getAll (req, res, next) {
  console.log('About to get all the cats');
  affiliatesDb.getAllAffiliations()
  .then(data => {
    console.log('Queried DB and got' + data.length + 'results');
    res.locals.affiliation = data;
    next();
  })
  .catch(err => {
    next(err);
  })
}

module.exports = {
  getAll
}
