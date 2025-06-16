# ~/.bashrc: executed by bash(1) for non-login shells.

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac


# ────────────> Aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi


# ────────────> Environment Variables
if [ -f ~/.bash_env_vars ]; then
    . ~/.bash_env_vars
fi


# ────────────> Tool Initializations
# ASDF
. <(asdf completion bash)

# Starship
eval "$(starship init bash)"

# Fuzzy Finder
eval "$(fzf --bash)"

# Shell options
shopt -s histappend
shopt -s checkwinsize
