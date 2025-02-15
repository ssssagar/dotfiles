
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

alias reload_zsh='source ~/.zshrc && source ~/.zprofile'

alias sshlogin="ssh -i /path/to/key.pem ubuntu@12.34.56.78"
alias ssmlogin="aws ssm start-session --profile aws_profile --target i-1a2b3c4d5e"
alias myip="curl http://ipecho.net/plain && echo"
alias myipaws="curl http://checkip.amazonaws.com/ && echo"
alias ec2ip="curl http://169.254.169.254/latest/meta-data/public-ipv4 && echo"

sslstatus()
{
    echo
    PORT=443
    IFS=':' read -r -A arr <<< "$1"
    echo "Value passed: ${#arr[@]}"
    if [[ "${#arr[@]}" != 2 ]]; then
        echo "usage: ${0} HOST[:PORT]"
        echo
        echo "Note: If PORT was not provied, ${PORT} will be used by default."
    else
        PORT=(${arr[2]})
    fi
    HOST=(${arr[1]})
    echo "Checking SSL Cert on host \"${HOST}\" for port ${PORT}..."
    echo
    echo | openssl s_client -servername "${HOST}" -connect "${HOST}:${PORT}" 2>/dev/null | openssl x509 -noout -issuer -subject -email -dates -pubkey -fingerprint
}
