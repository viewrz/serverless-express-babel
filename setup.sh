#!/usr/bin/env bash

cd "$(dirname "$0")"

npm i --save-dev \
  babel-core \
  babel-loader \
  babel-preset-env \
  babel-watch \
  eslint \
  eslint-config-airbnb-base \
  eslint-plugin-import \
  js-yaml \
  serverless-webpack \
  webpack \
  webpack-node-externals \

npm i --save \
  express \
  aws-serverless-express \

rm setup.sh
rm -rf .git
echo '# __YOUR_SERVICE_NAME_HERE__' > README.md
