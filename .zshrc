# Path to your oh-my-zsh installation.
export ZSH=/home/andyph666/.oh-my-zsh
source ~/.bin/tmuxinator.zsh
source ~/.oh-my-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.oh-my-zsh/zsh-history-substring-search/zsh-history-substring-search.zsh
source ~/.oh-my-zsh/zsh-image-extension/zsh-image-extension
TERM=xterm
if [[ "$TERM" == *rxvt* ]]; then
       exec zsh
   fi

. ~/.bin/z/z.sh

MAIL=/var/spool/mail/Andrew && export MAIL


#POWERLINE_PATH=~/Library/Python/2.7/lib/python/site-packages/powerline
#source $POWERLINE_PATH/bindings/zsh/powerline.zsh
if [ -f /usr/lib/python3.5/site-packages/powerline/bindings/zsh/powerline.zsh ]; then
    source /usr/lib/python3.5/site-packages/powerline/bindings/zsh/powerline.zsh
fi


# AUTOCOMPLETION for teamocil
compctl -g '~/.teamocil/*(:t:r)' teamocil'

#Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if ycu set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

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
HIST_STAMPS="dd/mm/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git git-flow git-extras npm node theme web-search battery bundler osx rake ruby brew sublime github rails history-substring-search zsh-syntax-highlighting tmux tmuxinator xcode wakeonlan adb common-aliases fasd heroku history jsontools safe-paste thefuck svn urltools vi-mode)

# User configuration

export PATH=$PATH:"/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/texbin"
PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh
source ~/.bashrc
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
 alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# -------------------------------------------------------------------
# Git aliases
# -------------------------------------------------------------------
 
alias ga='git add -A'
alias gp='git push'
alias gl='git log'
alias gs='git status'
alias gd='git diff'
alias gm='git commit -m'
alias gma='git commit -am'
alias gb='git branch'
alias gc='git checkout'
alias gra='git remote add'
alias grr='git remote rm'
alias gpu='git pull'
alias gcl='git clone'
alias gta='git tag -a -m'
alias gf='git reflog'
 
# leverage an alias from the ~/.gitconfig
alias gh='git hist'
alias glg1='git lg1'
alias glg2='git lg2'
alias glg='git lg'

# -------------------------------------------------------------------
# OTHER aliases
# -------------------------------------------------------------------
 
alias cl='clear'
alias tm='teamocil'
# -------------------------------------------------------------------
# FUNCTIONS
# -------------------------------------------------------------------
 
# return my IP address
function myip() {
    ifconfig lo0 | grep 'inet ' | sed -e 's/:/ /' | awk '{print "lo0       : " $2}'
     ifconfig en0 | grep 'inet ' | sed -e 's/:/ /' | awk '{print "en0 (IPv4): " $2 " " $3 " " $4 " " $5 " " $6}'
     ifconfig en0 | grep 'inet6 ' | sed -e 's/ / /' | awk '{print "en0 (IPv6): " $2 " " $3 " " $4 " " $5 " " $6}'
     ifconfig en1 | grep 'inet ' | sed -e 's/:/ /' | awk '{print "en1 (IPv4): " $2 " " $3 " " $4 " " $5 " " $6}'
     ifconfig en1 | grep 'inet6 ' | sed -e 's/ / /' | awk '{print "en1 (IPv6): " $2 " " $3 " " $4 " " $5 " " $6}'
}

# KEYBINDS
bindkey "<alt+left>" backword-word
bindkey "<alt+right>" forward-word

# DEFAULT USER Prompt (Less Clutter in Terminal)
[[ -n "$SSH_CLIENT" ]] || export DEFAULT_USER="andyph666"

# OPAM ADDED
. ~/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
eval `opam config env`

# Brians Config
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

setopt RM_STAR_WAIT

setopt NO_CASE_GLOB

setopt AUTO_CD

export PATH=$PATH:~/activator-1.2.10-minimal

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/working
#source /usr/local/bin/virtualenvwrapper.sh

eval "$(fasd --init auto)"
eval "$(thefuck --alias)"

alias v='f -e vim' # quick opening files with vim
HISTSIZE=10000
SAVEHIST=10000
bindkey -v
bindkey "^R" history-incremental-pattern-search-backward
bindkey "^r" history-incremental-search-backward
source ~/.oh-my-zsh/custom/zsh-dwim/init.zsh
#zsh_history_substring_search
# bind UP and DOWN arrow keys
zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down
# bind UP and DOWN arrow keys (compatibility fallback for Ubuntu 12.04, Fedora 21, and MacOSX 10.9 users)
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
# bind k and j for VI mode
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down

#export PATH="/usr/local/sublime/bin/:$PATH" #ln -s "/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl" /usr/local/sublime/bin/subl
#sublime text subl3 to subl alias
alias subl='subl3'

#tmux alias
alias tma='tmux attach -d -t'
alias git-tmux='tmux new -s $(basename $(pwd))'

export PATH=$PATH:/usr/local/sbin
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
#export PATH=$PATH:/Users/andyph666/Downloads/adt-bundle-mac-x86_64-20140702/sdk/platform-tools
export PATH=$HOME/.tmuxifier/bin:$PATH
#alias vim='mvim -v'
#export DISABLE_AUTO_TITLE=true
eval "$(tmuxifier init -)"
case $TERM in
 *xterm*|ansi)
        function settab { print -Pn "\e]1;%n@%m: %~\a" }
        function settitle { print -Pn "\e]2;%n@%m: %~\a" }
        function chpwd { settab;settitle }
        settab;settitle
        ;;
esac
#source activate python2

#export ANDROID_SDK=~/Downloads/utils/android-sdk-linux
#export PATH=$PATH:$ANDROID_SDK/tools:$ANDROID_SDK/platform-tools
#export PATH=$PATH:~/utils/arm-eabi-4.6/bin
#export PATH=$PATH:~/utils/bin
#export PATH=$PATH:~/utils/arm-2013.11/bin

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
