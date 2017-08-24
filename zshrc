# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="sunrise"
##ZSH_THEME="dnnebirhos"
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# some more ls aliases
alias mux="tmuxinator"
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'
alias gfw='ssh -qTfnN -D 7070 danielfeng@ssh.sshcenter.info'
alias goblogbus="ssh -A -i .ssh/dxf\'bgid_rsa dxf@210.51.44.243"

#battery info
alias bat='upower -i /org/freedesktop/UPower/devices/battery_BAT0'

alias ssh-gbk='/usr/bin/luit -encoding gbk ssh'
alias huan='ssh -i .ssh/danielrsa daniel@glorywinna.6655.la -p 10022'

#by coremail
alias ts95="ssh -i ~/.ssh/danielrsa -p 31888 daniel@123.125.51.95"
alias shmailtech="ssh -i .ssh/danielrsa root@27.115.90.50 -p 2222"
alias mailtech="ssh -i ~/.ssh/danielrsa root@192.168.173.1"
alias vm="ssh -i ~/.ssh/danielrsa root@192.168.173.9"
alias coreos="ssh -i ~/.ssh/danielrsa core@192.168.173.17"
alias gentoo="ssh -i ~/.ssh/danielrsa root@192.168.173.18"
alias cm23="ssh-gbk -i ~/.ssh/danielrsa root@192.168.173.23"
alias jacob6="ssh-gbk -i ~/.ssh/danielrsa root@192.168.173.24"
alias cmmail01="ssh-gbk -i ~/.ssh/danielrsa root@192.168.173.26"
alias asmail01="ssh-gbk -i ~/.ssh/danielrsa root@192.168.173.27"
alias hyh6="ssh-gbk -i ~/.ssh/danielrsa root@192.168.173.33"
alias jtmail="ssh-gbk -i ~/.ssh/danielrsa root@192.168.173.34"
alias shirley5="ssh -i ~/.ssh/danielrsa root@192.168.173.55"
alias jerry6="ssh-gbk -i ~/.ssh/danielrsa root@192.168.173.56"
alias daniel26="ssh-gbk -i ~/.ssh/danielrsa root@192.168.173.61"
alias shirley6="ssh -i ~/.ssh/danielrsa root@192.168.173.68"
alias shirley26="ssh -i ~/.ssh/danielrsa root@192.168.173.70"
alias asmail="ssh-gbk -i ~/.ssh/danielrsa root@192.168.173.74"
alias cmmail="ssh-gbk -i ~/.ssh/danielrsa root@192.168.173.75"
alias daniel5="ssh-gbk -i ~/.ssh/danielrsa root@192.168.173.77"
alias daniel6="ssh-gbk -i ~/.ssh/danielrsa root@192.168.173.78"
alias dn6="ssh-gbk -i ~/.ssh/danielrsa root@192.168.173.79"
alias funtoo="ssh -i ~/.ssh/danielrsa root@192.168.173.91"
alias abc6="ssh-gbk -i ~/.ssh/danielrsa root@192.168.173.92"
alias murphy6="ssh -i ~/.ssh/danielrsa root@192.168.173.96"
alias ds="ssh-gbk -i ~/.ssh/danielrsa root@192.168.173.98"
alias mailsvr="ssh-gbk -i ~/.ssh/danielrsa root@192.168.173.132"
alias centos="ssh -i ~/.ssh/danielrsa daniel@192.168.173.212"
alias work="ssh -i ~/.ssh/danielrsa daniel@192.168.173.219"
alias tsdocker="ssh -i ~/.ssh/danielrsa root@192.168.209.9"
alias tsdocker2="ssh -i ~/.ssh/danielrsa root@192.168.209.10"
alias tsdocker3="ssh -i ~/.ssh/danielrsa root@192.168.209.11"
alias tsdocker4="ssh -i ~/.ssh/danielrsa root@192.168.209.27"


# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

export EDITOR='vim'
# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(tig osx brew knife docker rsync command-not-found colored-man-pages sudo fancy-ctrl-z history zsh_reload man ubuntu tmuxinator autojump vagrant cp themes colored-man gem rake svn rvm ruby rails git zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

DISABLE_AUTO_TITLE=true
# Customize to your needs...
#export PATH=/home/daniel/.rvm/gems/ruby-1.9.2-p320/bin:/home/daniel/.rvm/gems/ruby-1.9.2-p320@global/bin:/home/daniel/.rvm/rubies/ruby-1.9.2-p320/bin:/home/daniel/.rvm/bin:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/home/daniel/.rvm/bin

source $HOME/.rvm/scripts/rvm
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting  
#[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM  
#[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh]]
source $HOME/.zsh-background-notify/bgnotify.plugin.zsh
#source /usr/share/autojump/autojump.sh

export SSHPASS=eiP0adm_134


# by daniel fix zsh tab repeat
export LC_CTYPE=en_US.UTF-8


#zstyle -e ':completion::*:*:*:hosts' hosts 'reply=(${=${${(f)"$(cat {/etc/ssh_,~/.ssh/known_}hosts(|2)(N) /dev/null)"}%%[# ]*}//,/ })'
#[ -f ~/.ssh/config ] && : ${(A)ssh_config_hosts:=${${${${(@M)${(f)"$(<~/.ssh/config)"}:#Host *}#Host }:#*\**}:#*\?*}}

autoload -U compinit
compinit
setopt completealiases

zstyle -s ':completion:*:hosts' hosts _ssh_config
[[ -r ~/.ssh/config ]] && _ssh_config+=($(cat ~/.ssh/config | sed -ne 's/Host[=\t ]//p'))
zstyle ':completion:*:hosts' hosts $_ssh_config

#ssh() {
#    if [ "$(ps -p $(ps -p $$ -o ppid=) -o comm=)" = "tmux" ]; then
#            tmux rename-window "$*"
#            command ssh "$@"
#            tmux set-window-option automatic-rename "off" 1>/dev/null
#    else
#            command ssh "$@"
#    fi
#}
