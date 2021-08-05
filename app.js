const express = require('express');

const db = require('./config/database');
db.authenticate()
    .then(() => console.log('Database connected'))
    .catch((err) => console.log('ERROR: ' + err))

const app = express();
app.use(express.json());

app.use((req, res, next) => {
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept, Authorization");
    if (req.method == "OPTIONS") {
        res.header('Access-Control-Allow-Methods', 'GET, PUT, POST, PATCH, DELETE')
        return res.status(200).json({})
    }
    next();
});

app.use((req, res, next) => {
    if (req.headers.authorization == 'No worries')
        next();
    else
        return res.status(403).json({ error: 'No credentials sent!' });
});

// Routes
app.use('/api/movies', require('./routes/movies'))
app.use('/api/ratings', require('./routes/ratings'))

const PORT = process.env.PORT || 9000;
app.listen(PORT, console.log(`server started at port ${PORT}`))