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
sudo salt-call --local --file-root=./dev-vm-master
```
