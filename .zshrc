export CLICOLOR=1

# coloring style
export LSCOLORS=Exfxcxdxbxegedabagacad

##
# Android SDK
##

export ANDROID_BUILD_TOOLS_VER=27.0.3

export ANDROID_HOME=/opt/android-sdk
export ANDROID_SDK=$ANDROID_HOME
export ANDROID_SDK_ROOT=$ANDROID_SDK

export PATH=$ANDROID_HOME/tools:$PATH
export PATH=$ANDROID_HOME/platform-tools:$PATH
export PATH=$ANDROID_HOME/build-tools/$ANDROID_BUILD_TOOLS_VER:$PATH

# Android NDK
export ANDROID_NDK_ROOT=/opt/android-ndk
export ANDROID_NDK=$ANDROID_NDK_ROOT
export ANDROID_NDK_HOME=$ANDROID_NDK
export PATH=$ANDROID_NDK:$PATH
# put this behind path so we are after system things in /usr/bin (e.g. /usr/bin/clang vs the clang in the ndk)
export PATH=$PATH:$ANDROID_NDK/toolchains/llvm/prebuilt/darwin-x86_64/bin

# Jtool
export PATH=$PATH:/opt/jtool

# Setting fd as the default source for fzf
# so it respects things like .gitignore
export FZF_DEFAULT_COMMAND='rg --files --hidden -L'

# some common used alias'
alias ll='ls -lG'
alias logcat='adb logcat'
alias idb='ssh idevice-usb'
alias howbig='du -d0 -h'
alias gs='git status'
alias burpsuite='java -jar /opt/burpsuite/burpsuite-current.jar&'
alias adb-type='adb shell input text'
alias adb-tab='adb shell input keyevent 61'
alias adb-ret='adb shell input keyevent 66'
alias adb-plist='adb shell pm list packages'
alias adb-path='adb shell pm path'
alias adb-su='adb shell su'
alias vim="nvim"
alias vi="nvim"
alias vimdiff='nvim -d'
alias vf='vim $(fzf)'
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"
alias ndk-readelf='$ANDROID_NDK/toolchains/llvm/prebuilt/darwin-x86_64/bin/llvm-readelf'
alias ndk-objcopy='$ANDROID_NDK/toolchains/llvm/prebuilt/darwin-x86_64/bin/llvm-objcopy'

# neovim stuffs
export EDITOR=nvim

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/usr/local/share/zsh-syntax-highlighting/highlighters

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="bira-tngo"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git adb arcanist git-prompt osx gradle colorize colored-man-pages cp encode64 web-search brew)

# see https://github.com/ohmyzsh/ohmyzsh/issues/9262
ZSH_DISABLE_COMPFIX=true 

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# cowsay chuck norris quote
#chuck_cow

export PATH="/usr/local/sbin:$PATH"
export PATH="/opt/usr/bin:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
brew analytics off 2>&1 >/dev/null
[ -r /Users/tngo/.profile_devstats ] && . /Users/tngo/.profile_devstats
[ -r /Users/tngo/.profile_lda ] && . /Users/tngo/.profile_lda

# for fzf
# fd - cd to selected directory
fd() {
  local dir
  dir=$(find ${1:-.} -path '*/\.*' -prune \
                  -o -type d -print 2> /dev/null | fzf +m) &&
  cd "$dir"
}

# pyenv stuff
export PATH=$(pyenv root)/shims:$PATH
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
export PATH="/usr/local/opt/binutils/bin:$PATH"
