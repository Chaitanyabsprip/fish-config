source $HOME/.config/fish/themes/tokyonight_storm.fish

### EXPORT ###
export ANDROID_SDK_ROOT=$HOME/Library/Android/Sdk
export FLUTTER_ROOT=$HOME/fvm/default
export JAVA_HOME=(/usr/libexec/java_home)
export GOPATH=$HOME/go
fish_add_path $FLUTTER_SDK_ROOT/bin
fish_add_path $FLUTTER_SDK_ROOT/bin/cache/dart-sdk/bin
fish_add_path $GOPATH/bin
fish_add_path $HOME/.cargo/bin
fish_add_path $HOME/.pub-cache/bin
fish_add_path $HOME/Library/Android/sdk/platform-tools/
fish_add_path $HOME/go/bin
fish_add_path $HOME/miniforge3/bin
fish_add_path /opt/homebrew/Cellar/llvm/12.0.1/bin
export LDFLAGS=-L/opt/homebrew/opt/llvm/lib
export CPPFLAGS=-I/opt/homebrew/opt/llvm/include
export VISUAL=nvim
export EDITOR=$VISUAL

# Locale
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# navigation
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

alias q='exit'

# Changing "ls" to "exa"
alias ls='exa -al --color=always --group-directories-first' # my preferred listing
alias la='exa -a --color=always --group-directories-first' # all files and dirs
alias ll='lsd -d'
alias lt='exa -aT --color=always --group-directories-first' # tree listing

# Changing "cat" to "bat"
alias cat='bat'

# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'

alias c="/usr/bin/clear"

# Git abbreviations
abbr ga "git add"
abbr gb "git branch"
abbr gc "git switch"
abbr gf "git fetch -apP"
abbr gps "git push"
abbr gpl "git pull"
abbr gr "git restore"
abbr gst "git status"
abbr gnb "git worktree add -b"
abbr gn "git worktree add"
abbr gwp "git worktree prune"

abbr n nvim

# Print each entry on path on a new line
function ppath
    for path in $PATH
        echo $path
    end
end

/opt/homebrew/bin/brew shellenv | source
starship init fish | source
