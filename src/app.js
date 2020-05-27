const express = require('express')

const indexRouter = require('./router/routes')

require('dotenv').config()

const cors = require('cors')
const morgan = require('morgan')
const helmet = require('helmet')
const { NODE_ENV } = require('./config')

const app = express();

const morganOption = NODE_ENV === 'production' ? 'tiny' : 'common';

app.use(morgan(morganOption));
app.use(helmet())
app.use(cors());


app.use('/api',indexRouter)

module.exports = app;