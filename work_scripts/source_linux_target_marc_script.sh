#!/bin/sh

rsync -av $HOME/repo/config_file/linux/.config/.myshellconfig.sh $HOME/repo/config_file/mac/.config/.myshellconfig.sh
rsync -av $HOME/repo/config_file/linux/.config/fastfetch/ $HOME/repo/config_file/mac/.config/fastfetch/
rsync -av $HOME/repo/config_file/linux/.config/zed/ $HOME/repo/config_file/mac/.config/zed/
rsync -av $HOME/repo/config_file/linux/.config/kitty/ $HOME/repo/config_file/mac/.config/kitty/
