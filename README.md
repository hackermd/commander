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

### General

#### Tmux

Create a softlink for the `tmux` configuration file:

    $ ln -s ~/commander/tmux.conf ~/.tmux.conf
    $ ln -s ~/commander/tmux-darwin.conf ~/.tmux-darwin.conf

#### Dir colors

Create a softlink for the custom color configuration file:

    $ ln -s ~/commander/dir_colors ~/.dir_colors


