// load built-in modules
const path = require('path');

//load dependencies
const express = require('express');
const logger = require('morgan');
const bodyParser = require('body-parser');
const methodOverride = require('method-override');

const catsModel = require('./models/cats');
const catsController = require('./controllers/cats/catsController');

//require routers

//initalize app
const app = express();

// declare pot to be passed to app.listen
const PORT = process.env.PORT || 3000;

// require routes
const catsRouter = require('./routes/catsRouter');


// establish rendering engine
app.set('view engine', 'ejs');
app.set('views', path.join(__dirname, 'views'));

// initiate morgan
app.use(logger('dev'));

// load middleware to serve files to path
app.use(express.static(path.join(__dirname, 'public')));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: false}));
app.use(methodOverride('_method'));

// render homepage for when user arrives to the app
app.use('/', catsRouter);


app.listen(PORT, () => {
  console.log(`listening on PORT ${PORT}!`);
});
