const JWTMiddleware = require('../middlewares/JWTMiddleware');
const bcrypt = require('bcryptjs');
const ExportsModel = require('../models/ExportsModel');
const Op = require('sequelize').Op;

module.exports = {
	login: async function(req, res) {
		/* POST BODY */
		let username = req.body.username;
		let password = req.body.password;
		
		ExportsModel.User.findOne({
			where: {
				username: username
			}
		}).then(async function (data) {
			if(data){
				let hashPasswordAccount = data.password;
				let passwordCompare;
				if (bcrypt.compareSync(password, hashPasswordAccount)) {
					passwordCompare = true;
				} else {
					passwordCompare = false;
				}
				console.log(passwordCompare)
				if (!passwordCompare) {
					return res.status(400).json('Password atau username salah');
				}
				
				let userid = data.id;
				let jwtToken = await JWTMiddleware.JWTsign(userid);
				return res.status(200).json(jwtToken);
			}else{
				return res.status(404).json('Akun tidak di temukan');
			}
		}).error(function (err) {
			return res.status(400).json('Terjadi kesalahan');
		});
	},
	create: function(req, res){
		let name = req.body.name
		let username = req.body.username
		let password = bcrypt.hashSync(req.body.password, 10);
		let email = req.body.email
		
		ExportsModel.User.findOne({
			where: {
				[Op.or]: [{username: username}, {email: email}]
			}
		}).then(function (validation) {
			if(validation){
				return res.status(400).json('Email/username telah digunakan');
			}else{
				ExportsModel.User.create({
					name: name,
					username: username,
					password: password,
					email: email
				}).then(data => {
					if(data){
						return res.status(200).json(data)
					}else{
						return res.status(404).json('Gagal melakukan pendaftaran')
					}
				}).error(function (err) {
					return res.status(400).json('Terjadi kesalahan');
				});
			}
		}).error(function (errValiation) {
			return res.status(400).json('Terjadi kesalahan');
		});
	},
	update: function(req, res){
		let userid = req.payload.userid
		
		let name = req.body.name
		let password = bcrypt.hashSync(req.body.password, 10);
		
		ExportsModel.User.update({
			name: name,
			password: password
		},{
			where: {
				id: userid
			}
		}).then(data => {
			if(data){
				return res.status(200).json('Berhasil memperbarui')
			}else{
				return res.status(404).json('Gagal melakukan pendaftaran')
			}
		}).error(function (err) {
			return res.status(400).json('Terjadi kesalahan');
		})
	},
	getByJWT: function(req, res){
		let userid = req.payload.userid
		
		ExportsModel.User.findOne({
			where: {
				id: userid
			}
		}).then(data => {
			if(data){
				return res.status(200).json(data)
			}else{
				return res.status(404).json('Gagal melakukan pendaftaran')
			}
		}).error(function (err) {
			return res.status(400).json('Terjadi kesalahan');
		});
	}
};