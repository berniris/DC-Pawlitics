const catsRouter = require('../../routes/catsRouter');

function deleteCat(url) {
  return fetch(url, {
    method:'delete'
  }).then(res => {
    res.send('Deleted successfully')
  })
}

