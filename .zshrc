# Powerlevel10k instant prompt. Must stay at the top; anything that needs
# console input (password prompts, [y/n]) goes above this block.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting web-search)
source $ZSH/oh-my-zsh.sh

# Prompt (run `p10k configure` or edit ~/.p10k.zsh)
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# PATH
export PNPM_HOME="$HOME/Library/pnpm"
export PATH="$PNPM_HOME:$PATH:$HOME/.dotnet/tools"

# Tools
eval "$(zoxide init zsh)"
eval "$(fzf --zsh)"
eval "$(atuin init zsh)"

# gcloud completion (gcloud itself is on PATH via Homebrew)
[[ -f /opt/homebrew/share/google-cloud-sdk/completion.zsh.inc ]] && source /opt/homebrew/share/google-cloud-sdk/completion.zsh.inc

# Aliases
alias pr-digest="$HOME/.local/bin/pr-digest"
alias jl='pbpaste | jless'
