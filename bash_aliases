# ~./bash_aliases

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias a='alias'
alias apache-remove='sudo update-rc.d -f apache2 remove'
alias apache-start='sudo service apache2 start'
alias apache-stop='sudo service apache2 stop'
alias ber='bundle exec rake'
alias beru='bundle exec ruby'
alias bers='echo bundle exec rails server; bundle exec rails server'
alias berg='bundle exec rails generate'
alias bi="bower install"
alias bis="bower install –save-dev"
alias c='clear'
alias cpd='echo cap production deploy; cap production deploy'
alias chrome='/opt/google/chrome/google-chrome --enable-plugins'
alias cl='sudo find ~ -name '*~' -exec echo {} \; && echo clx will delete everything above'
alias clx='sudo find ~ -name '*~' -exec rm {} \;'
#find $HOME/.vim/backup -name "*" -type f -mtime +7 -exec rm -f {} \;
alias es="ember server"
alias ei="ember install"
alias es='ember server'
alias esp='ember server --proxy http://localhost:3000'
alias espp='ember server --environment=production --proxy http://localhost:3000'
alias espt='ember server --environment=test --proxy http://localhost:3000'
alias es1="ember server -p 4201"
alias es2="ember server -p 4202"
alias es3="ember server -p 4203"
alias es4="ember server -p 4204"
alias est="ember server --environment=test"
alias et="ember test"
alias ets="ember test -s"
alias ets1="ember test -s -p 4201"
alias h='history'
alias hn='hostname'
alias gt='echo ssh gishtech.com;ssh gishtech.com'
alias kg='echo ssh kiffingish.com;ssh kiffingish.com'
alias na='echo ssh na-holland.nl;ssh na-holland.nl'
alias l.='ls -d .*'
alias la='ls -A'
alias ll='ls -l'
alias ls='ls -F'
alias mms='middleman server'
alias mysql-remove='sudo update-rc.d -f mysql remove'
alias mysql-start='sudo service mysql start'
alias mysql-stop='sudo service mysql stop'
alias ni="npm install"
alias nis="npm install –save-dev"
alias nbi="npm install && bower install"
alias nom='rm -rf node_modules && npm cache clear && npm install'
alias nombom='rm -rf node_modules && npm cache clear && npm install && rm -rf bower_modules && bower cache clean && bower install'
alias phttp='python -m SimpleHTTPServer'
alias realias='$EDITOR ~/.bash_aliases; source ~/.bash_aliases'
alias r='fc -s'
alias rb='$EDITOR ~/.bashrc; source ~/.bashrc'
alias sd='svn diff --diff-cmd ~/bin/svn-diff-meld'
alias skype='LD_PRELOAD=/usr/lib/i386-linux-gnu/libv4l/v4l1compat.so skype'
alias soc2='echo ssh server2.socioneers.com PROD;ssh server2.socioneers.com'
alias soc5='echo ssh server5.socioneers.com TEST;ssh server5.socioneers.com'
alias soc8='echo ssh socioneers-vps2 TOOLBOX;ssh 136.144.132.213'
alias sq='bundle exec sidekiq -q critical,low,default -d -l log/sidekiq.log'
alias sqk='pkill -f sidekiq'
alias v='vim'
alias vb='vim ~/.bashrc'
alias vi='vim'
alias vv='vim ~/.vimrc'
