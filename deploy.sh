#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# create .nojekyll file
touch dist/.nojekyll

# deploy
npx gh-pages -d dist

echo "Deployed to GitHub Pages"