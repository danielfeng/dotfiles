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
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'
alias gfw='ssh -qTfnN -D 7070 danielfeng@ssh.sshcenter.info'
#alias mailsrv='ssh root@192.168.173.125'
#alias webmail='ssh root@192.168.173.121'
#alias centos='ssh root@192.168.173.117'
alias goblogbus="ssh -A -i .ssh/dxf\'bgid_rsa dxf@210.51.44.243"

alias ssh-gbk='/usr/bin/luit -encoding gbk ssh'
alias huan='ssh -i .ssh/danielrsa daniel@glorywinna.6655.la -p 10022'
#by coremail
alias shmailtech="ssh -i .ssh/danielrsa root@27.115.90.50 -p 2222"
alias coreos="ssh -i ~/.ssh/danielrsa core@192.168.173.17"
alias ts95="ssh -i ~/.ssh/danielrsa -p 31888 daniel@123.125.51.95"
alias work="ssh -i ~/.ssh/danielrsa daniel@192.168.173.219"
alias daniel5="ssh-gbk -i ~/.ssh/danielrsa root@192.168.173.77"
alias daniel6="ssh-gbk -i ~/.ssh/danielrsa root@192.168.173.78"
alias asmail="ssh-gbk -i ~/.ssh/danielrsa root@192.168.173.74"
alias asmail01="ssh-gbk -i ~/.ssh/danielrsa root@192.168.173.27"
alias cmmail="ssh-gbk -i ~/.ssh/danielrsa root@192.168.173.75"
alias cmmail01="ssh-gbk -i ~/.ssh/danielrsa root@192.168.173.26"
alias jtmail="ssh-gbk -i ~/.ssh/danielrsa root@192.168.173.34"
alias cm23="ssh -i ~/.ssh/danielrsa root@192.168.173.23"
alias centos="ssh -i ~/.ssh/danielrsa root@192.168.173.212"
alias vm="ssh -i ~/.ssh/danielrsa root@192.168.173.9"
alias hzcentos="ssh -i ~/.ssh/danielrsa root@192.168.15.171"
alias cloud="ssh -i ~/.ssh/danielrsa root@192.168.173.174"
alias gentoo="ssh -i ~/.ssh/danielrsa root@192.168.173.18"
alias funtoo="ssh -i ~/.ssh/danielrsa root@192.168.173.91"
alias dn6="ssh-gbk -i ~/.ssh/danielrsa root@192.168.173.79"
alias test6="ssh -i ~/.ssh/danielrsa root@192.168.173.63"
alias ds="ssh-gbk -i ~/.ssh/danielrsa root@192.168.173.98"
alias mailtech="ssh -i ~/.ssh/danielrsa root@192.168.173.1"
alias doris6="ssh-gbk -i ~/.ssh/danielrsa root@192.168.173.92"
alias mailsvr="ssh-gbk -i ~/.ssh/danielrsa root@192.168.173.132"
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
plugins=(colored-man-pages sudo fancy-ctrl-z history zsh_reload man ubuntu tmuxinator autojump vagrant cp themes colored-man debian gem rake svn rvm ruby rails git zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
#export PATH=/home/daniel/.rvm/gems/ruby-1.9.2-p320/bin:/home/daniel/.rvm/gems/ruby-1.9.2-p320@global/bin:/home/daniel/.rvm/rubies/ruby-1.9.2-p320/bin:/home/daniel/.rvm/bin:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/home/daniel/.rvm/bin

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting  
#[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM  
#[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh]]
