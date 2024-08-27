### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

### End of Zinit's installer chunk

# Add in zsh plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions

# Load completions
autoload -Uz compinit && compinit

# History
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups
# History - keybindings
bindkey '^r' history-search-backward
bindkey '^t' history-search-forward

# Make auto-completion case-insensitive
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
# Make auto-completion have colors
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

# Use fzf for command history
eval "$(fzf --zsh)"

# General alias
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias symlink="ln -s"
alias ls="eza --long --header --icons -a --no-permissions --no-user --git"
alias cat="bat"
alias ".."="cd .."

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

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export AWS_PROFILE=sts

# For M1 mac (Air)
export PATH="/opt/homebrew/bin:$PATH"

# bun completions
[ -s "/Users/sofiaroc/.bun/_bun" ] && source "/Users/sofiaroc/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Load psql from the Postgres.app
export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"
eval "$(/Users/sofiaroc/.local/bin/mise activate zsh)"

# Load the starship prompt
eval "$(starship init zsh)"
