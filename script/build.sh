#!/bin/bash

# build src
rm -rf out/src
mkdir -p out/src
./node_modules/.bin/babel --out-dir out/src src
chmod +x out/src/ESDocCLI.js
(mkdir -p ./bin && cd ./bin && rm -rf ./esdoc && ln -s ../out/src/ESDocCLI.js ./esdoc)
cp -af ./src/Publisher/builder/template ./out/src/Publisher/builder/

# build test
rm -rf out/test/src
mkdir -p out/test/src
./node_modules/.bin/babel --out-dir out/test/src test/src
