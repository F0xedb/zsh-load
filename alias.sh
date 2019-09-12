#!/bin/bash
#generates aliases in the form of 1 (go to dir 1), 2 (go to dir 2 etc) to see a list of dirst use d
for code ({0..20}) ; do alias $code="cd -$code"; done  && alias d='dirs -v' && for code ({0..20}) ; do alias r$code="popd -$code"; done	


alias password='echo $(head -c 100 /dev/urandom | base64 | head -c 12)'

alias cat='ccat'

if [[ "$(which lsd)" == "/usr/bin/lsd" ]]; then
    alias ls='lsd'
fi

alias pdf='zathura'
alias md='typora'
alias neoshot="neofetch | sed -r 's:Public IP.*[0-9a-f]{2}:Public IP\: Blurred for screenshot purpose:'"

# Place more aliases here if you need them

