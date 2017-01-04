ZSH=$HOME/.oh-my-zsh
ZSH_THEME="fastred"
DISABLE_AUTO_UPDATE="true"
DISABLE_LS_COLORS="true"

plugins=(git bundler brew gem rbates)

alias update_xcode_plugins_udids="find ~/Library/Application\ Support/Developer/Shared/Xcode/Plug-ins -name Info.plist -maxdepth 3 | xargs -I{} defaults write {} DVTPlugInCompatibilityUUIDs -array-add $(defaults read /Applications/Xcode.app/Contents/Info DVTPlugInCompatibilityUUID)"

export PATH="/usr/local/bin:$PATH"

source $ZSH/oh-my-zsh.sh

# load common aliases and env variables
[[ -f ~/.profile ]] && .  ~/.profile
