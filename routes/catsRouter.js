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

catsRouter.route('/cats').get(catsController.getAll, catsViewController.sendCats, sendError);

module.exports = catsRouter;

