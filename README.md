## TCS MacBook アップデータツール
### TCS ICTの学びにおけるアップデートを行うためのツール
## A. Homebrewを使ったソフトウェア管理
### 1. 使い方：フォルダをダウンロードし、下記をTerminalで実行するだけ。
```
tcs$ sh init.sh
```

### 2. インストールされるソフトウェアリスト
* Homebrew `ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
* git `brew install git`
* brew-cask `brew tap caskroom/cask`
* Unity `brew cask install unity`
* Visual Studio Code `brew cask install visual-studio-code`
* cyberduck `brew cask install cyberduck`
* InkScape `brew cask install inkscape`
* Gimp `brew cask install gimp`
* Evernote `brew cask install evernote`
* Google Drive `brew cask install google-drive`
* Google Chrome `brew cask install google-chrome`
* Google Japanese IME `brew cask install google-japanese-ime`
* Firefox `brew cask install firefox`
* Caffeine `brew cask install caffeine`
* Skype `brew cask install skype`
* Atom `brew cask install atom`
* SoundFlower `brew cask install soundflower`

### 3. ディレクトリ構成
```
./README.md # README
./init.sh #　実行するファイル
./Brewfile
```

## B. vimの設定を行う
### vim（テキストエディタ）の設定を簡単にするツール
### NeoBundleを使って拡張機能をインストール
```
cd .vim
sh init.sh
```
