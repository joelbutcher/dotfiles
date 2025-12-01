#!/bin/sh

echo "Setting up your Mac ❤️..."
echo '-------------------------'
read -p 'This will reset your terminal. Are you sure you want to do this? (y/n): ' reply

if [[ $reply =~ ^[Nn]$ ]]
then
   echo "Aborting..."
   exit 0
fi

# Ask for the administrator password upfront
echo "We need your password for some installation steps..."
sudo -v

# Keep-alive: update existing `sudo` time stamp until script has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Check for Homebrew and install if we don't have it
echo "Installing Homebrew..."
if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Install Starship
echo "Installing Starship..."
if command -v starship &> /dev/null; then
    echo "Starship is already installed"
else
    # Create /usr/local/bin if it doesn't exist
    echo "Creating /usr/local/bin directory..."
    sudo mkdir -p /usr/local/bin

    # Install Starship
    if curl -sS https://starship.rs/install.sh | sh; then
        echo "Starship installed successfully"
    else
        echo "Failed to install Starship" >&2
        exit 1
    fi
fi
    
# Install oh-my-zsh
echo "Installing oh-my-zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    
echo "Configuring zsh..."

# Create .zsh directory
ZSH_DIRECTORY="$HOME/.zsh"

mkdir -p "$ZSH_DIRECTORY"
echo "Copying zsh config"
cp -r "$HOME/.dotfiles/.zsh" "$HOME/.zsh"

# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from the .dotfiles
rm -rf $HOME/.zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc

# Update Homebrew recipes
brew update

# Install all the dependencies with bundle (See Brewfile)
echo "Installing Homebrew packages..."
brew bundle --file $HOME/.dotfiles/Brewfile

# Disable "Last login" message
[ ! -f ~/.hushlogin ] && touch ~/.hushlogin


# Set macOS preferences
# We will run this last because this will reload the shell
source $HOME/.dotfiles/.macos

