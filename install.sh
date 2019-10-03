#!/usr/bin/env bash

# ================ #
# ===== UTIL ===== #
# ================ #

get_boolean_response() {
  while true; do
    read -p "$1 (Y/N) " yn
    case $yn in
      [Yy]* ) return 0;;
      [Nn]* ) return 1;;
      * ) echo "Please answer yes or no";;
    esac
  done
}

# ================= #
# ====== GIT ====== #
# ================= #

if get_boolean_response "Do you want to install Git configuration files?"
then
  ln -sf $HOME/.dotfiles/git/gitignore_global $HOME/.gitignore_global
  echo "Linked global .gitignore"
  ln -sf $HOME/.dotfiles/git/gitconfig $HOME/.gitconfig
  echo "Linked .gitconfig"
else
  echo "Ignoring git configuration"
fi

