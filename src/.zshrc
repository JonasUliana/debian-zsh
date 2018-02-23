export LANG="en_US.UTF-8"
export ZSH=/home/jonas/.oh-my-zsh
export TERM="xterm-256color"
export PATH=~/.npm-global/bin:$PATH

ZSH_THEME="powerlevel9k/powerlevel9k"

# Adicionado cor para páginas do 'man'
man() {
    env \
	LESS_TERMCAP_mb=$(printf "\e[1;31m") \
	LESS_TERMCAP_md=$(printf "\e[1;31m") \
	LESS_TERMCAP_me=$(printf "\e[0m") \
	LESS_TERMCAP_se=$(printf "\e[0m") \
	LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
	LESS_TERMCAP_ue=$(printf "\e[0m") \
	LESS_TERMCAP_us=$(printf "\e[1;32m") \
	man "$@"
}

# Configurações do prompt
POWERLEVEL9K_MODE="nerdfont-complete"
CASE_SENSITIVE="true"
HIST_STAMPS="dd/mm/yyyy"

POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%K{white}%k"
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%K{white}%F{161} \uf155%f%F{white} %k\ue0b0%f "

POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=$'\ue0b0'
POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR=$'\ue231'
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=$'\ue0b2'
POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR=$'\ue0b7'

DEFAULT_USER="jonas"
POWERLEVEL9K_ALWAYS_SHOW_CONTEXT=true
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND='gray'
POWERLEVEL9K_CONTEXT_TEMPLATE="%F{160}%n%f"
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND='black'

POWERLEVEL9K_DIR_HOME_BACKGROUND='244'
POWERLEVEL9K_DIR_HOME_FOREGROUND='black'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='244'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='black'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='yellow'
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='black'
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"

POWERLEVEL9K_OS_ICON_BACKGROUND='black'
POWERLEVEL9K_LINUX_ICON='%F{160}\uf302 %F{white}debian%F{160}linux%f'

POWERLEVEL9K_VCS_GIT_ICON=$'\uf1d3'
POWERLEVEL9K_VCS_GIT_GITHUB_ICON=$'\uf113'
POWERLEVEL9K_VCS_STAGED_ICON=$'\uf055'
POWERLEVEL9K_VCS_UNSTAGED_ICON=$'\uf071'
POWERLEVEL9K_VCS_UNTRACKED_ICON=$'\uf00d'
POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON=$'\uf0ab '
POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON=$'\uf0aa '

POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='black'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='160'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='black'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='yellow'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='black'
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='gray'

POWERLEVEL9K_SHOW_CHANGESET=true

POWERLEVEL9K_OK_ICON=$'\uf164'
POWERLEVEL9K_FAIL_ICON=$'\uf165'
POWERLEVEL9K_CARRIAGE_RETURN_ICON=$'\uf165'

POWERLEVEL9K_BATTERY_LOW_FOREGROUND='160'
POWERLEVEL9K_BATTERY_CHARGING_FOREGROUND='yellow'
POWERLEVEL9K_BATTERY_CHARGED_FOREGROUND='gray'
POWERLEVEL9K_BATTERY_DISCONNECTED_FOREGROUND='244'

POWERLEVEL9K_TIME_FORMAT="%F{black}\uf017 %D{%I:%M}%f"
POWERLEVEL9K_TIME_BACKGROUND='244'

ENABLE_CORRECTION="true"

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(background_jobs time battery)

# Extensões
plugins=(
  git
  env
  python
  pyenv
  colorize
)

source $ZSH/oh-my-zsh.sh