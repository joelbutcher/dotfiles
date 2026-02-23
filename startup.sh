#!/bin/sh

echo "Setting up your Mac ❤️..."

install_on_mac() {
    xcode-select --install || echo "XCode already installed"
    install_brew
    (
        echo
        echo 'eval "$(/opt/homebrew/bin/brew shellenv)"'
    ) >>$HOME/.bashrc
    eval "$(/opt/homebrew/bin/brew shellenv)"
    install_spin
}

install_brew() {
    if command -v brew > /dev/null 2>&1; then
        echo 'Homebrew is already installed'
    else
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    fi
}

install_spin() {
  if command -v spin > /dev/null 2>&1; then
    echo 'Spin is already installed'
  else
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/serversideup/spin/main/tools/install.sh)"
  fi
}

install_on_mac

brew install chezmoi

chezmoi init https://github.com/joelbutcher/dotfiles
chezmoi apply
