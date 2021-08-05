const express = require('express')
const router = express.Router()
const db = require('../config/database')

router.get('/', async (req, res) => {
    let {limit, offset, typeId, text} = req.query

    let sqlWhere = []
    if (text && text != '') {
        text = text.toLowerCase();
        sqlWhere.push(`(LOWER(title) LIKE '%${text}%' OR LOWER(description) LIKE '%${text}%' OR LOWER(cast_actors) LIKE '%${text}%')`);
    }
    if (typeId && (typeId == 1 || typeId == 2)) {
        sqlWhere.push(`mvi.type_id = ${typeId}`);
    }
        
    const sqlCount = `
    SELECT COUNT(*) FROM movie mvi
    ${sqlWhere.length ? 'WHERE ' + sqlWhere.join(' AND ') : ''}
    `;
    
    const sql = `
    SELECT mvi.id, title, cover_image, description, release_date, cast_actors,    coalesce(AVG (mrp.rating)::NUMERIC(10,2), 0) as avg_rating
    FROM movie mvi
    LEFT JOIN movie_rating_map mrp ON mrp.movie_id = mvi.id 
    ${sqlWhere.length ? 'WHERE ' + sqlWhere.join(' AND ') : ''}
    GROUP BY mvi.id, title, cover_image, description, release_date, cast_actors
    ORDER BY avg_rating DESC, title ASC
    LIMIT ${limit || 0}
    OFFSET ${offset || 0}
    `;

    Promise.all([
        db.query(sqlCount, {type: db.QueryTypes.SELECT}),
        db.query(sql, {type: db.QueryTypes.SELECT})
    ])
    .then(result => {
        if (Array.isArray(result[0])) {
            result[0] = result[0][0]
        }
        res.json(result)
    }, err => {
        res.status(500).json({
            errors: err.errors.map(error => error.message)
        })
    })
    .catch(err => console.log(err))
})



module.exports = router