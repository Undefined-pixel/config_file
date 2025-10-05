#!/bin/sh

#reminder
# --delete → Löscht Dateien im Ziel, die im Quellverzeichnis nicht mehr existieren (perfekt für Spiegelungen)

# --dry-run prüfen ob es geht
#-a → Archivmodus (kopiert rekursiv und bewahrt Rechte, Zeiten, Symlinks usw.)
#-v → Verbose (zeigt, was passiert)

rsync -av $HOME/.config/.myshellconfig.sh $HOME/repo/config_file/linux/.config/.myshellconfig.sh
