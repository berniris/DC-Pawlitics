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

catsRouter.route('/').get(catsViewController.renderLanding, sendError);
catsRouter.route('/cats').get(catsController.getAll, catsViewController.sendCats, sendError);
catsRouter.route('/cats/:id').get(catsController.getOneCat, catsController.getOneBlurb, catsViewController.sendOneCat, sendError)
catsRouter.route('/cats/submit').get(catsViewController.sendCreateCat, sendError);
// console.log(catsViewController.sendCreateCat);
// catsRouter.route('/submit').post(catsController.create, catsViewController.sendCreateCat, sendError)


module.exports = catsRouter;

