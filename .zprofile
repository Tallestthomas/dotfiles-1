# Load ~/.profile in sh emulation mode.
emulate sh -c '. ~/.profile'

if [ -f /usr/local/opt/chruby/share/chruby/chruby.sh ]; then
  source /usr/local/opt/chruby/share/chruby/chruby.sh
  chruby $(cat ~/.ruby-version)
fi
