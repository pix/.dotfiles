#
# Zshrc home configs files
# Camille Moncelier <pix@devlife.org>
#
# Greatly inspired by  Bruno Bonfils, <asyd@asyd.net>
# http://svn.asyd.net/svn/zsh/trunk/
#


which fortune >/dev/null 2>&1 && ((fortune -a fr . || fortune -a) && echo) || true

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Load System wide profile:
[ -f /etc/profile ] && source /etc/profile

# My functions (don't forget to modify fpath before call compinit !!)
fpath=($HOME/.zsh/functions $fpath)

# in order to have many completion function run comptinstall !
autoload -U zutil
autoload -U compinit
autoload -U complist
autoload -U predict-on

zle -N predict-on
zle -N predict-off

local os host

# Set default umask to 027, can be override by host specific resource file
umask 022

if [[ -f ~/.zinit/bin/zinit.zsh ]]; then
    source ~/.zsh/zinit/zinit.rc
else
    # Global resource files
    for file in $HOME/.{shell.d,zsh}/rc{,.local}/*.{rc,zsh}(N); do
        source $file
    done
    # per host resource file
    host=${$(hostname)//.*/}
    if [ -f "$HOME/.zsh/rc.host/${host}.zsh" ] ; then
        source "$HOME/.zsh/rc.host/${host}.zsh"
    fi
    # Local file
    [[ -f ~/.zsh/rc.local ]] && source ~/.zsh/rc.local
fi


# Only ask for seeing all possibilities if line would scroll off screen
LISTMAX=0

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

bindkey '^ ' autosuggest-disable
