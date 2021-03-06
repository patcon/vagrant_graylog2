# Graylog2 demo setup
This Vagrant project builds a complete Graylog2 installation that can be used
for demonstration purposes or as a starting point for your own installation.

## Requirements
    VirtualBox 4.x
    ruby 1.9

## Installation
Import a Ubuntu 11.10 amd64 basebox

    gem install vagrant librarian
    vagrant box add graylog2 https://github.com/downloads/mariussturm/vagrant_graylog2/graylog2.box

Clone this repository

    git clone https://github.com/mariussturm/vagrant_graylog2.git
    cd vagrant_graylog2

Get additional Opscode cookbooks

    librarian-chef install

Startup the virtual machine and let Chef do the rest

    vagrant up

When chef finishes open your browser 

    http://localhost:8080

Now, you can create your first user in the webinterface.<br>
To get log messages into the Graylog2 server just redirect your syslog to UDP localhost:1514 or
have a look at https://github.com/papertrail/remote_syslog to send log messages from
your host machine to the Graylog2 server.
