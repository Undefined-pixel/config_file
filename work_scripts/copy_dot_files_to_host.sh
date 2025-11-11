#!/bin/bash

source ./helper_functions.sh

copy_dot_to_home() {
  rsync -av .vimrc $HOME/.vimrc
  rsync -av .tmux.conf $HOME/.tmux.conf
  OS=$(uname)
  if [[ "$OS" == "Darwin" ]]; then
    rsync -av .aerospace.toml $HOME/.aerospace.toml
  fi
}

move_to_pre_config_folder
copy_dot_to_home
go_back_to_workpace "$path"
