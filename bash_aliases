# ~./bash_aliases

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias a='alias'
alias apache-remove='sudo update-rc.d -f apache2 remove'
alias apache-start='sudo /etc/init.d/apache2 start'
alias apache-stop='sudo /etc/init.d/apache2 stop'
alias ber='bundle exec rake'
alias beru='bundle exec ruby'
alias c='clear'
alias chrome='/opt/google/chrome/google-chrome --enable-plugins'
alias cleanup='sudo find ~ -name '*~' -exec rm {} \;'
alias efs='evolution --force-shutdown'
alias h='history'
alias hn='hostname'
alias kg='echo ssh www.kiffingish.com;ssh www.kiffingish.com'
alias l.='ls -d .*'
alias la='ls -A'
alias ll='ls -l'
alias ls='ls -F'
alias mongod-restart='sudo service mongod restart; tail -1 /var/log/mongodb/mongod.log'
alias mongod-start='sudo service mongod start; tail -1 /var/log/mongodb/mongod.log'
alias mongod-stop='sudo service mongod stop'
alias mysql-remove='sudo update-rc.d mysql remove'
alias mysql-start='sudo /etc/init.d/mysql start'
alias mysql-stop='sudo /etc/init.d/mysql stop'
alias nom='rm -rf node_modules && npm cache clear && npm install'
alias nomall='rm -rf node_modules && npm cache clear && npm install && rm -rf bower_modules && bower cache clean && bower install'
alias phttp='python -m SimpleHTTPServer'
alias realias='$EDITOR ~/.bash_aliases; source ~/.bash_aliases'
alias r='fc -s'
alias rb='$EDITOR ~/.bashrc; source ~/.bashrc'
alias rsp1='echo ssh rsp1;ssh rsp1'
alias rsp2='echo ssh rsp2;ssh rsp2'
alias sd='svn diff --diff-cmd ~/bin/svn-diff-meld'
alias skype='LD_PRELOAD=/usr/lib/i386-linux-gnu/libv4l/v4l1compat.so skype'
alias sml='rlwrap sml'
alias v='vim'
alias vb='vim ~/.bashrc'
alias vi='vim'
alias vv='vim ~/.vimrc'
alias zcp-start='sudo zarafa-server -c /usr/local/etc/zarafa/server.cfg; tail /var/log/zarafa/server.log'
alias zcp-stop='sudo kill -9 `cat /var/run/zarafa-server.pid`'
