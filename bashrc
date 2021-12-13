# ==============================================================================
# env
# https://wiki.archlinux.org/index.php/Locale
# ==============================================================================
export	LC_ALL=en_US.UTF-8
export	LC_COLLATE=C            # sort order
export	TERM="xterm-256color"
export	TMOUT=
export	EDITOR=vim
export	HISTSIZE=1000

# ==============================================================================
# prompt
# ==============================================================================
# ls color 
alias	ls="ls -p --color=auto"

function swd() {
    echo -n $(dirs | perl -F/ -ane 'print join( "/", map { $i++ < @F - 1 ?  substr $_,0,1 : $_ } @F)')
}
. ${HOME}/dotfiles/git/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
export	PS1='\[\e[32m\]\u@\H\[\e[00m\] $(swd)\[\e[90m\]$(__git_ps1 " (%s)")\[\e[0m\] \$ '

alias	ll="ls -alh"
alias	grep="grep --color=always"
