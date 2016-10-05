local autojump=''

if [ -f /opt/local/etc/profile.d/autojump.sh ]; then
    autojump="/opt/local/etc/profile.d/autojump.sh"
fi

if [ -f /etc/profile.d/autojump.sh ]; then
    autojump="/etc/profile.d/autojump.sh"
fi

if [[ -f /root/.autojump/etc/profile.d/autojump.sh ]]; then
    autojump="/root/.autojump/etc/profile.d/autojump.sh"
fi

if [[ -f $HOME/.nix-profile/share/autojump/autojump.zsh ]]; then
    autojump="$HOME/.nix-profile/share/autojump/autojump.zsh"
fi

if hash brew 2>/dev/null; then
    if [[ -s `brew --prefix`/etc/autojump.sh ]]; then
        autojump="`brew --prefix`/etc/autojump.sh"
    fi
fi

source $autojump
