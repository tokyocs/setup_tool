#!/bin/bash
# Shellで設定する

# Homebrewの有無を確認する
if hash brew 2>/dev/null; then
    # ある場合にはアップデート
    brew update;
    brew upgrade
else
    # ない場合にはインストール
    ruby \
    -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" \
    </dev/null
    brew doctor;
fi
# Install Homebrew requirements
cat brew-requirements.txt | xargs brew install
brew cleanup

# Install or update Cask
if hash brew-cask 2>/dev/null; then
    :
else
    brew install caskroom/cask/brew-cask;
    brew-cask doctor;
fi

# Install Cask requirements
cat cask-requirements.txt | xargs brew-cask install
brew-cask cleanup;
