const express = require('express');
const path = require('path')
const router = express.Router();
const BranchController = require('../controllers/CoreController');
var multer  = require('multer')

var storage_excel = multer.diskStorage({
	destination: './files/excel/',
	filename: function (req, file, cb) {
		cb( null, Date.now('Y-m-d') +".xlsx" );
	}
});

var upload_excel = multer({ 
	storage: storage_excel,
	fileFilter: function (req, file, callback) {
		var ext = path.extname(file.originalname);
		if(ext !== '.xlsx') {
			return callback(null, false)
		}
		callback(null, true)
	},
})

var storage_csv = multer.diskStorage({
	destination: './files/csv/',
	filename: function (req, file, cb) {
		cb( null, Date.now('Y-m-d') +".csv" );
	}
});

var upload_csv = multer({ 
	storage: storage_csv,
	fileFilter: function (req, file, callback) {
		var ext = path.extname(file.originalname);
		if(ext !== '.csv') {
			return callback(null, false)
		}
		callback(null, true)
	},
})

var storage_multiple_csv = multer.diskStorage({
	destination: './files/csv/',
	filename: function (req, file, cb) {
		cb( null, Date.now('Y-m-d') +".csv" );
	}
});

var upload_multiple_csv = multer({ 
	storage: storage_multiple_csv
})

router.post(
	'/excel',
	upload_excel.single('excel'),
	BranchController.read
);
	
router.post(
	'/csv',
	upload_csv.single('csv'),
	BranchController.readCSV
);

router.post(
	'/multiplecsv',
	upload_multiple_csv.array('csv[]', 100),
	BranchController.readMultipleCSV
);

router.get(
	'/csv/:uuid',
	BranchController.getDataCsv
);

module.exports = router;