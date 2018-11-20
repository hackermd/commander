## Installation

Clone the repository:

    $ git clone https://github.com/hackermd/commander ~/commander

## Requirements

### General

* tmux
* vim

### MacOSX

* reattach-to-user-namespace

### Linux

* xclip

## Configuration

### IPython:

```None
mkdir -p ~/.ipython/profile_default
curl -s https://raw.githubusercontent.com/hackermd/commander/master/ipython_config.py > ~/.ipython/profile_default/ipython_config.py
```

### Tmux:

```None
mkdir -p ~/.tmux/plugins
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
curl -s https://raw.githubusercontent.com/hackermd/commander/master/tmux.conf > ~/.tmux
```

Start `tmux` and install plugins via shortcut `prefix + I`.

### Bash:

```None
curl -s https://raw.githubusercontent.com/hackermd/commander/master/bashrc > ~/.bashrc
curl -s https://raw.githubusercontent.com/hackermd/commander/master/bash_profile > ~/.bashrc_profile
curl -s https://raw.githubusercontent.com/hackermd/commander/master/inputrc > ~/.inputrc
curl -s https://raw.githubusercontent.com/hackermd/commander/master/dir_colors > ~/.dir_colors
```

## OS-specific configurations

### MacOSX

#### Command line tools

On MacOSX we need a package manager and some additional 

Install the Xcode command line tools (not the full Xcode version!):

    $ xcode-select --install

Install Homebrew and a couple of useful programs:

    $ ~/commander/brew.sh

#### iTerm2 Settings

Use a different background color to match the background of Vim windows configured via [hackermd/vimanizer](https://github.com/hackermd/vimanizer):

    Preferences > Profiles > Colors > Background
    `242424` RGB Hex

Remap option key to behave as in Linux terminal:

    Preferences > Profiles > Keys > Left option key acts as
    `+Esc`

### Linux Ubuntu

#### Terminal Settings

Use a different background color to match the background of Vim windows configured via [hackermd/vimanizer](https://github.com/hackermd/vimanizer):

    Edit > Profile Preferences > Colors > Text and Background Color > Built-in schemes: Custom

Set *background color* to `242424` RGB Hex and *text color* to `ffffff`.


