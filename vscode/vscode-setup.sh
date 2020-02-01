#!/bin/bash

echo
if brew cask list --versions visual-studio-code > /dev/null; then
    echo "Visual Studio Code is installed"
else
    echo "Install Visual Studio Code"
    brew cask install visual-studio-code
fi
echo

EXTENSION=(
akamud.vscode-theme-onedark
aeschli.vscode-css-formatter
msjsdiag.debugger-for-chrome
ms-azuretools.vscode-docker
dbaeumer.vscode-eslint
eamodio.gitlens
tomphilbin.gruvbox-themes
xabikos.javascriptsnippets
andys8.jest-snippets
eg2.vscode-npm-script
christian-kohler.npm-intellisense
esbenp.prettier-vscode
msjsdiag.vscode-react-native
ms-vscode.vscode-typescript-tslint-plugin
jpoissonnier.vscode-styled-components
vscodevim.vim
)

echo Installing extensions
echo $EXTENSION | xargs -n 1 code --install-extension