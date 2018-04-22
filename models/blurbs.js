const db = require('../config/connection')

function getAllBlurbs() {
  const queryPromise = db.manyOrNONE(`
    SELECT * FROM blurbs`)
return queryPromise;
}

function getOneBlurb(id) {
  const queryPromise = db.one(`
    SELECT * FROM blurbs
    WHERE id = $1`, id)
  return queryPromise;
}

module.exports = {
  getAllBlurbs,
  getOneBlurb
}
