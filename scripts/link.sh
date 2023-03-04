#!/bin/sh
dotfiles_root=$(cd $(dirname $0)/.. && pwd)

# dotfilesディレクトリの中身のリンクをホームディレクトリ直下に作成
cd ${dotfiles_root}/files
for file in .*; do
    ln -s ${PWD}/${file} ${HOME}
done

ln -s apps/vscode/setting.json ~/Library/Application\ Support/Code/User/settings.json