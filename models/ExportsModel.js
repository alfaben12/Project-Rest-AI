const KeyBiner = require('./KeyBinerModel');
const SumBiner = require('./SumBinerModel');

module.exports = {
    KeyBiner: KeyBiner,
    SumBiner: SumBiner
};
SumBiner.hasMany(KeyBiner, {foreignKey: 'parameter', sourceKey: 'parameter'})
