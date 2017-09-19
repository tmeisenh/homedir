#!/bin/bash

pkgs=(
tern 
eslint@3.19 
eslint_d@4.2.5 
babel-eslint@7.2.2 
eslint-plugin-react@7.1.0 
eslint-config-airbnb@15.1.0 
eslint-plugin-import@2.7.0 
eslint-plugin-mocha@4.11.0
eslint-plugin-jsx-a11y@5.1.1 
eslint-plugin-promise@3.5.0
)

echo "Installing packages for node version: `node --version`"
echo "Installing packages from npm version: `npm --version`"

for i in ${pkgs[@]}; do
  pkg=`echo "${i}" | cut -d @ -f 1`
  npm uninstall -g ${pkg}
done

#npm install -g "${pkgs[@]}"
