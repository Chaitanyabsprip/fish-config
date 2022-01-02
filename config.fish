source $HOME/.config/fish/themes/tokyonight_storm.fish

### EXPORT ###
export ANDROID_SDK_ROOT="$HOME/Library/Android/Sdk"
export FLUTTER_SDK_ROOT="$HOME/Downloads/flutter"
export JAVA_HOME=(/usr/libexec/java_home)
export PATH="$PATH:$FLUTTER_SDK_ROOT/bin"
export PATH="$PATH:$FLUTTER_SDK_ROOT/bin/cache/dart-sdk/bin"
export PATH="$PATH:$HOME/.cargo/bin"
export PATH="$PATH:$HOME/.pub-cache/bin"
export PATH="$PATH:$HOME/Library/Android/sdk/platform-tools/"
export PATH="$PATH:$HOME/Library/Application Support/Code/User/globalStorage/matklad.rust-analyzer"
export PATH="$PATH:$HOME/go/bin"
export PATH="$PATH:$HOME/miniforge3/bin"
export PATH="$PATH:/opt/homebrew/Cellar/llvm/12.0.1/bin"
export LDFLAGS="-L/opt/homebrew/opt/llvm/lib"
export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"
# export PATH="$PATH:$HOME/.local/bin:$HOME/bin"
# export PATH="$PATH:$HOME/.gem/ruby/2.7.0/bin"
# export ANDROID_AVD_HOME="$HOME/.android/avd"
# export ANDROID_HOME="$HOME/Android/Sdk"
# export CHROME_EXECUTABLE="/usr/bin/google-chrome-stable"
# export PATH="$HOME/.cabal/bin:$PATH"
# export PATH="$HOME/.local/bin:$PATH"
# export VISUAL=nvim
# export EDITOR="$VISUAL"
set TERM "xterm-kitty"

### SET EITHER DEFAULT EMACS MODE OR VI MODE ###
# function fish_user_key_bindings
  # fish_default_key_bindings
  # fish_vi_key_bindings
# end
### END OF VI MODE ###

# Locale
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# navigation
alias ..='cd ..' 
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

alias q='exit'

# Changing "ls" to "exa"
alias ls='exa -al --color=always --group-directories-first' # my preferred listing
alias la='exa -a --color=always --group-directories-first'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first'  # long format
alias lt='exa -aT --color=always --group-directories-first' # tree listing

# Changing "cat" to "bat"
alias cat='bat'

# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

# alias configrepo='git --git-dir=$HOME/dotfiles --work-tree=$HOME'
# alias cr='configrepo'

# alias serve='browser-sync start -s -f . --no-notify --host 127.0.0.1 --port 8000'
# alias prac='cd /data/Projects/Practice/ && ls'
# alias neofetch='neofetch | lolcat'
# alias neovim='neovide & && disown && exit'

# alias python3='/usr/bin/python3.9'
# alias python2='/usr/bin/python2.7'
# alias jlab='$HOME/anaconda3/bin/jupyter-lab'
# alias nvim="VIMRUNTIME=$HOME/Downloads/neovim/runtime $HOME/Downloads/neovim/build/bin/nvim"
alias clear="/usr/bin/clear; /usr/local/bin/greet"
alias c="/usr/bin/clear"

# Git abbreviations
abbr ga "git add"
abbr gb "git branch"
abbr gc "git switch"
abbr gf "git fetch -apP"
abbr gps "git push"
abbr gpl "git push"
abbr gr "git restore"
abbr gst "git status"

# Nvim abbreviations
# all incorrect spelling of nvim should be abbreviated as nvim
abbr n "nvim"
abbr nim "nvim"
abbr nivm "nvim"
abbr nmvi "nvim"
abbr nv "nvim"
abbr nvi "nvim"
abbr nvm "nvim"
abbr nvmi "nvim"
abbr vnim "nvim"

# Print each entry on path on a new line
function ppath
  for path in $PATH
    echo $path
  end
end

################################################################################
#
# FUN ALIASES
# the terminal rickroll
alias rr='curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash'

# Star Wars
alias starWars='telnet towel.blinkenlights.nl'

################################################################################
#
# function fish_greeting
#   set random_index (random 1 4)
#   if test 1 -eq $random_index
#     colorscript -r | lolcat
#   else if test 2 -eq $random_index
#     fortune | cowsay -f (find /usr/share/cows/ -type f \( -name "*.cow" \) | shuf -n1) | lolcat
#   else if test 3 -eq $random_index 
#     figlet -cf ( shuf -n1 -e /usr/share/figlet/*) Chaitanya  | lolcat
#   else if test 4 -eq $random_index 
#     neofetch
#   end
# end

/opt/homebrew/bin/brew shellenv | source
starship init fish | source

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval $HOME/miniforge3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

greet
