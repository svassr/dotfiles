
# OSX native apps

echo "# Installing brew-cask #";
brew install brew-cask

function brewcask() {
    brew cask install "${@}" 2> /dev/null
}

# dev-related programs
brewcask atom
brew install homebrew/completions/apm-bash-completion
brewcask intellij-idea
brewcask dropbox
brewcask google-chrome
brewcask google-chrome-canary
brewcask firefox
brewcask opera
brewcask iterm2
brewcask sourcetree
brewcask slack
brewcask gimp
brewcask sketch

# utils
brewcask skype
brewcask vlc
brewcask cleanmymac
brewcask macpaw-gemini
brewcask spotify
brewcask deezer

# games
brewcask steam
# brewcask minecraft
# brewcask openttd