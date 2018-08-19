#!/usr/local/bin/mksh -x

replace_if_different() {
  if [ ! -e "$2" ] {
    touch "$2"
  }
  if [ `stat -f %i $1` -ne `stat -f %i $2` ]
  then \
    if cmp $1 $2 >/dev/null 2>&1
    then \
      echo "same content"
    else \
      ln -f $1 $2
    fi
  fi
}

# first check if we are on the same filesystem, if not we do not use this script and quit right away
export installscriptname=$0
if [ `stat -f %d "$installscriptname"` -eq `stat -f %d ~` ]
then \
  # this nneeds to be reworked into a file containing the filenames and for loop them over
  replace_if_different login_conf ~/.login_conf
  replace_if_different profile ~/.profile
  replace_if_different mkshrc ~/.mkshrc
  replace_if_different vimrc ~/.vimrc
fi
