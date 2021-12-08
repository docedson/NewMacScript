# Apps and other items that should install automatically for you

#!/usr/bin/env bash

# Initial install of some x-code items
echo "Installing xcode items"
xcode-select --install

# Check for Homebrew, and then install it
if test ! "$(which brew)"; then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo "Homebrew installed successfully"
else
    echo "Homebrew already installed!"
fi

# Updating Homebrew.
echo "Updating Homebrew..."
brew update

# Install Git
echo "Installing Git..."
brew install git

# Configuring Git globally. NOTE: UPDATE INFORMATION THAT RELATES TO YOU!!!
# Replace John Doe with your first and last name inside the single quotes
git config --global user.name ‘John Doe’
# Replace C_Doe.John@Cerner.com with your C_Lastname.Firstname@Cerner.com email
git config --global user.email C_Doe.John@Cerner.com
# Replace username with your Cerner Associate ID (ie: AE074267)
git config --global github.user username

git config --global color.ui auto
git config --global core.autocrlf input
git config --global credential.helper osxkeychain
git config --global push.default simple

# Install RVM with Ruby
echo "Installing RVM..."
/bin/bash -c "$(curl -sSL https://get.rvm.io | bash -s stable --ruby)"

# Install Rails
echo "Installing Rails..."
gem install rails

# Install bundler
echo "Installing bundler..."
gem install bundler

# Install NVM
echo "Installing NVM..."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Install yarn
echo "Installing yarn..."
brew install yarn

# Install and start MySQL
echo "Installing and starting MySQL..."
brew install mysql
brew services start mysql

# Install XCode Command Line Tools
echo 'Checking to see if XCode Command Line Tools are installed...'
brew config

# Upgrade any already-installed formulas.
echo "Upgrading Homebrew..."
brew upgrade

# Install iTerm2
echo "Installing iTerm2..."
brew cask install iterm2

# Install VSCode
echo "Installing VSCode..."
curl -fsSL https://code.visualstudio.com/sha/download?build=stable&os=darwin-universal &&
unzip VSCode-darwin-universal.zip
echo "VSCode installed successfully"

# Development tool casks
brew cask install --appdir="/Applications" visual-studio-code

# Apps to install. Add/remove apps to the list for your needs.
apps=(
    firefox
    google-chrome
)

# Install the above apps
echo "Installing apps with Cask..."
brew cask install --appdir="/Applications" ${apps[@]}

# Remove outdated versions from the cellar.
echo "Running brew cleanup..."
brew cask cleanup
brew cleanup
echo "You're done for now!"
