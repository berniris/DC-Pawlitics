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

console.log()

function sendOneCat (req, res) {
  res.render('cats/show', {
    cat: res.locals.cat,
    blurb: res.locals.blurb
  })
}


function submitCat(req, res) {
  res.render('cats/new', {
    cat: res.locals.newCat
  })
}

function sendCreateCat (req, res) {
  cat = res.locals.newCat
  res.redirect(`cats/${cat.id}`);
}




   // res.redirect(`cats/${cat.id}`);
    // console.log(newCat)


module.exports = {
  renderLanding,
  sendCats,
  sendOneCat,
  sendCreateCat,
  submitCat
}


