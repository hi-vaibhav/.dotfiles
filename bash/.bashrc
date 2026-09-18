# Starship prompt initialization
eval "$(starship init bash)"

# open new tab and pane in same directory (Windows Terminal only —
# other terminals, e.g. VS Code's, don't understand this OSC sequence
# and can leak it as garbled text in the prompt)
if [ -n "$WT_SESSION" ]; then
    PROMPT_COMMAND=${PROMPT_COMMAND:+"$PROMPT_COMMAND; "}'printf "\e]9;9;%s\e\\" "`cygpath -w "$PWD" -C ANSI`"'
fi

# export PS1="\n\e[0;33m  \e[0;32m\w       \u       :     \n\e[0;33m \e[0;32m  \e[0;37m"
# disables the bell sound and visual alert
bind 'set bell-style none'
bind '"\C-j":'
bind '"\C-l":'

alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'