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

source ~/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=~/.zsh-syntax-highlighting/highlighters

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

export PATH="/usr/local/sbin:$PATH"
export PATH="/opt/usr/bin:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
