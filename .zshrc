#color
COLOR_DEF='%f'
COLOR_USR='%F{243}'
COLOR_DIR='%F{39}'
COLOR_GIT='%F{46}'

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '[%b]'
 
# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT='${COLOR_USR}%n in ${COLOR_DIR}%d ${COLOR_GIT}${vcs_info_msg_0_}${COLOR_DEF} > '