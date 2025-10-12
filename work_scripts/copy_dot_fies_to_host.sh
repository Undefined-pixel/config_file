#!/bin/bash

source ./helper_functions.sh

copy_dot_to_home() {
  rsync -av .vimrc $HOME/.vimrc
  rsync -av .tmux.conf $HOME/.tmux.conf
}

move_to_pre_config_folder
copy_dot_to_home
go_back_to_workpace "$path"
