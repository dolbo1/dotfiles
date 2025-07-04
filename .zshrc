HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd

autoload -Uz compinit promptinit
compinit
promptinit

# aliases
source ~/.dotfiles/.zsh/aliases.zsh

# local binaries (scripts)
export PATH=/home/aliaks/.local/bin:$PATH

# plugins
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/doc/pkgfile/command-not-found.zsh

# prompt
source ~/.zsh/prompt.zsh
setPrompt # (from prompt.zsh)

fastfetch
