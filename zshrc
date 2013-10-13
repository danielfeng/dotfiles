# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="sunrise"
ZSH_THEME="dnnebirhos"
#ZSH_THEME="robbyrussell"

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

#by coremail
alias daniel5="ssh -i ~/.ssh/danielrsa root@192.168.173.77"
alias daniel6="ssh -i ~/.ssh/danielrsa root@192.168.173.78"
alias asmail="ssh -i ~/.ssh/danielrsa root@192.168.173.74"
alias cmmail="ssh -i ~/.ssh/danielrsa root@192.168.173.75"
alias sky="ssh -i ~/.ssh/danielrsa root@192.168.173.209"
alias centos="ssh -i ~/.ssh/danielrsa root@192.168.173.212"
alias cloud="ssh -i ~/.ssh/danielrsa root@192.168.173.174"
alias gentoo="ssh -i ~/.ssh/danielrsa root@192.168.173.81"
alias dn="ssh -i ~/.ssh/danielrsa root@192.168.173.79"


# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(debian gem rake svn rvm ruby rails git zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
#export PATH=/home/daniel/.rvm/gems/ruby-1.9.2-p320/bin:/home/daniel/.rvm/gems/ruby-1.9.2-p320@global/bin:/home/daniel/.rvm/rubies/ruby-1.9.2-p320/bin:/home/daniel/.rvm/bin:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/home/daniel/.rvm/bin

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting  
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM  
