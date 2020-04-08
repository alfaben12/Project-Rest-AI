const jwt = require('jsonwebtoken');
const moment = require('moment');

exports.JWTsign = function(userid) {
	return new Promise((resolve, reject) => {
		jwt.sign({
				userid: userid,
				generate_at: moment().format('dddd, MMMM Do YYYY, h:mm:ss a')
			},
			'9c2763813379b1b0a1ce8b3a8bcc6848',
			function(err, token) {
				resolve(token);
				reject('Error');
			}
		);
	});
};

exports.JWTverify = function(req, res, next) {
	const bearerHeader = req.headers.authorization;
	const token = bearerHeader ? bearerHeader.split(" ")[1] : undefined

	if (token) {
		jwt.verify(token, '9c2763813379b1b0a1ce8b3a8bcc6848', function(err, payload) {
			if (err) {
				return res.status(401).json('Maaf silahkan login untuk melanjutkan.');
			} else {
				req.payload = payload;
				next();
			}
		});
	} else {
		return res.status(401).json('Maaf silahkan login untuk melanjutkan.');
	}
};