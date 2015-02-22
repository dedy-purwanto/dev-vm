Dev VM instrumentation script
------------------------------

* Install & config all dev packages
* Setup environment (editor, shell, theme, etc)

Requirement
------------

* Must be semantic
* Must not rely on too many external sources

This is the list of packages and environment setup that I use for
most of my developments. This script uses SaltStack to setup everthing. 
To install, run this script on VM (tested on Ubuntu 14.04):

```
wget -O - https://bootstrap.saltstack.com | sudo sh
git clone https://github.com/kecebongsoft/dev-vm.git /srv/salt
salt-call --local state.highstate

```
