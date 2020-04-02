const ExportsModel = require('../models/ExportsModel');
const Op = require('sequelize').Op;

module.exports = {
	get: async (req, res) => {
		ExportsModel.File.findAll({
			include: [{
				attributes: {},
				model: ExportsModel.SumBiner,
				required: true
			},
			{
				attributes: {},
				model: ExportsModel.KeyBiner,
				required: true
			}]
		}).then(function (data) {
			return res.json(data);
			
		}).error(function (err) {
			console.log("Error:" + err);
		});
	},
	
	getByRangeDate: async (req, res) => {
		let start = req.query.start
		let end = req.query.end
		ExportsModel.File.findAll({
			where: {
				createdAt: {
					[Op.between]: [start, end]
				}
			},
			include: [{
				attributes: {},
				model: ExportsModel.KeyBiner,
				required: true
			}]
		}).then(function (data) {
			if(data.length > 0){
				return res.status(200).json(data);
			}else{
				return res.status(404).json(data);
			}
		}).error(function (err) {
			console.log("Error:" + err);
		});
	}
}