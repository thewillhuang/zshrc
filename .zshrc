# Path to your oh-my-zsh installation.
export ZSH=/Users/willh/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

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
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

DISABLE_UPDATE_PROMPT=true

alias u='ubrew; \
      ibrew; \
      udocker; \
      rnode; \
      inode;'

alias ubrew='brew update; brew doctor; brew upgrade;'

alias ibrew='brew install youtube-dl ffmpeg --with-fdk-aac --with-ffplay --with-freetype --with-libass --with-libquvi --with-libvorbis --with-libvpx --with-opus --with-x265 nvm watchman vault go flow rbenv mysql postgresql rethinkdb redis awscli multirust docker docker-machine docker-swarm docker-cloud tidy-html5'

alias udocker='docker-machine upgrade dev;'

alias rnode='nvm use 4; nvm uninstall node; nvm install node; nvm uninstall 4; nvm install 4; nvm use node;'

alias inode='npm i -g serverless react-native-cli npm-check-updates;'

alias k='killall Dock; killall -9 node; killall -9 ruby'

alias p='~/workspace/procore; git pull; bundle exec rake db:migrate; bundle install; gsu; ~/workspace/wrench; git pull; rm -rf node_modules; npm i;'
alias w='~/workspace/wrench; npm run dev;'
alias pro='~/workspace/procore; bundle exec rails s -b 0.0.0.0;'
alias o='ssh db1.office.procore;'
alias a='atom .;'
alias c='code .;'
alias gp='git pull;'
alias gpod='git pull origin develop;'
alias gpom='git pull origin master;'
alias gsu='git submodule update;'
alias gc='git checkout'
alias nr='npm run'
alias gs='git status;'
alias gd='git diff'
alias gl='git log;'
alias dl="youtube-dl -o '%(uploader)s/%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s' -x -n -i --audio-format 'aac' --audio-quality 0"

#nvm
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
nvm use node

#awscli
source /usr/local/share/zsh/site-functions/_aws

# docker
docker-machine start dev
eval "$(docker-machine env dev)"

#ruby
export RBENV_ROOT=/usr/local/var/rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

#lunchy
LUNCHY_DIR=$(dirname `gem which lunchy`)/../extras
if [ -f $LUNCHY_DIR/lunchy-completion.zsh ]; then
  . $LUNCHY_DIR/lunchy-completion.zsh
fi

#vs code
function code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $*; }

#prevent app from reload
defaults write -g ApplePersistence -bool no
