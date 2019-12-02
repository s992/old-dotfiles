#!/bin/sh

echo "Installing Coc extensions.."

mkdir -p $HOME/.config/coc/extensions

pushd $HOME/.config/coc/extensions

if [ ! -f package.json ]
then
  echo '{"dependencies":{}}'> package.json
fi

npm install --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod \
  coc-tsserver \
  coc-json \
  coc-css \
  coc-html \
  coc-angular \
  coc-python \
  coc-marketplace \
  coc-yaml \
  coc-sql \
  coc-svg \
  coc-docker \
  coc-tslint-plugin \
  coc-eslint \
  coc-markdownlint \
  coc-emmet

popd

echo " -> done"

