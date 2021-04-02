#!/bin/sh
#  ____            _              
# | __ )  __ _ ___| |__  _ __ ___ 
# |  _ \ / _` / __| '_ \| '__/ __|
# | |_) | (_| \__ \ | | | | | (__ 
# |____/ \__,_|___/_| |_|_|  \___|
# ________________________________


# Set the prompt
#PS1='\e[1m\e[96m\u\e[0m@\e[1m\e[96m\h\e[0m:\e[94m\w\e[0m$ '
PS1='\e[1m\e[92m\w > \e[0m'
                                
export PATH=$PATH:$HOME/.local/bin:$HOME/.cargo/bin
export EDITOR="nvim"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Include the aliases file
if [ -f ~/.bash_aliases ]; then
   . ~/.bash_aliases
fi

# Some aliases
alias ls='ls --color=auto'
alias home='cd ~/;clear;systeminfo'
alias cmatrix='cmatrix -b'
alias vim='nvim'
alias sys='clear;neofetch'
alias rdp='xfreerdp /d:home.local /u:rick /bpp:32 /sound /f'
alias yt='youtube-dl'
alias sexy='wal --theme sexy-sexcolors -q;clear;systeminfo;wal --preview'
alias tango='wal --theme sexy-tangoesque -q;clear;systeminfo;wal --preview'
alias status='clear;sudo status'
alias setwall='sxiv -t $HOME/Pictures/Wallpapers/*'

# Pacman aliases
alias pmi='sudo pacman -S'
alias pmug='sudo pacman -Syu'
alias pmud='sudo pacman -Syy'
alias pms='pacman -Ss'
alias pma='pacman -Qu'

# AUR aliases using yay
alias auri='yay --noconfirm -S'
alias aurs='yay -Ss'

(cat $HOME/.cache/wal/sequences &)
systeminfo
