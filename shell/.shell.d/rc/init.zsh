#!/bin/bash
# shellcheck disable=SC1090
#
# According to the standard:
# http://zdharma.org/Zsh-100-Commits-Club/Zsh-Plugin-Standard.html
#

0="${${ZERO:-${0:#$ZSH_ARGZERO}}:-${(%):-%N}}"
0="${${(M)0:#/*}:-$PWD/$0}"

typeset -gx BASH_RC_REPO_DIR="${0:h}"

for i in "${BASH_RC_REPO_DIR}"/*.rc; do
    source "${i}"
done
