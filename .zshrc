export ZSH=/Users/$USER/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(git osx)

source $ZSH/oh-my-zsh.sh

alias u='ubrew;\
       curl -sf https://up.apex.sh/install | sh;\
       up upgrade;\
       upgrade_oh_my_zsh;'

alias iup='curl -sfL https://raw.githubusercontent.com/apex/up/master/install.sh | sh;'
alias ubrew='brew update; brew doctor; brew prune; brew upgrade;'
alias iyarn='curl --compressed -o- -L https://yarnpkg.com/install.sh | bash;'
alias procorereset='rbenv uninstall 2.4.3; rbenv install 2.4.3; export RBENV_ROOT=/usr/local/var/rbenv; export NVM_DIR="$HOME/.nvm"; . "/usr/local/opt/nvm/nvm.sh"; export RBENV_VERSION="2.4.3"; eval "$(rbenv init -)"; rbenv global 2.4.3; gem install bundler foreman; cd ~/work; rm -fr node_modules procore; git clone git@github.com:procore/procore.git; cd ~/work/procore; mkdir tmp; touch tmp/caching-dev.txt; cat ~/Desktop/backup/.procore_env > ~/work/procore/.env; nvm install 6; nvm install node; export GOPATH=$HOME/work; export PATH="$PATH:$GOPATH/bin"; defaults write com.apple.finder AppleShowAllFiles YES;';
alias ibrew='brew install cockroach openssl xz youtube-dl libav watchman fzf go nvm rbenv elixir pyenv redis memcached awscli git icu4c pgcli hub; \
$(brew --prefix)/opt/fzf/install; brew services start memcached; brew services start redis; brew services start postgresql; brew services start cockroach; git config --global user.name "William Huang"; git config --global user.email will.h86@gmail.com; cd /usr/local/include; ln -s ../opt/openssl/include/openssl .; cd ~; \
brew cask install java slack transmission discord google-chrome vlc spectacle visual-studio-code plex-media-server; \
mkdir work; cd ~/work && mkdir src; mkdir bin; mkdir pkg; cd ~; \
curl -#L https://github.com/apex/up/releases/download/v0.1.6/up_0.1.6_darwin_amd64.tar.gz | tar -zx -C /usr/local/bin; \
curl https://raw.githubusercontent.com/apex/apex/master/install.sh | sh; \
curl -sfL https://raw.githubusercontent.com/apex/up/master/install.sh | sh; \
rsync -av ~/Desktop/backup/.ssh/ ~/.ssh; \
chmod 700 ~/.ssh; \
chmod 600 ~/.ssh/id_rsa; chmod 600 ~/.ssh/id_rsa.pub; \
eval "$(ssh-agent -s)"; \
ssh-add -K ~/.ssh/id_rsa; \
CFLAGS="-I$(brew --prefix openssl)/include" \
LDFLAGS="-L$(brew --prefix openssl)/lib" \
pyenv install -v 2.7.8; \
git config --global merge.conflictstyle diff3; \'
alias freshinstall='ibrew; procorereset;'
alias killvb="kill $(ps -e | grep VirtualBox | awk '{ print $1 }')"
alias rnode='nvm use 8; nvm uninstall node; nvm install node; nvm uninstall 8; nvm install 8; nvm use 8; nvm alias default 8; inode;'
alias inode='npm install -g expo-cli bs-platform prettier db-migrate'
alias kill='killall Dock; killall -9 node; killall -9 rails; killall -9 ruby'
alias pp='~/work/procore; echo "pulling procore/procore"; gp; gem install bundler; bundle install'
alias viewer='~/work/procore/hydra_clients/insights; yarn; yarn start'
alias punch='~/work/procore/hydra_clients/punchList; yarn; yarn start'
alias rpunch='~/work/procore; bundle install; DEV_MODE=punchList bin/rails s'
alias rviewer='~/work/procore; bundle install; DEV_MODE=insights bin/rails s'
alias nviewer='~/work/procore/hydra_clients/insights_reports; yarn; yarn start'
alias rnviewer='~/work/procore; bundle install; DEV_MODE=insights_reports bin/rails s'
alias health='~/work/procore/hydra_clients/project_health; yarn; yarn start'
alias rhealth='~/work/procore; bundle install; DEV_MODE=project_health bin/rails s'
alias home='~/work/procore/hydra_clients/insights_home && yarn; yarn start'
alias rhome='~/work/procore; bundle install; DEV_MODE=insights_home bin/rails s'
alias lprocore='cat ~/Desktop/backup/.local.yml > ~/work/procore/config/database.yml; '
alias initprocore='lprocore ~/work/procore; bundle exec rake db:drop && bundle exec rake db:create db:structure:load db:migrate db:seed;'
alias o='cat ~/Desktop/backup/.office1.yml > ~/work/procore/config/database.yml;'
alias o2='cat ~/Desktop/backup/.office2.yml > ~/work/procore/config/database.yml;'
alias o3='cat ~/Desktop/backup/.office3.yml > ~/work/procore/config/database.yml;'
alias o4='cat ~/Desktop/backup/.office4.yml > ~/work/procore/config/database.yml;'
alias o5='cat ~/Desktop/backup/.office5.yml > ~/work/procore/config/database.yml;'
alias r='cat ~/Desktop/backup/.remote1.yml > ~/work/procore/config/database.yml; ssh db1.office.procore;'
alias r2='cat ~/Desktop/backup/.remote2.yml > ~/work/procore/config/database.yml; ssh db1.office.procore;'
alias r3='cat ~/Desktop/backup/.remote3.yml > ~/work/procore/config/database.yml; ssh db1.office.procore;'
alias r4='cat ~/Desktop/backup/.remote4.yml > ~/work/procore/config/database.yml; ssh db1.office.procore;'
alias r5='cat ~/Desktop/backup/.remote5.yml > ~/work/procore/config/database.yml; ssh db1.office.procore;'
alias c='code .;';
alias v='code ~/.zshrc';
alias vdl='cd ~/Desktop && mkdir -p vdl && cd vdl && youtube-dl -f "bestvideo[ext=mp4]+bestaudio[ext=m4a]/mp4" -i'
alias sdl="cd ~/Desktop && mkdir -p sdl && cd sdl && youtube-dl -o '%(uploader)s/%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s' -x -i --audio-format 'mp3' --audio-quality 0"
alias gp='git pull origin $(git rev-parse --abbrev-ref HEAD);'
alias gprunedevelop='git branch | grep -v "develop" | xargs git branch -D'
alias gprunemaster='git branch | grep -v "master" | xargs git branch -D'
alias gpom='gp; git pull origin master;'
alias gc='git checkout'
alias gs='git status;'
alias gf='git fetch;'
alias ga='git merge --abort'
alias gd='git diff'
alias gcom='git checkout origin/master '
alias gl='git log;'
alias gaa='git add -A'
alias gcm='gp; gaa; git commit -m'
alias ph='git push'
alias gdm='git diff origin/master'
alias upgrade='tab u; tab pp; tab rnode; tab iyarn;'
alias ws='cd ~/work';
alias beg='bundle exec guard;';
alias yl='gcom yarn.lock';
alias yw='yarn test --watch';
alias nr='npm run'
alias dc='docker system prune -a';
alias nukehydra='~/work/procore; rm -rf hydra_clients/*/node_modules;';
alias awslambda-npm-install="docker run -v \$PWD:/var/task iopipe/awslambda-npm-install:v8.10.0"

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
export RBENV_VERSION="2.4.3";
eval "$(rbenv init -)";
rbenv global 2.4.3;

#python
eval "$(pyenv init -)"
pyenv global 2.7.8

#postgres9.5
export PATH="/usr/local/opt/postgresql@9.5/bin:$PATH"

#fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#rust
source $HOME/.cargo/env
