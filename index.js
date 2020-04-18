const cors = require('cors');
const express = require('express')
const app = express()
const port = 3002;
const CoreRouter = require('./routes/CoreRouter');
const ReportRouter = require('./routes/ReportRouter');
const UserRouter = require('./routes/UserRouter');

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

app.use('/users', UserRouter);
app.use('/cores', CoreRouter);
app.use('/reports', ReportRouter);


function print (path, layer) {
	if (layer.route) {
		layer.route.stack.forEach(print.bind(null, path.concat(split(layer.route.path))))
	} else if (layer.name === 'router' && layer.handle.stack) {
		layer.handle.stack.forEach(print.bind(null, path.concat(split(layer.regexp))))
	} else if (layer.method) {
		console.log('%s /%s',
		layer.method.toUpperCase(),
		path.concat(split(layer.regexp)).filter(Boolean).join('/'))
	}
}

function split (thing) {
	if (typeof thing === 'string') {
		return thing.split('/')
	} else if (thing.fast_slash) {
		return ''
	} else {
		var match = thing.toString()
		.replace('\\/?', '')
		.replace('(?=\\/|$)', '$')
		.match(/^\/\^((?:\\[.*+?^${}()|[\]\\\/]|[^.*+?^${}()|[\]\\\/])*)\$\//)
		return match
		? match[1].replace(/\\(.)/g, '$1').split('/')
		: '<complex:' + thing.toString() + '>'
	}
}

app._router.stack.forEach(print.bind(null, []))

app.listen(port, () => console.log(`Example app listening on port ` + port));

module.exports = app;