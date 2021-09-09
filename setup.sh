#!/bin/bash
# Credit: https://github.com/bradymholt/dotfiles/blob/5da6b5775f0cc146e110d9b337957942b763af7e/dotfiles-setup.sh

DOTFILES_PATH=$(cd `dirname $0` && pwd)
CURRENT_SCRIPT_NAME=${0##*/}

LINK_TARGET_EXISTS_HANDLING=""
while true; do
    read -p "$(echo -e 'If files exist or are already symlinked, do you want to replace?\nAnswer [y]es, [n]o, or [p]rompt: ')" yn
    case $yn in
        [Yy]* ) LINK_TARGET_EXISTS_HANDLING="f"; break;;
        [Nn]* ) LINK_TARGET_EXISTS_HANDLING=""; break;;
        [Pp]* ) LINK_TARGET_EXISTS_HANDLING="i"; break;;
        * ) echo "Please answer: ";;
    esac
done

# Symlink VS Code files
ln -sv${LINK_TARGET_EXISTS_HANDLING} "${DOTFILES_PATH}/vscode/settings.json" "${HOME}/Library/Application Support/Code/User/settings.json"
ln -sv${LINK_TARGET_EXISTS_HANDLING} "${DOTFILES_PATH}/vscode/keybindings.json" "${HOME}/Library/Application Support/Code/User/keybindings.json"
ln -sv${LINK_TARGET_EXISTS_HANDLING} "${DOTFILES_PATH}/vscode/settings.json" "${HOME}/Library/Application Support/Code - Insiders/User/settings.json"
ln -sv${LINK_TARGET_EXISTS_HANDLING} "${DOTFILES_PATH}/vscode/keybindings.json" "${HOME}/Library/Application Support/Code - Insiders/User/keybindings.json"
