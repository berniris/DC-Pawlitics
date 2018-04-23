const catsRouter = require('express').Router();
const catsController = require('../controllers/cats/catsController');
const catsViewController = require('../controllers/cats/catsViewController');
const affiliationController = require('../controllers/affiliations/affiliationController');

const catsDb = require('../models/cats');

function sendError(err, req, res, next) {
  console.log('I send errors');
  res.status(500).json({
    status: 'error',
    message: err.message
  })
}

catsRouter.route('/')
  .get(catsViewController.renderLanding, sendError)

catsRouter.route('/cats')
  .get(catsController.getAll,catsViewController.sendCats, sendError)
  .post(catsController.createCat, catsViewController.sendCreateCat, sendError)

catsRouter.route('/cats/:id')
  .get(catsController.getOneCat, catsViewController.sendOneCat)
  .put(catsController.update)
  .delete(catsController.destroy, catsViewController.deleteCat)

catsRouter.route('/cats/:id/edit')
.get(catsController.getOneCat, affiliationController.getAll, catsViewController.editCat, sendError)

catsRouter.route('/submit').get(catsController.getAll, affiliationController.getAll, catsViewController.submitCat, sendError)

module.exports = catsRouter;

