const express = require('express');
const router = express.Router();
const ReportController = require('../controllers/ReportController');


router.get(
	'/',
	ReportController.get
);

router.get(
	'/date_range',
	ReportController.getByRangeDate
);

module.exports = router;