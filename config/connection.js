const pgp = require('pg-promise')();
const config = require('./dbConfig');

const db = pgp(process.env.DATABASE_URL || config); // config is the configuration object
module.exports = db;