# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/jonassenghaas/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/jonassenghaas/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/jonassenghaas/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/jonassenghaas/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/jonassenghaas/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="apple"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

plugins=(
    vi-mode zsh-vimode-visual
    git
    github
    gitignore
    autojump
    web-search
    vscode
    themes
    copydir # use command 'copydir' to get the pathname of a dir
    copyfile # use command 'copyfile' to get the pathname of a file
    alias-finder
    zsh-autosuggestions
    zsh-syntax-highlighting
)
# Further Interesting Plugins
# common-aliases

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

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# ----------------------------------
#  Aliases
alias vimconfig="vim ~/.vimrc"
alias zshconfig="vim ~/.zshrc"
# alias vimall="vim -p *"

# Jump to Common Directories
alias home="cd ~"
alias root='cd /'
alias desk='cd ~/Desktop'
alias dbox='cd ~/Dropbox'
alias down='cd ~/Downloads'

# Programming Directories
alias prog="cd ~/programming/"
alias py="cd ~/programming/python"
alias cpp="cd ~/programming/cpp"
alias web="cd ~/programmming/webdev"
alias c="cd ~/programming/c"
alias itu="cd ~/programming/itu"
alias cprog='cd ~/programming/competitive_programming'

# Shortcut for Jumping Directories
alias o='open'
alias t='time'
alias .='cd ..'
alias ..='cd ..; cd ..'
alias ...='cd ..; cd ..; cd ..'
alias ....='cd ..; cd ..; cd ..; cd ..'

# Some other Shortcuts
alias lsa="ls -lah"
alias ls="ls -lh"
alias sc="source"
alias of="open ."
alias c="clear"
alias rm="rm -i"
alias rma="rm"

# Shortcuts to Website 
alias youtube="open https://www.youtube.de"
alias learnit="https://learnit.itu.dk/my/"
alias github="https://github.com/jonas-mika"
alias translate="https://translate.google.com/"
alias overleaf="https://www.overleaf.com/project"

# Path to Anaconda
alias condapy="/Users/jonassenghaas/opt/anaconda3/bin/python"

# Custom Prompt
# autoload -U colors && colors
# PS1="%w, %T --- %B%n%b at %B%m%b in %~  >>> "
alias config='/usr/bin/git --git-dir=/Users/jonassenghaas/dotfiles/.git/ --work-tree=/Users/jonassenghaas'
