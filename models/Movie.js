const Sequelize = require('sequelize');
const db = require('../config/database')
const MovieRating = require('./MovieRating')

const Movie = db.define('movie', {
    id: {
        type: Sequelize.INTEGER,
        primaryKey: true
    },
    title: {
        type: Sequelize.STRING
    },
    cover_image: {
        type: Sequelize.STRING
    },
    description: {
        type: Sequelize.STRING
    },
    release_date: {
        type: Sequelize.DATE
    },
    cast_actors: {
        type: Sequelize.STRING
    }
}, {
    timestamps: false
  })

Movie.hasMany(MovieRating, { as: 'ratings', foreignKey: 'movie_id', targetKey: 'movie_id'});

module.exports = Movie