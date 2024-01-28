# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH=/Users/sofiaroc/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME=""

# Pure theme prompt
# autoload -U promptinit; promptinit
# prompt pure

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

plugins=(zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# General alias
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias symlink="ln -s"
alias ls="exa --long --header --icons -a --no-permissions --no-user --git"
alias cat="bat"

# Folder alias
CODE_FOLDER=/Users/sofiaroc/Code

# Project alias
alias tiger-folder="cd $CODE_FOLDER/tiger"
alias tiger="cd $CODE_FOLDER/tiger && mix phx.server"

alias dragon-folder="cd $CODE_FOLDER/dragon"
# TODO: update this
alias dragon="cd $CODE_FOLDER/dragon && npm run dev"

# Git alias
alias gca="git commit -a --ammend"
alias gcm="git commit -m"
alias glog='git log --pretty=format:"#%C(yellow)%h %ad%Cred%d: %Creset%s%Cblue [%cn]" --decorate --date=relative'
alias gal="git add -p"
alias gst="git status"
alias gco="git checkout"

export AWS_PROFILE=sts

eval "$(starship init zsh)"

# For M1 mac (Air)
export PATH="/opt/homebrew/bin:$PATH"

# bun completions
[ -s "/Users/sofiaroc/.bun/_bun" ] && source "/Users/sofiaroc/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Load psql from the Postgres.app
export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"
