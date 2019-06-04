if ! brew > /dev/null 2>&1
then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew cask install xquartz
brew cask install java

brew install binutils \
             cmake \
             coreutils \
             curl \
             diffutils \
             ed \
             findutils \
             gawk \
             gcc \
             gdb \
             git \
             gnu-indent \
             gnu-sed \
             gnu-tar \
             gnu-which \
             gnu-time \
             gnutls \
             gpatch \
             grep \
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
             reattach-to-user-namespace \
             rename \
             rsync \
             the_silver_searcher \
             tmux \
             unzip \
             vim \
             watch \
             wdiff \
             wget
