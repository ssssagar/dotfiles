
alias ll='ls -larth'
alias gs='git status'
alias gc='git checkout'
alias gd='git diff'
alias gb='git branch'
alias gp='git pull'
alias gcm='git checkout master'
eval "$(/opt/homebrew/bin/brew shellenv)"

alias subl='open -a "Sublime Text"'

export HISTFILESIZE=10000000

export JAVA_8_HOME=$(/usr/libexec/java_home -v1.8)
export JAVA_11_HOME=$(/usr/libexec/java_home -v11)

alias java8='export JAVA_HOME=$JAVA_8_HOME'
alias java11='export JAVA_HOME=$JAVA_11_HOME'

# default to Java 11
java11


export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

alias reload='source ~/.zshrc'
