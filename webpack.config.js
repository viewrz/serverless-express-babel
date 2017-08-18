/* eslint-disable import/no-commonjs */
const yaml = require('js-yaml');
const path = require('path');
const fs = require('fs');

const slsConf = yaml.safeLoad(fs.readFileSync(path.join(__dirname, 'serverless.yml')));
const remoteNodeVersion = slsConf.provider.runtime.replace('nodejs', '');

module.exports = {
  entry: './handler.js',
  target: 'node',
  module: {
    rules: [
      {
        test: /\.js$/,
        exclude: /node_modules/,
        use: {
          loader: 'babel-loader',
          options: {
            presets: [
              [
                'env',
                {
                  targets: { node: remoteNodeVersion },
                },
              ],
            ],
          },
        },
      },
    ],
  },
};
