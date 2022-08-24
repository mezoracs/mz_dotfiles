# mezora - zsh config 
# @mezoracs

# -/ starship
eval "$(starship init zsh)";

# -/ plugins

# -/ software
# ruby
export GEM_HOME="$(ruby -e 'puts Gem.user_dir')";
export PATH="$PATH:$GEM_HOME/bin";
# colorls
source $(dirname $(gem which colorls))/tab_complete.sh;

# -/ initial conf
autoload -U colors && colors;
HISTSIZE=10000;
SAVEHIST=10000;
HISTFILE=~/.cache/zsh/history;

# -/ include scripts
# Xephyr (test)
alias xeph="Xephyr -br -ac -noreset -screen 1280x720 :1";

# -/ export conf
export BAT_CONFIG_PATH="$HOME/.config/bat/bat.conf";

# -/ aliases
alias cfz="nvim ~/.dotfiles/zsh/zshrc.zsh";
alias btw="macchina --theme mezora --show Host Kernel Distribution Packages DesktopEnvironment Memory ProcessorLoad Shell Terminal WindowManager Battery";
alias n="nvim";
alias tree="alder --sizes";
alias ls="colorls";
alias nmtui="nmtui";

# -/ keybinding
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# -/ hook call on init
btw
