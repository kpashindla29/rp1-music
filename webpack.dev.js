var makeWebpackConfig = require("./webpack.configMaker");

var config = {
  sourceMap: false,
  runHttpServer: true
};

module.exports = makeWebpackConfig(config);