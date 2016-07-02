# First Time Mac Setup. Install all basic software and tools

# setup folder structure
mkdir ~/Projects

~/Projects/dotfiles/brew.sh

## Get dotfiles repo and setup symlinks
git clone https://github.com/svassr/dotfiles.git ~/Projects/dotfiles
~/Projects/dotfiles/bootstrap.sh

./npm.sh

./vim.sh

# dev-related programs - install rvm
\curl -sSL https://get.rvm.io | bash -s stable --ruby

# dev-related programs - install meteor
\curl https://install.meteor.com/ | sh

# install native Apps: Browsers, dev tools and utils
~/Projects/dotfiles/macos_apps.sh

echo "Almost Done. Here are a few apps and tools that require root access. You can also later run ./root_apps.sh";
read -p "Would you like to continue? (y/n) " -n 1
echo "";
if [[ $REPLY =~ ^[Yy]$ ]]; then
  ~/Projects/dotfiles/root_apps.sh
fi

~/Projects/dotfiles/.macos
