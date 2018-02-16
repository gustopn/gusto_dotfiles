" notorically often used vimrc file of Lars Schotte (now also including comments)
"
" very important so that vim does not try to use compatible annoying keybindings
set nocp 
" well, UTF-8 should be the standard by now, so this is a formality
set encoding=UTF-8
" autoindentation is sometimes problematic especially when pasting into vim
set ai 
" numbers on lines so that we know where we are
set nu
" background is usually dark so I am hard forcing it here, since automatically it seldom knows what the background is
set background=dark
" yes, and then not to forget setting the syntax, even though the colors are sometimes wrong (should be fixed someday by a different theme)
syntax enable
