const express = require('express')
const router = express.Router()
const MovieRating = require('../models/MovieRating')
const db = require('../config/database')

router.put('/add', (req, res) => {
    let {movie_id, rating} = req.body.params

    if (!movie_id || !rating)
        res.status(500).json({})

    MovieRating.create({
        movie_id,
        rating
    })
    .then(result => {
        res.send(result)
    }, err => {
        res.status(500).json({
            errors: err.errors.map(error => error.message)
        })
    })
    .catch(err => console.log(err))
})

router.get('/average', (req, res) => {
    const { movie_id } = req.query
    let sql = `
        SELECT coalesce(AVG (rating)::NUMERIC(10,2), 0) as avg_rating
        FROM movie_rating_map
        WHERE movie_id = ${movie_id}
        GROUP by movie_id
    `
    db.query(sql, {type: db.QueryTypes.SELECT})
    .then(result => {
        res.send(result)
    })
    .catch(err => console.log(err))
})

module.exports = router