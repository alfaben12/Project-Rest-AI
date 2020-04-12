const express = require('express');
const router = express.Router();
const UserController = require('../controllers/UserController');
const JWTMiddleware = require('../middlewares/JWTMiddleware');

router.post(
	'/login',
	UserController.login
);

router.post(
	'/',
	UserController.create
);

router.get(
	'/',
	JWTMiddleware.JWTverify,
	UserController.getByJWT
);

router.put(
	'/',
	JWTMiddleware.JWTverify,
	UserController.update
);

module.exports = router;