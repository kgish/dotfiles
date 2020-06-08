source ~/.bashrc

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export PATH="$HOME/.cargo/bin:$PATH"
if [ -e /home/kiffin/.nix-profile/etc/profile.d/nix.sh ]; then . /home/kiffin/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
