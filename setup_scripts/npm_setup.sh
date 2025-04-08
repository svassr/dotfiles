#!/bin/bash
# npm dependencies that I'm not likely to live without
echo "# Installing Node global library ... ";
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash
npm install -g jshint
npm install -g jsxhint
npm install -g grunt-cli
npm install -g gulp
npm install -g yo
npm install -g http-server
npm install -g jasmine
npm install -g mocha
