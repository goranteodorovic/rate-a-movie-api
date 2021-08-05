const Sequelize = require('sequelize');
var config = require('../config.json');

module.exports = new Sequelize(config.database, config.username, config.password, {
  host: config.host,
  dialect: 'postgres',
  pool: {
    max: 5,
    min: 0,
    acquire: 30000,
    idle: 10000
  },
  define: {
    timestamps: true,
    freezeTableName: true
  },
  logging: true
});