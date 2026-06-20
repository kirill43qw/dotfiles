# https://github.com/spences10/dotfiles/blob/main/.zsh_aliases
# https://github.com/omerxx/dotfiles/blob/master/zshrc/.zshrc
# https://github.com/radleylewis/zsh/blob/main/aliases.zsh

# ── System Utilities ─────────────────────
alias cl='clear'
alias bt='btop'
alias sn='sensors | less'
alias ping='ping -c 5'
alias checkip='curl ifconfig.me'
alias path='echo -e ${PATH//:/\\n}'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias ..="cd .."
alias ...="cd ../.."

# ── Development ──────────────────────────
alias v='nvim'
alias p='python3'
alias lag='lazygit'
alias lad='lazydocker'
# git
alias gst='git status'
# docker

# eza
alias ls='eza --group-directories-first'
alias ll='eza --icons --group-directories-first -la --no-filesize --no-time --no-user'
alias la='eza --icons --group-directories-first -lah'
alias tree='eza --tree --group-directories-first --icons --all --ignore-glob=".git|.venv|.mypy_cache|__pycache__|.pytest_cache|.ruff_cache"'

# ── Custom ──────────────────────────────
alias backup="rsync -avh --info=progress2 --delete --delete-excluded --exclude-from='/home/user0/.rsync_exclude' ~/dev ~/Documents ~/Pictures ~/笔记 ~/.icons ~/.themes ~/.config/kitty ~/.config/nvim ~/other/passwd_backup.kdbx ~/.local/share/backgrounds ~/.local/share/fonts ~/.zshrc ~/.gitconfig /media/user0/a74eefc6-14a9-436b-8df0-98af2fa02ee6/backup"
