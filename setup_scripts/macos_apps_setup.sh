
# OSX native apps

echo "# Installing brew-cask #";
brew install cask
brew install brew-cask-completion

function brewcask() {
    brew cask install "${@}" 2> /dev/null
}

# dev-related programs
brewcask visual-studio-code
brew install homebrew/completions/apm-bash-completion
brewcask intellij-idea
brewcask dropbox
brewcask google-chrome
brewcask firefox
brewcask opera
brewcask iterm2
brewcask sourcetree
brewcask slack
brewcask discord
brewcask gimp
brewcask sketch

# utils
brewcask skype
brewcask vlc
brewcask spotify

