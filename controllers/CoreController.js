const excelToJson = require('convert-excel-to-json');
const fs = require('fs');
const neatCsv = require('neat-csv');
const axios = require('axios');

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
					
					let restructured_biner = []
					for (let i = 0; i < data.length; i++) { // change i = 1 (fix same like a core php result)
						let row = data[i].split(";")
						let row_biner = row.slice(2)
						restructured_biner.push(row_biner)
					}
					
					let array_biner = restructured_biner, restructured_biner_sum = array_biner.reduce((r, a) => a.map((b, i) => parseInt((r[i] || 0)) + parseInt(b)), []);
					return res.status(code).json({
							all: restructured_all,
							biner: restructured_biner,
							sum: restructured_biner_sum
						})
					}
				})
			}
		}
	}