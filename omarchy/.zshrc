# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh



export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
source $ZSH/oh-my-zsh.sh

#mystuff
source ~/.config/.myshellconfig.sh 

#powerlevel10k
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
#ormarchy 
# If not running interactively, don't do anything (leave this at the top of this file)
[[ $- != *i* ]] && return
# All the default Omarchy aliases and functions
# (don't mess with these directly, just overwrite them here!)
# Add your own exports, aliases, and functions here.
# Make an alias for invoking commands you use constantly
# alias p='python'

# Just source the Omarchy bash aliases, or copy them over
source ~/.local/share/omarchy/default/bash/aliases

clear 

function open() {
    xdg-open "$@" >/dev/null 2>&1 &
}
