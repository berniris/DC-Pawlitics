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
    cat: res.locals.cat
  })
}


function submitCat(req, res) {
  res.render('cats/new', {
    cats: res.locals.cat
  })
}

function sendCreateCat (req, res) {
  cat = res.locals.newCat
  res.redirect(`cats/${cat.id}`);
}

function editCat(req, res) {
  cat = res.locals.cat
  res.render(`cats/edit`, {
    cat: res.locals.cat
  })
}

function deleteCat(req, res) {
  res.redirect(`cats/index`);
}









   // res.redirect(`cats/${cat.id}`);
    // console.log(newCat)


    module.exports = {
      renderLanding,
      sendCats,
      sendOneCat,
      sendCreateCat,
      submitCat,
      editCat,
      deleteCat
    }


