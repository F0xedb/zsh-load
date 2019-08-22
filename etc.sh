#!/bin/bash

if [[ "$(id -u)" != "0" ]]; then
    # only ask for ssh-agent once for every boot
    if [ ! -S ~/.ssh/ssh_auth_sock ]; then
        eval `ssh-agent`
        ln -sf "$SSH_AUTH_SOCK" ~/.ssh/ssh_auth_sock
    fi
    export SSH_AUTH_SOCK=~/.ssh/ssh_auth_sock
    ssh-add -l > /dev/null || ssh-add
fi

if [[ "$(tty)" != "/dev/tty1" ]]; then
    # setting the keyboard in the i3 config doesn't work for packet tracer
    # doing it this way makes it work it is a bug
    setxkbmap "$KEY"
fi

#enable completion function
compinit -u
