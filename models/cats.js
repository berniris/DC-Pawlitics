// require the database config file
const db = require('../config/connection');

// get All function
function getAllCats() {
  console.log(db)
  console.log('fetching cats')
  const queryPromise = db.manyOrNone (`
    SELECT * FROM cats`);
  return queryPromise;
}

getAllCats().then(data => console.log(data));

// get One function
function getOneCat(id) {
  const queryPromise = db.one(`
    SELECT * FROM cats
    WHERE id = $1`, id);
  return queryPromise;
}

function updateCat(cat) {
  const query = db.one(`
    UPDATE cats
    SET name = $/name/, img_url = $/img_url/, /blurb/ = $/blurb/, /hashtags/ = $/hashtags/, /issue/ = $/issue/, affiliation = $/affiliation/
    WHERE id = $/id/
    RETURNING *`,
    cat );
  return query;
}

getOneCat(1).then(data => console.log(data));


// function getAffiliationByCat(id) {
//   const queryPromise = db.any(`
//     SELECT * FROM affiliation
//     JOIN cats ON cats.id = affiliation.cat_id
//     WHERE affiliation.cat_id = $1`, id);
//   return queryPromise;
// }

// create a new cat
function createCat(cat) {
  const queryPromise = db.one(`
    INSERT INTO cats
    (name, img_url, blurb, hashtags, issue, affiliation_id)
    VALUES ($/name/, $/img_url/, $/blurb/, $/hashtags/, $/issue/, $/affiliation_id/)
    RETURNING *`,
    cat);
  return queryPromise;
}

// delete a cat from the database
function deleteCat(id) {
  const queryPromise = db.none(`
    DELETE FROM cats
    WHERE id = $1`, id);
  return queryPromise;
}


module.exports = {
  getAllCats,
  getOneCat,
  createCat,
  updateCat,
  deleteCat
}


