const excelToJson = require('convert-excel-to-json');
const fs = require('fs');
const neatCsv = require('neat-csv');
const axios = require('axios');
const { v4: uuidv4 } = require('uuid');
const ExportsModel = require('../models/ExportsModel');

module.exports = {
	read: async (req, res) => {
		let result = ''
		let code = 200
		if(req.file != undefined){
			result = excelToJson({
				sourceFile: process.cwd()+'/files/excel/'+ req.file.filename
			});
			
			code = 200
		}else{
			code = 403
		}
		
		return res.status(code).json(result)
	},
	
	readCSV: async (req, res) => {
		let result = []
		let userid = req.payload.userid
		
		let code = 200
		if(req.file == undefined){
			let code = 403
			return res.status(code).json({
				message: "Extensi tidak tiperbolehkan."
			})
		}else{
			code = 200
			let filepath = process.cwd()+ '/files/csv/'+ req.file.filename
			fs.readFile(filepath, async (err, data) => {
				if (err) {
					console.error(err)
					return
				}
				result = await neatCsv(data)
				if(result[5][0] == 1){
					let data = result
				}else{
					let parameter = uuidv4()
					let data = []
					for (let i = 0; i < result.length; i++) {
						let string = result[i][0]
						if(Object.keys(result[i]).length > 0){
							for (let j = 1; j < Object.keys(result[i]).length; j++) {
								string += result[i][j]
							}
						}
						data.push(string)
						data = data.filter(function(el) { return el; }); // remove null value array
					}
					
					let restructured_all = []
					for (let i = 0; i < data.length; i++) {
						let row = data[i].split(";")
						restructured_all.push(row)
					}
					
					let data_insert = []
					for (let i = 0; i < restructured_all.length; i++) {
						let row_biner = restructured_all[i].slice(2)
						
						let single_data = {
							parameter: parameter,
							userid: userid,
							name: restructured_all[i][1],
							biner: row_biner.toString(),
						}
						
						data_insert.push(single_data)
					}
					
					let restructured_biner = []
					for (let i = 0; i < data.length; i++) { // change i = 1 (fix same like a core php result)
						let row = data[i].split(";")
						let row_biner = row.slice(2)
						restructured_biner.push(row_biner)
					}
					
					let array_biner = restructured_biner, restructured_biner_sum = array_biner.reduce((r, a) => a.map((b, i) => parseInt((r[i] || 0)) + parseInt(b)), []);
					
					await ExportsModel.KeyBiner.bulkCreate(data_insert)
					await ExportsModel.SumBiner.create({
						parameter: parameter,
						userid: userid,
						sum: restructured_biner_sum.toString()
					})
					
					return res.status(code).json({
						parameter: parameter
					})
				}
			})
		}
	},
	
	readMultipleCSV: async (req, res) => {
		let result = []
		let userid = req.payload.userid
		
		let code = 200
		code = 200
		let files = req.files
		if(files.length == 0){
			return res.status(400).json('File tidak di temukan!')
		}
		let parameter = []
		for (let a = 0; a < files.length; a++) {
			let path = files[a].path
			// let originalname = files[a].originalname
			let filename = files[a].filename
			
			let filepath = process.cwd()+ '/' + path
			let parameter_temp = uuidv4()
			fs.readFile(filepath, async (err, dataCsv) => {
				if (err) {
					console.error(err)
					return
				}
				let data = []
				
				result = await neatCsv(dataCsv)
				for (let i = 0; i < result.length; i++) {
					let string = result[i][0]
					if(Object.keys(result[i]).length > 0){
						for (let j = 1; j < Object.keys(result[i]).length; j++) {
							string += result[i][j]
						}
					}
					data.push(string)
					data = data.filter(function(el) { return el; }); // remove null value array
				}
				
				let restructured_all = []
				for (let i = 0; i < data.length; i++) {
					let row = data[i].split(";")
					restructured_all.push(row)
				}
				
				let restructured_biner = []
				for (let i = 0; i < data.length; i++) { // change i = 1 (fix same like a core php result)
					let row = data[i].split(";")
					let row_biner = row.slice(2)
					restructured_biner.push(row_biner)
				}
				
				let array_biner = restructured_biner, restructured_biner_sum = array_biner.reduce((r, a) => a.map((b, i) => parseInt((r[i] || 0)) + parseInt(b)), []);
				
				for (let i = 0; i < restructured_all.length; i++) {
					let row_biner = restructured_all[i].slice(2)
					await ExportsModel.KeyBiner.create({ // await fix async bug
						parameter: parameter_temp,
						userid: userid,
						name: restructured_all[i][1],
						biner: row_biner.toString(),
					})
				}
				
				await ExportsModel.SumBiner.create({
					parameter: parameter_temp,
					userid: userid,
					sum: restructured_biner_sum.toString()
				})
				
				await ExportsModel.File.create({
					parameter: parameter_temp,
					userid: userid,
					name: filename
				})
			})
			parameter.push(parameter_temp)
		}
		
		return res.json({
			parameter: parameter
		})
	},
	
	getDataCsv: async (req, res) => {
		let parameter = req.params.uuid.split(",")
		let userid = req.payload.userid
		
		ExportsModel.File.findAll({
			where: {
				userid: userid,
				parameter: parameter
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
			console.log("Error:" + err);
		});
	},

	update: async (req, res) => {
		let key_biner = JSON.parse(req.body.key_biner)
		let sum = JSON.parse(req.body.sum)

		for (let i = 0; i < key_biner.length; i++) {
			ExportsModel.KeyBiner.update({
				name: key_biner[i].name,
				biner: key_biner[i].biner
			},{
				where: {
					id: key_biner[i].id
				}
			})
		}

		for (let i = 0; i < sum.length; i++) {
			ExportsModel.SumBiner.update({
				sum: sum[i].biner
			},{
				where: {
					parameter: sum[i].parameter
				}
			})
		}

		return res.json({
			key_biner: key_biner,
			sum: sum
		})
	}
}