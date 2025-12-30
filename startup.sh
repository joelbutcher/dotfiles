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
}

install_brew() {
    if which brew; then
        echo 'Homebrew is already installed'
    else
        NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" < /dev/null
    fi
}

install_on_mac

brew install chezmoi < /dev/null

chezmoi init https://github.com/joelbutcher/dotfiles < /dev/null
chezmoi apply < /dev/null
