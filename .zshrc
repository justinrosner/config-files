# If you come from bash you might have to change your $PATH.
 export PATH=$HOME/.deno/bin:$HOME/Library/Python/3.9/bin:$HOME/bin:/opt/homebrew/bin:$PATH

ZSH_DISABLE_COMPFIX=true

# Path to your oh-my-zsh installation.
export ZSH="/Users/justinrosner/.oh-my-zsh"

# B
# Set name of the theme to load
ZSH_THEME="candy"

# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to automatically update without prompting.
DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=13

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

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


# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Traversing Aliases
alias u="cd ../"
alias uu="cd ../../"
alias uuu="cd ../../../"
alias uuuu="cd ../../../../"
alias uuuuu="cd ../../../../../"
alias cdic="cd ~/Library/Mobile\ Documents/com~apple~CloudDocs/"

# Prefer to have ls output more information
alias ls="ls -laG"
export CLICOLOR=1

# Function to open a microsoft word file from the command line
wordopen() {
  open -a "Microsoft Word" $1
}

# Function to open a microsoft excel file from the command line
excelopen() {
  open -a "Microsoft Excel" $1
}

# Function to open VSCode from the command line
code() {
  open -a "Visual Studio Code - Apple Chip" $1
}

# clang++ compile command with all of the flags
cc() {
 clang++ -Wall -std=c++17 $1.cpp -o $1
}

# Want to use new gcc version instead of apples default
alias cpp="/usr/local/bin/gcc-10"
[ -f "/Users/justinrosner/.ghcup/env" ] && source "/Users/justinrosner/.ghcup/env" # ghcup-env

# We want to create an alias for the old version of homebrew
alias oldbrew="/usr/local/bin/brew"

# opam configuration
[[ ! -r /Users/justinrosner/.opam/opam-init/init.zsh ]] || source /Users/justinrosner/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null
