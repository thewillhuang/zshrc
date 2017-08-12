# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/willhuang/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
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
plugins=(git osx)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

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
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias u='ubrew; \
      iffmpeg; \
      apex upgrade ;\
      up upgrade;'

alias iup='curl -#L https://github.com/apex/up/releases/download/v0.1.6/up_0.1.6_darwin_amd64.tar.gz | tar -zx -C /usr/local/bin';
alias iyarn='rm -fr .yarn; curl -o- -L https://yarnpkg.com/install.sh | bash;'
alias ubrew='brew update; brew doctor; brew upgrade;'
alias iapex='curl https://raw.githubusercontent.com/apex/apex/master/install.sh | sh;'
alias ucask='brew cask install `brew cask list`'
alias icask='brew cask install slack virtualbox transmission discord google-chrome java atom vlc mysqlworkbench;'
alias killvb="kill $(ps -e | grep VirtualBox | awk '{ print $1 }')"
alias iffmpeg='brew install ffmpeg --with-fdk-aac --with-faac --with-ffplay --with-freetype --with-libass --with-libquvi --with-libvorbis --with-libvpx --with-opus --with-x265'
alias ibrew='brew install icu4c openssl youtube-dl libav watchman go nvm rbenv pyenv elixir mono mysql redis memcached awscli docker docker-machine kubernetes-cli git opam minio/stable/mc'
alias udocker='docker-machine upgrade dev;'
alias rnode='nvm use 6; nvm uninstall node; nvm install node; nvm uninstall 6; nvm install 6; nvm use node; nvm use 6;'
alias inode='iyarn; echo $(yarn global bin); yarn global add react-native-cli react-native-git-upgrade speed-test lerna typescript flow-bin create-react-native-app exp --global-folder=`yarn global bin` && exp path;'
alias k='killall Dock; killall -9 node; killall -9 ruby'
alias ios='react-native run-ios'
alias ncu='npm-check --no-emoji'
alias android='react-native run-android'
alias pp='~/work/procore; echo "pulling procore/procore"; gp; gem install bundler; bundle install; bundle exec rake db:migrate;'
alias pw='~/work/wrench; echo "pulling procore/wrench"; gp; yarn;'
alias w='~/work/wrench; c; rm -fr node_modules; yarn; npm run dev;'
alias wie='~/work/wrench; VIRTUALBOX=true VMHOST=10.0.2.2 npm run vm;'
alias proh='~/work/procore; c; bundle install; WRENCH=hot bin/rails s -b 0.0.0.0;'
alias prol='~/work/procore; bundle install; WRENCH=local bin/rails s -b 0.0.0.0;'
alias prod='~/work/procore; bundle install; bin/rails s -b 0.0.0.0;'
alias proie='~/work/procore; bundle install; VMHOST=10.0.2.2 WRENCH=ievm bin/rails s -b 0.0.0.0;'
alias r='cat ~/.remote1.yml > ~/work/procore/config/database.yml; ssh db1.office.procore;'
alias r2='cat ~/.remote2.yml > ~/work/procore/config/database.yml; ssh db1.office.procore;'
alias r3='cat ~/.remote3.yml > ~/work/procore/config/database.yml; ssh db1.office.procore;'
alias r4='cat ~/.remote4.yml > ~/work/procore/config/database.yml; ssh db1.office.procore;'
alias r5='cat ~/.remote5.yml > ~/work/procore/config/database.yml; ssh db1.office.procore;'
alias o='cat ~/.office1.yml > ~/work/procore/config/database.yml;'
alias o2='cat ~/.office2.yml > ~/work/procore/config/database.yml;'
alias o3='cat ~/.office3.yml > ~/work/procore/config/database.yml;'
alias o4='cat ~/.office4.yml > ~/work/procore/config/database.yml;'
alias o5='cat ~/.office5.yml > ~/work/procore/config/database.yml;'
alias a='atom .;'
alias c='code .;'
alias nr='npm run'
alias n='npm'
alias nt='n test'
alias ni='n i'
alias ns='nr start'
alias nd='nr dev'
alias np='nr prod'
alias vdl='youtube-dl -R infinite'
alias dl="youtube-dl -o '%(uploader)s/%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s' -x -i --audio-format 'mp3' --audio-quality 0"
alias tf="source ~/tensorflow/bin/activate"
alias d="deactivate"
alias ds="docker-machine start dev; de"
alias de="eval $(docker-machine env dev)"
alias gp='git pull origin $(git rev-parse --abbrev-ref HEAD);'
alias gprunedevelop='git branch | grep -v "develop" | xargs git branch -D'
alias gprunemaster='git branch | grep -v "master" | xargs git branch -D'
alias gpom='git pull origin master;'
alias gsu='git submodule update --init --recursive;'
alias gc='git checkout'
alias gs='git status;'
alias ga='git merge --abort'
alias gd='git diff'
alias gl='git log;'
alias gaa='git add -A'
alias gcm='gp; gaa; git commit -m'
alias ph='git push'
alias izsh='/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"; sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"'
alias iapm='apm install emmet minimap-highlight-selected file-icons language-babel linter linter-eslint linter-tidy minimap minimap-git-diff highlight-selected autocomplete-paths pigments linter-write-good language-ocaml linter ocaml-indent ocaml-merlin'
alias firstime='izsh; ibrew; iffmpeg; brew services start memcached; brew services start redis; git config --global user.name "William Huang"; git config --global user.email will.h86@gmail.com; cd /usr/local/include; ln -s ../opt/openssl/include/openssl .; cd ~; icask; pyenv install 2.7.13; rbenv install 2.3.1; nvm install 6; nvm install node; docker-machine create --driver=virtualbox dev; iapex; u; defaults write com.apple.finder AppleShowAllFiles YES; sudo chown root ~/Library/Preferences/ByHost/com.apple.loginwindow*; sudo chmod 000 ~/Library/Preferences/ByHost/com.apple.loginwindow*; opam init; opam update; opam switch 4.03.0;'
alias s='tab w; tab proh;';
alias p='proh;';
alias rs='tab r; s;';
alias rs2='tab r2; s;';
alias rs3='tab r3; s;';
alias rs4='tab r4; s;';
alias rp='tab r; p;';
alias rp2='tab r2; p;';
alias rp3='tab r3; p;';
alias rp4='tab r4; p;';
alias os='tab o; s;';
alias os2='tab o2; s;';
alias os3='tab o3; s;';
alias os4='tab o4; s;';
alias upgrade='tab u; tab pp; tab pw; tab rnode inode; tab udocker; de;'
alias st='speed-test -v';
alias ws='cd ~/work'
alias procorereset='ws; rm -fr node_modules procore wrench; git clone git@github.com:procore/wrench.git && git clone git@github.com:procore/procore.git; cd ~/work/procore; mkdir tmp; touch tmp/caching-dev.txt; cat ~/.wrench_env > ~/work/wrench/.env; cat ~/.procore_env > ~/work/procore/.env;';

revert() {
  git reset --hard $1;
  git reset --soft head@{1};
  gcm "revert to $1";
}

#yarn
export PATH="$HOME/.yarn/bin:$PATH";
export PATH="$PATH:'yarn global bin'";

# nvm
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

#go
export GOPATH=$HOME/work

#python
export PYENV_ROOT=/usr/local/var/pyenv
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
pyenv global 2.7.13

#ruby
export RBENV_ROOT=/usr/local/var/rbenv
export RBENV_VERSION="2.3.1"
eval "$(rbenv init -)"
rbenv global 2.3.1

#node
nvm use 6;

#reasonML
eval $(opam config env)
