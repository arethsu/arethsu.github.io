# Load and configure shell
ZSH_THEME=robbyrussell HIST_STAMPS=yyyy-mm-dd
export ZSH=$HOME/.oh-my-zsh && source $ZSH/oh-my-zsh.sh

# Set locale, text editors, and umask
export LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8 EDITOR=nano VISUAL=subl && umask 027

# Favorite aliases
alias ls=exa cat=bat find-unwanted-files="find -iname '*DS_Store' -type f" delete-unwanted-files="find-unwanted-files -delete" 
oxipng='oxipng -Zo6 -sa'

# Initialize version managers
export CARGO_HOME=$HOME/.cargo RBENV_ROOT=$HOME/.rbenv PYENV_ROOT=$HOME/.pyenv NVM_DIR=$HOME/.nvm
export PATH=$CARGO_HOME/bin:$RBENV_ROOT/bin:$PYENV_ROOT/bin:$PATH

alias initialize-rbenv='eval "$(rbenv init -)"'
alias initialize-pyenv='eval "$(pyenv init -)"'
alias initialize-nvm='[ -s $NVM_DIR/nvm.sh ] && . $NVM_DIR/nvm.sh'
