const Sequelize = require('sequelize');

const sequalize = new Sequelize('project1', 'root', '', {
	host: '127.0.0.1',
	dialect: 'mysql',
	// logging: true
});

module.exports = sequalize;