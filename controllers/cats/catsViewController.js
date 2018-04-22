function renderLanding (req, res) {
  console.log('I am rendering the index page');
  res.render('cats/index');
}

function sendCats (req, res) {
  console.log('I am delivering the cats to the page');
  res.render('cats/allCats', {
    cats: res.locals.cats
  })
}

function sendOneCat (req, res) {
  res.render('cats/show', {
    cat: res.locals.cat,
    blurb: res.locals.blurb
  })
}

function sendCreateCat (req, res) {
  console.log('I am rendering the index page');
  res.render('cats/index');
}

   // res.redirect(`cats/${cat.id}`);
    // console.log(newCat)

console.log(sendCreateCat());

module.exports = {
  renderLanding,
  sendCats,
  sendOneCat,
  sendCreateCat
}


