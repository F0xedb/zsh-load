#!/bin/bash

# usefull aliases go here
alias Exam="wine /home/zeus/apps/Exam/win/ExamMonitor.exe"
alias exam="wine /home/zeus/apps/Exam/win/ExamMonitor.exe"


#generates aliases in the form of 1 (go to dir 1), 2 (go to dir 2 etc) to see a list of dirst use d
for code ({0..20}) ; do alias $code="cd -$code"; done  && alias d='dirs -v' && for code ({0..20}) ; do alias r$code="popd -$code"; done	


alias password='echo $(head -c 100 /dev/urandom | base64 | head -c 12)'

alias scan='sudo nmap -O -p 22'
alias cat='ccat'

if [[ "$(which lsd)" == "/usr/bin/lsd" ]]; then
    alias ls='lsd'
fi

alias setup='sudo ip route del default via 172.16.128.1; sudo ip route add default via 172.16.128.1 dev wlp2s0 metric 101'
alias exam='wine ~/apps/win/ExamMonitor.exe'
alias setupD3='sudo ip route del default via 172.16.0.1; sudo ip route add default via 172.16.0.1 dev wlp2s0 metric 101'
alias pdf='zathura'
alias rss='newsboat'
alias md='typora'
alias neoshot="neofetch | sed -r 's:Public IP.*[0-9]{2}:Public IP\: Blurred for screenshot purpose:'"

