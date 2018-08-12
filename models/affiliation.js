const db = require('../config/connection')

function getAllAffiliations() {
  const queryPromise = db.manyOrNone (`
    SELECT * FROM affiliation`)
return queryPromise;
}

// getAllAffiliations().then(data => console.log(data));

function getOneAffiliation(id) {
  const queryPromise = db.one(`
    SELECT * FROM affiliation
    WHERE id = $1`, id)
  return queryPromise;
}

function getCatByAffiliation(id) {
  const query = db.any(`
    SELECT * FROM cats
    JOIN affiliation ON affiliation.id = cats.affiliation_id
    WHERE cats.affiliation_id = $1`, id);
  return query
}


module.exports = {
  getAllAffiliations,
  getOneAffiliation,
  getCatByAffiliation
}
