const Sequelize = require('sequelize');
const db = require('../config/database')

const MovieRating = db.define('movie_rating_map', {
    id: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    movie_id: {
        type: Sequelize.INTEGER,
        notEmpty: true
    },
    rating: {
        type: Sequelize.NUMBER,
        notEmpty: true
    },
}, {
    timestamps: false
})

module.exports = MovieRating