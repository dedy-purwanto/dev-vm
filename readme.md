Dev VM instrumentation script
------------------------------

* Install & config all dev packages
* Setup environment (editor, shell, theme, etc)

Requirement
------------

* Must be semantic
* Must not rely on too many external sources
* No redudancy
* Idempotent

This is the list of packages and environment setup that I use for
most of my developments. This script uses SaltStack to setup everthing. 
To install, run this script on VM (tested on Ubuntu 14.04):


```
wget -O - https://bootstrap.saltstack.com | sudo sh
wget -O - https://github.com/kecebongsoft/dev-vm/archive/master.tar.gz | tar -xz
sudo salt-call --local --file-root=./dev-vm-master state.highstate
```

**note**: For some unknown reason, running `sudo sh` through pipe for
saltstack's bootstrap will make the process hanging, it suppose to ask
your password but it doesn't. So one way to fix this is to run `sudo
echo` first, type in your password and then follow the above commands as
usual.
