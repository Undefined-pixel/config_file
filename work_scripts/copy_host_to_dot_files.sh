#!/bin/bash

source ./helper_functions.sh

copy_to_repo() {

  rsync -av $HOME/.vimrc .vimrc
  rsync -av $HOME/.tmux.conf .tmux.conf
}

move_to_pre_config_folder
copy_to_repo
go_back_to_workpace "$path"
