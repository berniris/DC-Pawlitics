const db = require('../config/connection')

function getAllCats() {
  const queryPromise = db.manyOrNone (`
    SELECT * FROM cats`);
  return queryPromise;
}

function getOneCat(id) {
  const queryPromise = db.one(`
    SELECT * FROM cats
    WHERE id = $1`, id);
  return queryPromise;
}

function getBlurbByCat(id) {
  const queryPromise = db.any(`
    SELECT * FROM blurbs
    JOIN cats ON cats.id = blurbs.cat_id
    WHERE blurbs.cat_id = $1`, id);
  return queryPromise;
}

function createCat(cat) {
  const queryPromise = db.one(`
    INSERT INTO cats
    (name, img_url, affiliation, issue)
    VALUES ($/name/, $/img_url/, $/affiliation/, $/issue/)
    RETURNING *`,
    cat);
  return queryPromise;
}

// createCat("mindy", "http://google.com/image.png", "Democat", "Abortion").then(data => console.log(data));

module.exports = {
  getAllCats,
  getOneCat,
  getBlurbByCat
}
