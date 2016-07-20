#!/bin/bash
# First Time Mac Setup. Install all basic software and tools

WORKSPACE_DIR="Projects"

# setup folder structure
mkdir ~/$WORKSPACE_DIR;
WORKSPACE_PATH=~/$WORKSPACE_DIR;

echo "Workspace path: $WORKSPACE_PATH";
$WORKSPACE_PATH/dotfiles/setup_scripts/brew_setup.sh

## Get dotfiles repo and setup symlinks
git clone https://github.com/svassr/dotfiles.git $WORKSPACE_PATH/dotfiles
$WORKSPACE_PATH/dotfiles/setup_scripts/bootstrap.sh --force

$WORKSPACE_PATH/dotfiles/setup_scripts/npm_setup.sh

$WORKSPACE_PATH/dotfiles/setup_scripts/vim_setup.sh

# dev-related programs - install rvm
\curl -sSL https://get.rvm.io | bash -s stable --ruby

# dev-related programs - install meteor
\curl https://install.meteor.com/ | sh

# install native Apps: Browsers, dev tools and utils
$WORKSPACE_PATH/dotfiles/setup_scripts/macos_apps_setup.sh

echo "Almost Done. Here are a few apps and tools that require root access. You can also later run ./root_apps.sh";
read -p "Would you like to continue? (y/n) " -n 1
echo "";
if [[ $REPLY =~ ^[Yy]$ ]]; then
  $WORKSPACE_PATH/dotfiles/setup_scripts/root_apps_setup.sh --force
fi

$WORKSPACE_PATH/dotfiles/.macos
