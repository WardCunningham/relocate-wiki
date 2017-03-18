# get a site from fed.wiki.org
# usage: sh get.sh

from=home.c2.com
to=root@bay.wiki.org

echo domain name?
read domain
ssh $from "ls -ltr .wiki/$domain/pages"
echo continue rsync from $from?
read
rsync -a --exclude status/tmp $from:.wiki/$domain data/get/
ls -ltr data/get/$domain/pages
echo continue rsync to $to?
rsync -a data/get/$domain $to:.wiki/
ssh $to "chown -R root:root .wiki/$domain; ls -ltr .wiki/$domain/pages"
echo now: update dns, claim new site
echo later: sh got.sh
