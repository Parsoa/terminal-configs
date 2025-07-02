autoload -Uz promptinit
promptinit

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd extendedglob nomatch notify
zstyle :compinstall filename '/home/parsoa/.zshrc'
autoload -Uz compinit
compinit -i -u -C

bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward

bindkey -v

#autoload -U edit-command-line
#zle -N edit-command-line
#bindkey '^V' edit-command-line                   # Opens Vim to edit current command line
#bindkey '^R' history-incremental-search-backward # Perform backward search in command line history
#bindkey '^S' history-incremental-search-forward  # Perform forward search in command line history
#bindkey '^P' history-search-backward             # Go back/search in history (autocomplete)
#bindkey '^N' history-search-forward              # Go forward/search in history (autocomplete)

setopt +o nomatch

# load antigen
source $HOME/.zsh/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
#antigen bundle git
#antigen bundle heroku
#antigen bundle pip
#antigen bundle lein
#antigen bundle command-not-found
#antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
#antigen theme robbyrussell
antigen theme https://github.com/caiogondim/bullet-train-oh-my-zsh-theme bullet-train

# Tell Antigen that you're done.
antigen apply

BULLETTRAIN_VIRTUALENV_BG="green"
BULLETTRAIN_VIRTUALENV_PREFIX=""
BULLETTRAIN_PROMPT_ORDER=(
    context
    dir
    virtualenv
    time
)

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/pkhorsand/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/pkhorsand/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/pkhorsand/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/pkhorsand/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
