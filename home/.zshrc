#!/bin/sh

# If you come from bash you might have to change your $PATH.
export PATH="$HOME/dotfiles/bin:$HOME/.cargo/bin:$HOME/.yarn/bin:/usr/local/bin:/usr/local/opt/go/libexec/bin:$PATH"

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="avit"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration
export ANDROID_HOME="$HOME/Library/Android/sdk"

export NVM_DIR="$HOME/.nvm"
source /usr/local/opt/nvm/nvm.sh

# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/google-cloud-sdk/path.zsh.inc" ]; then source "$HOME/google-cloud-sdk/path.zsh.inc"; fi

# The next line enables shell command completion for gcloud.
if [ -f "$HOME/google-cloud-sdk/completion.zsh.inc" ]; then source "$HOME/google-cloud-sdk/completion.zsh.inc"; fi

for file in $HOME/.{path,exports,aliases,functions,secrets,aliases_private,functions_private,taskwarrior_fns}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done
unset file

export PATH="$HOME/.nimble/bin:$HOME/dev/flutter/bin:$ANDROID_HOME/platform-tools:$ANDROID_HOME/build-tools/27.0.3:$ANDROID_HOME/tools/bin:$PATH"

source $HOME/tmuxinator.zsh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export RIPGREP_CONFIG_PATH="$HOME/.ripgreprc"

# syntax highlighting rules

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
ZSH_HIGHLIGHT_STYLES[cursor]='bold'

ZSH_HIGHLIGHT_STYLES[alias]='fg=blue,bold'
ZSH_HIGHLIGHT_STYLES[suffix-alias]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[function]='fg=blue,bold'
ZSH_HIGHLIGHT_STYLES[command]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[hashed-command]='fg=green,bold'

# Ctrl-O opens zsh at the current location, and on exit, cd into ranger's last location.
ranger-cd() {
	tempfile=$(mktemp)
	ranger --choosedir="$tempfile" "${@:-$(pwd)}" < $TTY
	test -f "$tempfile" &&
	if [ "$(cat -- "$tempfile")" != "$(echo -n `pwd`)" ]; then
	cd -- "$(cat "$tempfile")"
	fi
	rm -f -- "$tempfile"
	# hacky way of transferring over previous command and updating the screen
	VISUAL=true zle edit-command-line
}
zle -N ranger-cd
bindkey '^o' ranger-cd

# Hook for desk activation
[ -n "$DESK_ENV" ] && source "$DESK_ENV" || true

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

_fzf_compgen_path() {
  fd --hidden --follow --exclude ".git" . "$1"
}

# Use fd to generate the list for directory completion
_fzf_compgen_dir() {
  fd --type d --hidden --follow --exclude ".git" . "$1"
}

export FZF_COMPLETION_TRIGGER=''
bindkey '^F' fzf-completion

eval $(thefuck --alias)

export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
