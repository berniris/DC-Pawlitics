function sendCats (req, res) {
  console.log('I am delivering the cats');
  res.render('cats/index', {
    cats: res.locals.cats
  })
}

module.exports = {
  sendCats: sendCats
}

console.log(sendCats());

