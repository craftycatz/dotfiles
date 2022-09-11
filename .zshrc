source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$(brew --prefix)/opt/nvm/nvm.sh" ] && \. "$(brew --prefix)/opt/nvm/nvm.sh" 

eval "$(starship init zsh)"

# pnpm
export PNPM_HOME="/Users/robin/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

if [ -z "$TMUX" ]
then
    tmux attach -t TMUX || tmux new -s TMUX
fi

