# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/darkrift/.oh-my-zsh"
export VISUAL=vim
export EDITOR="$VISUAL"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="jovial"

# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  zsh-autosuggestions
  autojump
  zsh-syntax-highlighting
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# custom functions

if [ -f /home/$USER/.zsh/aliases.sh ]; then
	. /home/$USER/.zsh/aliases.sh
fi


if [ -f /home/$USER/.zsh/functions.sh ]; then
	. /home/$USER/.zsh/functions.sh
fi

# source /home/darkrift/.oh-my-zsh/plugins/autojump/autojump.plugin.zsh
source /home/darkrift/.oh-my-zsh/custom/plugins/autojump/bin/autojump.zsh

clear
