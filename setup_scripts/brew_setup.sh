#!/usr/bin/env bash

# Install command-line tools using Homebrew.
if hash gdate 2>/dev/null; then
  echo "brew already installed";
  brew --version;
else
  # brew setup
  echo "# Installing brew #";
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install a modern version of Bash.
brew install bash
<<<<<<< HEAD:setup_scripts/brew_setup.sh
brew tap homebrew/versions
brew install bash-completion2 # This might conflict with bash-completion if it has been previously installed
=======
brew install bash-completion2
>>>>>>> 3fbceb469cc52f021b11f4a0d335c4362366cac4:brew.sh

# Switch to using brew-installed bash as default shell
if ! fgrep -q "${BREW_PREFIX}/bin/bash" /etc/shells; then
  echo "${BREW_PREFIX}/bin/bash" | sudo tee -a /etc/shells;
  chsh -s "${BREW_PREFIX}/bin/bash";
fi;

# Install `wget` with IRI support.
brew install wget --with-iri

<<<<<<< HEAD:setup_scripts/brew_setup.sh
# install node
brew install node

# install mongodb
brew install mongodb

# Dependencies
brew install jpeg-turbo
brew install optipng
brew install readline


# Install RingoJS and Narwhal.
# Note that the order in which these are installed is important;
# see http://git.io/brew-narwhal-ringo.
brew install ringojs
brew install narwhal
=======
# Install GnuPG to enable PGP-signing commits.
brew install gnupg
>>>>>>> 3fbceb469cc52f021b11f4a0d335c4362366cac4:brew.sh

# Install more recent versions of some macOS tools.
brew install vim --with-override-system-vi
brew install grep
brew install openssh
brew install screen
brew install php
brew install gmp

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Install some CTF tools; see https://github.com/ctfs/write-ups.
brew install aircrack-ng
brew install bfg
brew install binutils
brew install binwalk
brew install cifer
brew install dex2jar
brew install dns2tcp
brew install fcrackzip
brew install foremost
brew install hashpump
brew install hydra
brew install john
brew install knock
brew install netpbm
brew install nmap
brew install pngcheck
brew install socat
brew install sqlmap
brew install tcpflow
brew install tcpreplay
brew install tcptrace
brew install ucspi-tcp # `tcpserver` etc.
brew install xpdf
brew install xz

# Install other useful binaries.
brew install ack
<<<<<<< HEAD:setup_scripts/brew_setup.sh
brew install the_silver_searcher
brew install dark-mode
=======
>>>>>>> 3fbceb469cc52f021b11f4a0d335c4362366cac4:brew.sh
#brew install exiv2
brew install git
brew install git-lfs
brew install gs
brew install imagemagick --with-webp
brew install lua
brew install lynx
brew install p7zip
brew install pigz
brew install pv
brew install rename
brew install rlwrap
brew install ssh-copy-id
brew install tree
brew install vbindiff
brew install zopfli
brew install ant
brew install mercurial
brew install irssi
brew install phantomjs
brew install unrar
brew install trash

# Remove outdated versions from the cellar.
brew cleanup

# install brew completion
brew install bash-completion
brew tap homebrew/completions
