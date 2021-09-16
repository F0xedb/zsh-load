#!/bin/bash

#check zsh updates every 13 days
export UPDATE_ZSH_DAYS=13

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

#color of the command autocompletion
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=6'
ZSH_AUTOSUGGEST_USE_ASYNC="true"

zstyle ':autocomplete:tab:*' widget-style menu-complete
