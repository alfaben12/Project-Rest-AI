const ExportsModel = require('../models/ExportsModel');
const Op = require('sequelize').Op;

module.exports = {
	get: async (req, res) => {
		let userid = req.payload.userid
		ExportsModel.File.findAll({
			where: {
				userid: userid
			},
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
			if(data.length > 0){
				return res.status(200).json(data);
			}else{
				return res.status(404).json(data);
			}
		}).error(function (err) {
			return res.status(404).json('Data tidak ditemukan');
		});
	},
	
	getByRangeDate: async (req, res) => {
		let userid = req.payload.userid
		let start = req.query.start
		let end = req.query.end
		ExportsModel.File.findAll({
			where: {
				userid: userid,
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
			return res.status(404).json('Data tidak ditemukan');
		});
	}
}