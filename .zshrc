zshrc on restart

export ZSH=/Users/$USER/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(git osx)

source $ZSH/oh-my-zsh.sh

alias freshinstall='/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"; \
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"; \
brew install openssl youtube-dl libav watchman go nvm rbenv elixir redis memcached awscli git icu4c postgresql; \
brew services start memcached; brew services start redis; git config --global user.name "William Huang"; git config --global user.email will.h86@gmail.com; cd /usr/local/include; ln -s ../opt/openssl/include/openssl .; cd ~; \
brew cask install java slack transmission discord google-chrome vlc spectacle visual-studio-code postgres postico plex-media-server; \
mkdir src; mkdir bin; mkdir pkg; \
procorereset;'
alias killvb="kill $(ps -e | grep VirtualBox | awk '{ print $1 }')"
alias rnode='nvm use 6; nvm uninstall node; nvm install node; nvm uninstall 6; nvm install 6; nvm use node;'
alias inode='iyarn; echo $(yarn global bin); yarn global add speed-test exp --global-folder=`yarn global bin` && exp path;'
alias kill='killall Dock; killall -9 node; killall -9 ruby'
alias pp='~/work/procore; echo "pulling procore/procore"; gp; gem install bundler; bundle install; bundle exec rake db:migrate;'
alias pw='~/work/wrench; echo "pulling procore/wrench"; gp; yarn;'
alias w='~/work/wrench; c; rm -fr node_modules; yarn; npm run dev;'
alias wie='~/work/wrench; VIRTUALBOX=true VMHOST=10.0.2.2 npm run vm;'
alias proh='~/work/procore; c; bundle install; WRENCH=hot bin/rails s -b 0.0.0.0;'
alias prol='~/work/procore; bundle install; WRENCH=local bin/rails s -b 0.0.0.0;'
alias prod='~/work/procore; bundle install; bin/rails s -b 0.0.0.0;'
alias proie='~/work/procore; bundle install; VMHOST=10.0.2.2 WRENCH=ievm bin/rails s -b 0.0.0.0;'
alias r='cat ~/Desktop/backup/remote1.yml > ~/work/procore/config/database.yml; ssh db1.office.procore;'
alias r2='cat ~/Desktop/backup/remote2.yml > ~/work/procore/config/database.yml; ssh db1.office.procore;'
alias r3='cat ~/Desktop/backup/remote3.yml > ~/work/procore/config/database.yml; ssh db1.office.procore;'
alias r4='cat ~/Desktop/backup/remote4.yml > ~/work/procore/config/database.yml; ssh db1.office.procore;'
alias r5='cat ~/Desktop/backup/remote5.yml > ~/work/procore/config/database.yml; ssh db1.office.procore;'
alias o='cat ~/Desktop/backup/office1.yml > ~/work/procore/config/database.yml;'
alias o2='cat ~/Desktop/backup/office2.yml > ~/work/procore/config/database.yml;'
alias o3='cat ~/Desktop/backup/office3.yml > ~/work/procore/config/database.yml;'
alias o4='cat ~/Desktop/backup/office4.yml > ~/work/procore/config/database.yml;'
alias o5='cat ~/Desktop/backup/office5.yml > ~/work/procore/config/database.yml;'
alias c='code .;'
alias vdl='youtube-dl -R infinite'
alias dl="youtube-dl -o '%(uploader)s/%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s' -x -i --audio-format 'mp3' --audio-quality 0"
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
alias upgrade='tab u; tab pp; tab rnode inode pw;'
alias st='speed-test -v';
alias ws='cd ~/work'
alias procorereset='rbenv uninstall 2.3.1; rbenv install 2.3.1; export RBENV_ROOT=/usr/local/var/rbenv; export NVM_DIR="$HOME/.nvm"; . "/usr/local/opt/nvm/nvm.sh"; export RBENV_VERSION="2.3.1"; eval "$(rbenv init -)"; rbenv global 2.3.1; gem install bundler; ws; rm -fr node_modules procore wrench; git clone git@github.com:procore/wrench.git && git clone git@github.com:procore/procore.git; cd ~/work/procore; mkdir tmp; touch tmp/caching-dev.txt; cat ~/Desktop/backup/.wrench_env > ~/work/wrench/.env; cat ~/Desktop/backup/.procore_env > ~/work/procore/.env; nvm install 6; nvm install node; export GOPATH=$HOME/work; export PATH="$PATH:$GOPATH/bin"; curl https://raw.githubusercontent.com/apex/apex/master/install.sh | sh; defaults write com.apple.finder AppleShowAllFiles YES;';
alias beg='bundle exec guard;'
alias gcom='git checkout origin/master '
alias yl='gcom yarn.lock'

resetToSha() {
  git reset --hard $1;
  git reset --soft HEAD@{1}
  git commit -m "Reset to $1"
}

revertSha() {
  git revert $1;
}

#yarn
export PATH="$HOME/.yarn/bin:$PATH";
export PATH="$PATH:'yarn global bin'";

# nvm
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

#go
export GOPATH=$HOME/work;
export PATH="$PATH:$GOPATH/bin";

#ruby
export RBENV_ROOT=/usr/local/var/rbenv;
export RBENV_VERSION="2.3.1";
eval "$(rbenv init -)";
rbenv global 2.3.1;
