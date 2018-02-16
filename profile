# notorically often used profile file of Lars Schotte
#
# we are using 4K AF HDDs for some time now
BLOCKSIZE=4K;	export BLOCKSIZE
# we have usually VIM installed
if [ -x /usr/local/bin/vim ]
then \
  EDITOR=vim
else \
  EDITOR=vi
fi && export EDITOR
# we use more modern pager
PAGER=less;  	export PAGER
if [ -x /usr/games/fortune ] ; then /usr/games/fortune freebsd-tips ; fi
