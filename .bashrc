# enable coloring in terminal
export CLICOLOR=1

# coloring style
export LSCOLORS=Exfxcxdxbxegedabagacad

##
# Android SDK
##

export ANDROID_BUILD_TOOLS_VER=24.0.1

export ANDROID_HOME=/opt/android-sdk

export PATH=$ANDROID_HOME/tools:$PATH
export PATH=$ANDROID_HOME/platform-tools:$PATH
export PATH=$ANDROID_HOME/build-tools/$ANDROID_BUILD_TOOLS_VER:$PATH

# Android NDK
export ANDROID_NDK=/opt/android-ndk
export ANDROID_NDK_HOME=$ANDROID_NDK
export PATH=$ANDROID_NDK:$PATH

# Jtool
export PATH=$PATH:/opt/jtool

# Ensureit shitz
export ENSUREIT_DIR=/opt/ensureit/ensureit-current

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
alias vim="nvim"
alias vi="nvim"
alias vimdiff='nvim -d'
alias vf='vim $(fzf)'
alias grep='grep -n --color=always'

# neovim stuffs
export EDITOR=nvim

if [ -f "$(brew --prefix bash-git-prompt)/share/gitprompt.sh" ]; then
    GIT_PROMPT_THEME=Custom
    source "$(brew --prefix bash-git-prompt)/share/gitprompt.sh"
fi

if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi

#ADDED BY 010 EDITOR
export PATH="$PATH:/Applications/010 Editor.app/Contents/CmdLine"
