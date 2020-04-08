const KeyBiner = require('./KeyBinerModel');
const SumBiner = require('./SumBinerModel');
const File = require('./FileModel');
const User = require('./UserModel');

module.exports = {
    KeyBiner: KeyBiner,
    SumBiner: SumBiner,
    File: File,
    User: User
};

File.hasOne(SumBiner, {foreignKey: 'parameter', sourceKey: 'parameter'})
File.hasMany(KeyBiner, {foreignKey: 'parameter', sourceKey: 'parameter'})