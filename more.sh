# get a list of sites to be moved
# usage: sh more.sh

from=home.c2.com

ssh $from 'cd .wiki; du -s * | sort -n'