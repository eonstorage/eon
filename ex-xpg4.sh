ex_xpg4() {
[ "X$1" = "X" ] && {
  echo "usage: $0 file_with_xpg4"
} || {
file=$1
ex -s ${file} << _EOF_
1,\$s/\/xpg4\/bin/\/bin/g
w!
q!
_EOF_
}
}

ex_xpg4 $@
