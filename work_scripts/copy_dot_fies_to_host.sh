#!/bin/bash

source ./helper_functions.sh

copy_vimrc_to_home() {
  rsync -av .vimrc $HOME/.vimrc
}

move_to_pre_config_folder
copy_vimrc_to_home
go_back_to_workpace "$path"
