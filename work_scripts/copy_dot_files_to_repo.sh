#!/bin/bash

source ./helper_functions.sh

copy_dot_to_repo() {
  rsync -av $HOME/.vimrc .vimrc
  rsync -av $HOME/.tmux.conf .tmux.conf
  OS=$(uname)
  if [[ "$OS" == "Darwin" ]]; then
    rsync -av $HOME/.aerospace.toml .aerospace.toml
  fi
}

move_to_pre_config_folder
copy_dot_to_repo
go_back_to_workpace "$path"
