if [ -f $HOME/.bashrc ]; then
    source $HOME/.bashrc
fi

# Use vim as editor
export EDITOR='vim'
export VISUAL='vim'

# Use vi mode instead of emacs
set -o vi
set show-mode-in-prompt on

