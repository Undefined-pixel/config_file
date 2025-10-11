#!/bin/sh
path=$(pwd)

move_to_pre_config_folder() {
  cd ..
  cd pre_config_folder
}
go_back_to_workpace() {
  path=$1
  cd "$path"
}
