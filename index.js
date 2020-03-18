const cors = require('cors');
const express = require('express')
const app = express()
const port = 3002;
const CoreRouter = require('./routes/CoreRouter');

// allow request
app.use(cors());
app.use(function(req, res, next) {
	res.header('Access-Control-Allow-Origin', '*');
	res.header('Access-Control-Allow-Methods', 'GET,PUT,POST,DELETE,PATCH,OPTIONS');
	res.header('Access-Control-Allow-Headers', 'Content-Type, Authorization, Content-Length, X-Requested-With');
	// allow preflight

	if (req.method === 'OPTIONS') {
		res.send(200);
	} else {
		next();
	}
});

app.use(express.json());
app.use(express.urlencoded({ extended: true }));

app.get('/', function(req, res){
    res.json("Hello World!")
});

app.use('/cores', CoreRouter);

app.listen(port, () => console.log(`Example app listening on port ` + port));