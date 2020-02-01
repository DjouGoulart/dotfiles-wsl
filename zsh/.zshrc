#!/usr/bin/env bash

source "${HOME}/.config/config.init"

ZSH_CUSTOM="${XDG_CONFIG_HOME}/zsh/.zshrc"

alias zshed="${EDITOR} ${ZSH_CUSTOM}"
alias zshrel="source ${ZSH_CUSTOM}"
