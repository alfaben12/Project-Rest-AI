const express = require('express');
const router = express.Router();
const ReportController = require('../controllers/ReportController');
const JWTMiddleware = require('../middlewares/JWTMiddleware');

router.get(
	'/',
	JWTMiddleware.JWTverify,
	ReportController.get
);

router.get(
	'/date_range',
	JWTMiddleware.JWTverify,
	ReportController.getByRangeDate
);

module.exports = router;