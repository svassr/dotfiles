
# dev-related programs - install Vagrant

echo "# Installing vagrant #";
brewcask vagrant #require root autorisation
brewcask vagrant-manager
brew install  homebrew/completions/vagrant-completion
vagrant plugin install vagrant-berkshelf
vagrant plugin install vagrant-hostmanager
