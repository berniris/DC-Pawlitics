const catsRouter = require('express').Router();
const catsController = require('../controllers/cats/catsController');
const catsViewController = require('../controllers/cats/catsViewController');

const catsDb = require('../models/cats');

function sendError(err, req, res, next) {
  console.log('I send errors');
  res.status(500).json({
    status: 'error',
    message: err.message
  })
}

catsRouter.route('/').get(catsViewController.renderLanding, sendError)
catsRouter.route('/cats')
.get(catsController.getAll, catsViewController.sendCats, sendError)
.post(catsController.create, catsViewController.sendCreateCat, sendError);

catsRouter.route('/cats/:id').get(catsController.getOneCat, catsController.getOneBlurb, catsViewController.sendOneCat)
catsRouter.route('/submit').get(catsController.getAll, catsViewController.submitCat, sendError)


// console.log(catsViewController.sendCreateCat());
module.exports = catsRouter;

