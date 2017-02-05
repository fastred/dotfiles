ZSH=$HOME/.oh-my-zsh
ZSH_THEME="fastred"
DISABLE_AUTO_UPDATE="true"
DISABLE_LS_COLORS="true"

plugins=(git bundler brew gem rbates)

export PATH="/usr/local/bin:$PATH"

source $ZSH/oh-my-zsh.sh

# load common aliases and env variables
[[ -f ~/.profile ]] && .  ~/.profile

alias derived_data_delete="rm -rf ~/Library/Developer/Xcode/DerivedData"

export PATH="$HOME/.fastlane/bin:$PATH"

# pwdf: echoes path of front-most window of Finder
pwdf ()
{
   currFolderPath=$( /usr/bin/osascript <<"   EOT"
       tell application "Finder"
           try
               set currFolder to (folder of the front window as alias)
           on error
               set currFolder to (path to desktop folder as alias)
           end try
           POSIX path of currFolder
       end tell
   EOT
   )
   echo "$currFolderPath"
}

alias cdf='cd "`pwdf`"'
