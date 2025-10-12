#!/bin/bash

rsync -av $HOME/repo/config_file/linux/.config/zed/settings.json $HOME/.config/zed/settings.json
rsync -av $HOME/repo/config_file/linux/.config/zed/keymap.json $HOME/.config/zed/keymap.json

rsync -av $HOME/repo/config_file/linux/.config/.myshellconfig.sh $HOME/.config/.myshellconfig.sh

ZSHRC="$HOME/.zshrc"
LINE='source ~/.config/.myshellconfig.sh'

# Create the file if it doesn't exist
if [ ! -f "$ZSHRC" ]; then
  echo "✅ $ZSHRC does not exist – creating it."
  touch "$ZSHRC"
fi

# Add the line only if it doesn't already exist
if grep -qxF "$LINE" "$ZSHRC"; then
  echo "ℹ️ Line already exists."
else
  echo "$LINE" >>"$ZSHRC"
  echo "✅ Line added to $ZSHRC"
fi
