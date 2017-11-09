# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# Language settings
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8

# Use vim as editor
export EDITOR='vim'
export VISUAL='vim'

# Use vi mode instead of emacs
set -o vi
set show-mode-in-prompt on

###########
# Mac OSX #
###########

if [[ "$OSTYPE" == "darwin"* ]]; then

    # Stuff installed via homebrew
    if [ $(which brew) ]; then

        # Enable GNU command line tools and corresponding man pages
        export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
        export MANPATH="$(brew --prefix coreutils)/libexec/gnuman:$MANPATH"

        # Prefer GNU command line tools over defaults
        export PATH="$(brew --prefix coreutils)/libexec/gnubin:/usr/local/bin:$PATH"

        export CC=gcc-7
        export CXX=g++-7
    fi

fi

##########
# Python #
##########

# Virtualenvwrapper
if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
    export WORKON_HOME=~/.envs
    source /usr/local/bin/virtualenvwrapper.sh
fi

# Make sure "user" installed binaries are on the path
export PATH=$HOME/.local/bin:$PATH

########
# Java #
########

# Ensure openjdk for java 8 is used if available
if [ -f /usr/lib/jvm/java-1.8-openjdk ]; then
    export JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
fi

###########
# Aliases #
###########

# Start mutt in Downloads folder to facilitate saving attachments
if [ -d $HOME/Downloads ]; then
    alias mutt="cd $HOME/Downloads && mutt"
fi

# Change directories
alias ,='cd ..'
alias ,,='cd ../..'
alias ,,,='cd ../../..'
alias ,,,,='cd ../../../..'

# List direcory contents
if [ $(which dircolors) ]; then
    test -r $HOME/.dircolors && eval "$(dircolors -b $HOME/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
fi
alias lsa='ls -lah'
alias lla='ls -la'
alias ll='ls -l'
alias la='ls -a'

# Regularily used git commands
alias gs='git status'
alias ga='git add'
alias gaa='git add --all'
alias gc='git commit'
alias gp='git pull'
alias gpa='git pull && git submodule foreach --recursive git pull'
alias gr='git reset'
alias gd='git diff'
alias gl='git log'
alias grl='git reflog'

# Ensure that ipython stays within virtual environmentes
alias ipy="python -c 'import IPython; IPython.terminal.ipapp.launch_new_instance()'"

# Start vim with spell checking
alias vims="vim -c 'set spell spelllang=en'"
