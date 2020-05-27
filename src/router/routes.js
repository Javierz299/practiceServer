const express = require('express')

const router = express.Router()

router.get('/hello', (req,res) => {
    console.log('reached')
    res.json('hello world')
})

module.exports = router