const KeyBiner = require('./KeyBinerModel');
const SumBiner = require('./SumBinerModel');
const File = require('./FileModel');

module.exports = {
    KeyBiner: KeyBiner,
    SumBiner: SumBiner,
    File: File
};

File.hasOne(SumBiner, {foreignKey: 'parameter', sourceKey: 'parameter'})
File.hasMany(KeyBiner, {foreignKey: 'parameter', sourceKey: 'parameter'})