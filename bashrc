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

# Prompt [user@host:cwd]$
export PS1='[\u@\h:\w]\\$ '

SYS_INFO="$(uname -a)"
if [[ "${SYS_INFO}" = "Darwin"* ]]; then
    echo "DARWIN"

    # Stuff installed via homebrew
    if [ $(command -v brew) ]; then

        # Enable GNU command line tools and corresponding man pages
        export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
        export MANPATH="$(brew --prefix coreutils)/libexec/gnuman:$MANPATH"

        # Prefer GNU command line tools over defaults
        export PATH="$(brew --prefix coreutils)/libexec/gnubin:/usr/local/bin:$PATH"

        # Do not send analytics
        export HOMEBREW_NO_ANALYTICS=1

    fi

fi

##########
# Python #
##########

# Virtualenvwrapper
if [ $(command -v pip) ]; then

    if [ $(command -v pip3) ]; then
        PIP_EXECUTABLE=pip3
    elif [ $(command -v pip2) ]; then
        PIP_EXECUTABLE=pip2
    else
        PIP_EXECUTABLE=pip
    fi

    if $(command -v "$PIP_EXECUTABLE --disable-pip-version-check freeze"); then
        PIP_CMD (){
            $PIP_EXECUTABLE --disable-pip-version-check freeze | grep -q 'virtualenvwrapper'
        }
    else
        PIP_CMD (){
            $PIP_EXECUTABLE freeze | grep -q 'virtualenvwrapper'
        }
    fi

    # NOTE: `which` is problematic (aliases, etc.) 
    export WORKON_HOME=$HOME/.pyenvs
    if [ $(command -v pip3) ]; then
        if PIP_CMD; then
            export VIRTUALENVWRAPPER_PYTHON=$(which python3)
        fi
    elif [ $(command -v pip2) ]; then
        if PIP_CMD; then
            export VIRTUALENVWRAPPER_PYTHON=$(which python2)
        fi
    else
        if PIP_CMD; then
            export VIRTUALENVWRAPPER_PYTHON=$(which python)
        fi
    fi

    if [ ! -z $VIRTUALENVWRAPPER_PYTHON ]; then
      if [ -f $HOME/.local/bin/virtualenvwrapper.sh ]; then
          source $HOME/.local/bin/virtualenvwrapper.sh
      elif [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
          source /usr/local/bin/virtualenvwrapper.sh
      elif [ -f /usr/bin/virtualenvwrapper.sh ]; then
          source /usr/bin/virtualenvwrapper.sh
      fi
    fi

fi

# Make sure user installed binaries are on the path
export PATH=$HOME/.local/bin:/usr/local/bin$PATH

########
# Java #
########

# Ensure openjdk for java 8 is used if available
if [ -f /usr/lib/jvm/java-1.8-openjdk ]; then
    export JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
fi

#########
# C/C++ #
#########

# Install libraries with the "$HOME/.local" prefix
# - ./configure --prefix=$HOME/.local
# - cmake -DCMAKE_INSTALL_PREFIX=$HOME/.local
export LD_LIBRARY_PATH=$HOME/.local/lib:$LD_LIBRARY_PATH
export PKG_CONFIG_PATH=$HOME/.local/lib/pkgconfig:$PKG_CONFIG_PATH

###########
# Aliases #
###########

# Change directories
alias ,='cd ..'
alias ,,='cd ../..'
alias ,,,='cd ../../..'
alias ,,,,='cd ../../../..'
alias ,,,,,='cd ../../../../..'

# Listing directory contents
alias ls='ls -p'
alias lsa='ls -A'
alias lst='ls -t'
alias lss='ls -S'
alias lsh='ls -lh'
alias lsf='ls -F'
alias lsn='ls -n'
alias lsr='ls -R'

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

# Ensure that ipython stays within virtual environments
alias ipy="python -c 'import IPython; IPython.terminal.ipapp.launch_new_instance()'"

# Vim with spelling checks
alias svim="vim -c 'setlocal spell spelllang=en_us'"

if [[ "${SYS_INFO}" = "Linux"* ]]; then

    alias open='xdg-open'
    
fi
