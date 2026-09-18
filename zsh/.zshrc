# Oh-My-Zsh config — set before sourcing
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

# --- Speed tweaks ---
zstyle ':omz:update' mode disabled
DISABLE_MAGIC_FUNCTIONS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
DISABLE_AUTO_TITLE="true"
ZSH_DISABLE_COMPFIX="true"
ZSH_AUTOSUGGEST_MANUAL_REBIND=1

# Skip global compinit (must be set before OMZ loads)
skip_global_compinit=1

# zsh-syntax-highlighting must be loaded last, after all other plugins
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# --- Autosuggestions styling (matches Catppuccin Frappe) ---
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#626880"
ZSH_AUTOSUGGEST_STRATEGY=(history completion)

# --- History ---
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt SHARE_HISTORY HIST_IGNORE_DUPS HIST_IGNORE_SPACE INC_APPEND_HISTORY

alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'
