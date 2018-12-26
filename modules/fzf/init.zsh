[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='ag  --hidden -l -g ""'

if [ -n "${commands[fzf-share]}" ]; then
    source "$(fzf-share)/key-bindings.zsh"
fi
