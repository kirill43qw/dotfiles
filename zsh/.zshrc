if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ── Environment ──────────────────────────
export PATH="$PATH:/home/user0/.local/bin"
export TERM="xterm-256color"
export EDITOR="/usr/local/bin/nvim"
export FZF_DEFAULT_COMMAND="fd --type f --hidden --follow --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type d --hidden --follow --exclude .git"
export MANPAGER="batcat -l man -p"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# ── History Settings ─────────────────────
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory
setopt sharehistory
setopt inc_append_history
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_expire_dups_first
setopt hist_find_no_dups

# ── Shell Behavior ───────────────────────
setopt numeric_glob_sort
setopt nobeep
setopt interactive_comments


# ── Hotkeys & Smart Search ───────────────
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "${terminfo[kcuu1]}" up-line-or-beginning-search
bindkey "${terminfo[kcud1]}" down-line-or-beginning-search
bindkey "^[k" up-line-or-beginning-search
bindkey "^[j" down-line-or-beginning-search
bindkey '^[[Z' reverse-menu-complete
bindkey -r '^L'
bindkey -r '^J'

# ── Autocompletion & FZF Config ──────────
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
export FZF_DEFAULT_OPTS="--height 40% --layout=reverse --border --info=inline"
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza -1 --color=always $realpath'
zstyle ':fzf-tab:complete:ls:*' fzf-preview 'cat $realpath'


# ── Plugins & Init ───────────────────────
# export STARSHIP_CONFIG="~/.config/starship/starship.toml"
# eval "$(starship init zsh)"

eval "$(uv generate-shell-completion zsh)"
eval "$(uvx --generate-shell-completion zsh)"

source /usr/share/doc/fzf/examples/key-bindings.zsh
source /usr/share/doc/fzf/examples/completion.zsh
# modules
source ~/.aliases.zsh
# local plugins
source ~/.zsh/fzf-tab/fzf-tab.plugin.zsh
source ~/.zsh/powerlevel10k/powerlevel10k.zsh-theme
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
