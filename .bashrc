# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi


# Put your fun stuff here.
export PATH="$HOME/.local/bin:/home/james/.cargo/bin:$PATH"

PATH="/home/james/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/james/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/james/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/james/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/james/perl5"; export PERL_MM_OPT;
diatheke -b CPDV -f plain  -k Wisdom 17:10
