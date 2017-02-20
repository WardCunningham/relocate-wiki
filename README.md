# relocate-wiki
Use these scripts to move sites to a new host

# usage
Edit the scripts to have your from and to addresses.
Setup ssh keys on both remote hosts.
Then run the get script to transfer a site from one host to your laptop and then to the other host.
```
sh get.sh
```
This will prompt for a site name that should be one in a farm served from .wiki on the first host.
The script pauses at each step. Interrupt it if it looks to be doing the wrong thing.

You shoud now be able to revise your dns to point traffic for the site to the new host.
With my setup this takes a few minutes.

The second script is meant to record that you have moved a site.
Run it when you are happy to not be serving it from the original host any more.
```
sh got.sh
```
It moves your local copy from data/get to data/got.
It then moves your original host version from .wiki to .wiki/old. 
