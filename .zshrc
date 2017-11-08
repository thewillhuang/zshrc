export ZSH=/Users/$USER/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(git osx)

source $ZSH/oh-my-zsh.sh

alias u='ubrew;\
       apex upgrade ;\
       up upgrade;\
       upgrade_oh_my_zsh;'

alias ubrew='brew update; brew doctor; brew upgrade;'
alias iapex='curl https://raw.githubusercontent.com/apex/apex/master/install.sh | sh;'
alias procorereset='rbenv uninstall 2.3.1; rbenv install 2.3.1; export RBENV_ROOT=/usr/local/var/rbenv; export NVM_DIR="$HOME/.nvm"; . "/usr/local/opt/nvm/nvm.sh"; export RBENV_VERSION="2.3.1"; eval "$(rbenv init -)"; rbenv global 2.3.1; gem install bundler foreman; cd ~/work; rm -fr node_modules procore wrench; git clone git@github.com:procore/wrench.git && git clone git@github.com:procore/procore.git; cd ~/work/procore; mkdir tmp; touch tmp/caching-dev.txt; cat ~/Desktop/backup/.wrench_env > ~/work/wrench/.env; cat ~/Desktop/backup/.procore_env > ~/work/procore/.env; nvm install 6; nvm install node; export GOPATH=$HOME/work; export PATH="$PATH:$GOPATH/bin"; defaults write com.apple.finder AppleShowAllFiles YES;';
alias ibrew='brew install cockroach openssl xz readline youtube-dl libav watchman fzf go nvm rbenv elixir pyenv redis memcached awscli git icu4c postgresql95 pgcli hub; \
$(brew --prefix)/opt/fzf/install; brew services start memcached; brew services start redis; brew services start postgresql; brew services start cockroach; git config --global user.name "William Huang"; git config --global user.email will.h86@gmail.com; cd /usr/local/include; ln -s ../opt/openssl/include/openssl .; cd ~; \
brew cask install java slack transmission discord google-chrome vlc spectacle visual-studio-code postico plex-media-server; \
mkdir work; cd ~/work && mkdir src; mkdir bin; mkdir pkg; cd ~; \
curl -#L https://github.com/apex/up/releases/download/v0.1.6/up_0.1.6_darwin_amd64.tar.gz | tar -zx -C /usr/local/bin; \
curl https://raw.githubusercontent.com/apex/apex/master/install.sh | sh; \
curl -o- -L https://yarnpkg.com/install.sh | bash; \
rsync -av ~/Desktop/backup/.ssh/ ~/.ssh; \
chmod 700 ~/.ssh; \
chmod 600 ~/.ssh/id_rsa; chmod 600 ~/.ssh/id_rsa.pub; \
eval "$(ssh-agent -s)"; \
ssh-add -K ~/.ssh/id_rsa; \
CFLAGS="-I$(brew --prefix openssl)/include" \
LDFLAGS="-L$(brew --prefix openssl)/lib" \
pyenv install -v 2.7.8;'
alias freshinstall='ibrew; procorereset;'
alias killvb="kill $(ps -e | grep VirtualBox | awk '{ print $1 }')"
alias rnode='nvm use 6; nvm uninstall node; nvm install node; nvm uninstall 6; nvm install 6; nvm alias default node;'
alias iyarn='curl -o- -L https://yarnpkg.com/install.sh | bash;'
alias inode='iyarn; echo $(yarn global bin); yarn global add speed-test exp depcheck @playlyfe/gql --global-folder=`yarn global bin` && exp path;'
alias kill='killall Dock; killall -9 node; killall -9 ruby'
alias pp='~/work/procore; echo "pulling procore/procore"; gp; gem install bundler; bundle install'
alias w='~/work/procore/wrench; rm -fr node_modules; yarn;'
# alias proh='w; ~/work/procore; c; bundle install; foreman start -f Procfile.wrench;'
alias proh='insights'
alias insights='~/work/procore/hydra_clients/insights; yarn; ~/work/procore; c; bundle install; DEV_MODE=insights foreman start -f Procfile.hydra;'
alias r='cat ~/Desktop/backup/.remote1.yml > ~/work/procore/config/database.yml; ssh db1.office.procore;'
alias r2='cat ~/Desktop/backup/.remote2.yml > ~/work/procore/config/database.yml; ssh db1.office.procore;'
alias r3='cat ~/Desktop/backup/.remote3.yml > ~/work/procore/config/database.yml; ssh db1.office.procore;'
alias r4='cat ~/Desktop/backup/.remote4.yml > ~/work/procore/config/database.yml; ssh db1.office.procore;'
alias r5='cat ~/Desktop/backup/.remote5.yml > ~/work/procore/config/database.yml; ssh db1.office.procore;'
alias o='cat ~/Desktop/backup/.office1.yml > ~/work/procore/config/database.yml;'
alias o2='cat ~/Desktop/backup/.office2.yml > ~/work/procore/config/database.yml;'
alias o3='cat ~/Desktop/backup/.office3.yml > ~/work/procore/config/database.yml;'
alias o4='cat ~/Desktop/backup/.office4.yml > ~/work/procore/config/database.yml;'
alias o5='cat ~/Desktop/backup/.office5.yml > ~/work/procore/config/database.yml;'
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
alias s='tab proh;';
alias rs='tab r; proh;';
alias rs2='tab r2; proh;';
alias rs3='tab r3; proh;';
alias rs4='tab r4; proh;';
alias rp='tab r; proh;';
alias rp2='tab r2; proh;';
alias rp3='tab r3; proh;';
alias rp4='tab r4; proh;';
alias os='tab o; proh;';
alias os2='tab o2; proh;';
alias os3='tab o3; proh;';
alias os4='tab o4; proh;';
alias upgrade='tab u; tab pp; tab rnode inode;'
alias st='speed-test -v';
alias ws='cd ~/work'
alias beg='bundle exec guard;'
alias gcom='git checkout origin/master '
alias yl='gcom yarn.lock'
alias nr='npm run'

resetToSha() {
  git reset --hard $1;
  git reset --soft HEAD@{1}
  git commit -m "Reset to $1"
}

revertSha() {
  git revert $1;
}

function compare() {
  hub compare `git rev-parse --abbrev-ref HEAD`
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

#python
eval "$(pyenv init -)"
pyenv global 2.7.8

#postgres9.5
export PATH="/usr/local/opt/postgresql@9.5/bin:$PATH"

#fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

