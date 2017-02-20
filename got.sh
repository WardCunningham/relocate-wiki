# archive a site on fed.wiki.org
# usage: sh get.sh

from=home.c2.com
to=bay.wiki.org

echo domain name?
read domain
host $to
host $domain
ls -l data/get/$domain
ssh $from "ls -l .wiki/$domain"
echo continue renaming old copies?
read
mv data/get/$domain data/got/
ssh $from "cd .wiki; mkdir -p old; mv $domain old"
ls -l data/*
