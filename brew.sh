if ! brew > /dev/null 2>&1
then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew cask install xquartz

brew install python
brew cask install java

brew tab homebrew/science

brew install binutils \
             cmake \
             coreutils \
             curl \
             diffutils \
             ed --with-default-names \
             findutils --with-default-names \
             gawk \
             gcc \
             gdb \
             git \
             gnu-indent --with-default-names \
             gnu-sed --with-default-names \
             gnu-tar --with-default-names \
             gnu-which --with-default-names \
             gnu-time --with-default-names \
             gnutls --with-default-names \
             gpatch \
             grep --with-default-names \
             gzip \
             htop \
             less \
             m4 \
             make \
             mutt \
             openblas \
             openssh \
             parallel \
             perl \
             python \
             rename \
             rsync \
             the_silver_searcher \
             tmux \
             unzip \
             vim --override-system-vi \
             watch \
             wdiff --with-gettext \
             wget \
             zsh
