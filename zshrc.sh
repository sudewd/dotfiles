# .zshrc
 
# Emacs binds (for the time being).
bindkey -e

# Navigation
bindkey '[C' forward-word
bindkey '[D' backward-word

# History options.
HISTFILE=~/.histfile
HISTSIZE=3000
SAVEHIST=3000
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt SHARE_HISTORY
setopt BRACE_CCL

# zsh completion options.
zstyle ':completion:*' completer _expand _complete _ignored
zstyle :compinstall filename '/Users/ndewing/.zshrc'

# Enable completion
autoload -Uz compinit
compinit

# Sourcing other files.
source $HOME/.zsh/aliases
source $HOME/.zsh/prompt
source $HOME/.zsh/functions

# Base16 Shell
BASE16_SHELL=$HOME/.zsh/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

export PATH="$HOME/bin:/usr/local/sbin:/usr/local/bin:$PATH"
export PATH="/usr/local/opt/openssl/bin:$PATH"
export PATH="$(go env GOPATH)/bin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="/usr/local/lib/ruby/gems/2.6.0/bin:$PATH"
export EDITOR=$(which vim)

# Python virtualenvwrapper
VIRTUALENVWRAPPER_PYTHON="$(command \which python3)"
source /usr/local/bin/virtualenvwrapper.sh

# Add ChefDK to path if it is installed.
# if [[ -d '/opt/chefdk' ]]; then
#   eval "$(chef shell-init zsh)"
# fi
export REGISTRY_CACHE=/Users/ndewing/.registry_cli_cache
export REGISTRY_CREDENTIALS=/Users/ndewing/.registry_credentials_cache
export REGISTRY_CLI_ENV=prd
export IS_REGISTRY_TEAM=0