var webpack = require('webpack');
var ExtractTextPlugin = require("extract-text-webpack-plugin");

function makeWebpackConfig(buildConfig) {
  var webpackConfig = {
    output: {},
    entry: {},
    plugins: [],
    module: {
      loaders: []
    }
  };

  webpackConfig.entry.app = ['./src/main/javascript/EntryPoint.js'] ;
  webpackConfig.output.path = './src/main/resources/static/bundle';
  webpackConfig.output.filename = 'bundle.js';
  webpackConfig.output.publicPath = '/bundle/';

  webpackConfig.module.loaders.push({
    test: /\.(png|jpg|jpeg|gif|svg|svg?.*|woff|woff?.*|woff2|woff2?.*|ttf|ttf?.*|eot|eot?.*)$/,
    loader: 'file'
  });

  webpackConfig.module.loaders.push( {
    test: /\.css$/,
    loader: ExtractTextPlugin.extract("style-loader", "css-loader",  { publicPath: './' })
  });

  webpackConfig.module.loaders.push(  {
    test: /\.less$/,
    loader: ExtractTextPlugin.extract("style-loader", "css-loader!less-loader",  { publicPath: './' })
  });

  if(buildConfig.runHttpServer) {
    webpackConfig.entry.app.unshift('webpack-dev-server/client?http://0.0.0.0:8081/');
    webpackConfig.devServer = {
      host: "0.0.0.0",
      port: 8081,
      proxy: {
        '*': {
          target: "http://localhost:8080/"
        }
      }
    };
  }

  webpackConfig.plugins.push(new ExtractTextPlugin("bundle.css"));

  if(buildConfig.sourceMap) {
    webpackConfig.devtool = 'source-map';
  }

  if(buildConfig.inlineSourceMap) {
    webpackConfig.devtool = 'inline-source-map';
  }

  if(buildConfig.minify) {
    webpackConfig.plugins.push(new webpack.optimize.UglifyJsPlugin({
      mangle: true,
      compress: {
        warnings: false
      }
    }));
  }

  if(buildConfig.dedupe) {
    webpackConfig.plugins.push(new webpack.optimize.DedupePlugin());
  }

  return webpackConfig;
}

module.exports = makeWebpackConfig;