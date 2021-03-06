# $FreeBSD: src/etc/profile,v 1.14 2004/06/06 11:46:27 schweikh Exp $
#
# Edited by: tPhunk
# Poor attempt at building a personalized sh(1) initialization 
#
# Uncomment this to give you the default 4.2 behavior, where disk
# information is shown in K-Blocks
# BLOCKSIZE=K; export BLOCKSIZE
#
# For the setting of languages and character sets please see
# login.conf(5) and in particular the charset and lang options.
# For full locales list check /usr/share/locale/*
# You should also read the setlocale(3) man page for information
# on how to achieve more precise control of locale settings.
#
# Read system messages
# msgs -f
# Allow terminal messages
# mesg y
if [ -z "$LANG" -o "$LANG" = "C" ] ; then
  LANG="en_US.UTF-8"; export LANG
fi
#LC_CTYPE="en_US.UTF-8"; export LC_CTYPE
#LC_COLLATE="POSIX"; export LC_COLLATE
EDITOR=vi;      export EDITOR
PAGER=less;     export PAGER
BLOCKSIZE=K;    export BLOCKSIZE

alias ls="ls -G"
alias ll="ls -alG"
userName=`whoami`
PS1="$userName@\h[\W]>>"
