# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/dantae/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

source /home/dantae/repos/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export TERM=xterm-256color
# PATH
export PATH=$PATH:/home/dantae/scripts:/home/dantae/.local/bin:/home/dantae/links:/home/dantae/go/bin:/home/dantae/.cargo/bin
export EDITOR=nvim

source ~/.local/share/icons-in-terminal/icons_bash.sh

# Aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias tmux='TERM=xterm-256color tmux'
alias vim='nvim'
alias ta='tmux attach -t'
alias fw_decompress='python3 /home/dantae/repos/siemens_lzp3/fw_decompress.py'
alias crunch='/home/dantae/repos/crunch-3.6/crunch'
alias cat='bat'

source /home/dantae/repos/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/repos/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
