statcat

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"


ZSH_THEME="robbyrussell"


alias lvim='~/.local/bin/lvim'
alias topcommands="history | awk '{CMD[\$2]++} END {for (a in CMD) print CMD[a], a}' | sort -nr | head"
alias cd='z'
alias cn="cargo run"


plugins=(git zsh-autosuggestions zsh-syntax-highlighting zsh-vi-mode fzf)

source $ZSH/oh-my-zsh.sh



export PATH=$PATH:/home/cj/.spicetify
export PATH=$PATH:/home/cj/.cargo/bin/
#eval "$(zoxide init --cmd cd zsh)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Added by LM Studio CLI (lms)
export PATH="$PATH:/home/cj/.cache/lm-studio/bin"
#eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
