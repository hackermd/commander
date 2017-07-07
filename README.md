## Installation

Clone the repository:

    $ git clone https://github.com/hackermd/commander ~/commander


## Requirements

### MacOSX

#### Command line tools

On MacOSX we need a package manager and some additional 

Install the Xcode command line tools (not the full Xcode version!):

    $ xcode-select --install

Install Homebrew and a couple of useful programs:

    $ ~/commander/brew.sh

## Configuration

### MacOSX

#### iTerm2 Settings

Use a different background color to match the background of Vim windows configured via [hackermd/vimanizer](https://github.com/hackermd/vimanizer):

    Preferences > Profiles > Colors > Background
    `242424` RGB Hex

Remap option key to behave as in Linux terminal:

    Preferences > Profiles > Keys > Left option key acts as
    `+Esc`

#### Tmux

Create a softlink for the `tmux` configuration file:

    $ ln -s ~/.tmux.conf ~/commander/tmux.conf

#### Zsh

Clone the `oh-my-zsh` repository:

    $ git clone https://github.com/hackermd/oh-my-zsh ~/.oh-my-zsh

Create a softlink for the `zsh` configuration file to set up your environment:

    $ ln -s ~/.zshrc ~/commander/zshrc
    
Change default shell:

    $ chsh -s $(grep /zsh$ /etc/shells | tail -1)

#### Dir colors

Create a softlink for custom color configuration file:

    $ ln -s ~/.dir_colors ~/commander/dir_colors


