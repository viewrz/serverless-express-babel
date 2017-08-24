#!/usr/bin/env bash

cd "$(dirname "$0")"

npm i \
  aws-serverless-express \
  babel-core \
  babel-loader \
  babel-preset-env \
  babel-register \
  babel-watch \
  eslint \
  eslint-config-airbnb-base \
  eslint-plugin-import \
  express \
  js-yaml \
  serverless-webpack \
  webpack \

rm setup.sh
rm -rf .git
echo '# __YOUR_SERVICE_NAME_HERE__' > README.md
