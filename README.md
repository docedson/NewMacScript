# NewMacScript

Script for new Cerner Mac installations

## About

This setup script is for setting up a new Cerner Mac with some of the basic applications needed.

Please feel free to alter this script to meet your specific needs, or correct any errors.

### Installation with Curl

To install this script from a brand new Mac (fresh out of the box!) run the following command in terminal:

``` shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/docedson/master/setup.sh)"
```

**Want to know what ```curl -fsSL``` stands for? Checkout this [link](https://explainshell.com/explain?cmd=curl+-fsSL+example.org#).**

All of the following are commands that you can enter directly into Terminal or let the script run for you.

### Terminal Tools

All of the following are commands that you can enter directly into Terminal or let the script run for you.

Install the following terminal tools:

[Homebrew](https://brew.sh/)

  ``` shell
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  ```

Update Homebrew

``` shell
brew config
brew update
brew upgrade
```

[iTerm2](https://www.iterm2.com/)

  ``` shell
  brew cask install iterm2
  ```

[oh-my-zsh](https://ohmyz.sh/)

  ``` shell
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  ```

Git

``` shell
brew install git
```

Ruby

``` shell
brew install ruby
echo "Adding the brew ruby path to shell config..."
echo 'export PATH="/usr/local/opt/ruby/bin:$PATH"' >>~/.bash_profile
```

### Additional Applications

All of the following are commands that you can enter directly into Terminal or let the script run for you.

Install the following applications:

[Visual Studio Code](https://code.visualstudio.com/)

``` shell
brew cask install --appdir="/Applications" visual-studio-code
```

[Firefox](https://www.mozilla.org/en-US/firefox/new/)

``` shell
brew cask install --appdir="/Applications" firefox
```

#### Enable Any Oh My Zsh Plugins

Oh My Zsh comes with a ton of plugins you can take advantage of. Here is the [wiki](https://github.com/ohmyzsh/ohmyzsh/wiki/Plugins) page.

Open your ``` ~/.zshrc ``` file via Terminal

``` shell
open ~/.zshrc
```

Find and edit the plugins section to add the ones you want

``` shell
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git brew ruby osx)
```

#### Set the Oh My Zsh Theme

Open your ``` ~/.zshrc ``` file via Terminal

``` shell
open ~/.zshrc
```

Modify the theme. You can find a list of the themes [here](https://github.com/ohmyzsh/ohmyzsh/wiki/Themes.)

Make sure to save and close the file after editing. You may have quit and reopen iTerm2 for the theme to take effect.

### The End
