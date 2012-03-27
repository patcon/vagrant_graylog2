# Graylog2 demo setup
This Vagrant project builds a complete Graylog2 installation that can be used
for demonstration purposes or as a starting point for your own installation.

## Requirements
    VirtualBox 4.x (64bit)
    ruby 1.9

## Installation
Build a baseline Ubuntu machine and import it as a Vagrant box

    gem install vagrant veewee
    vagrant basebox define 'graylog2' 'ubuntu-11.10-server-amd64-ruby192'
    vagrant basebox build 'graylog2'
    vagrant basebox export 'graylog2'
    vagrant box add 'graylog2' 'graylog2.box'

Clone this repository

    git clone https://github.com/mariussturm/vagrant_graylog2.git

Get additional Opscode cookbooks

    cd vagrant_graylog2/cookbooks
    git clone https://github.com/opscode-cookbooks/apt.git
    git clone https://github.com/opscode-cookbooks/build-essential.git
    git clone https://github.com/opscode-cookbooks/bluepill.git
    git clone https://github.com/opscode-cookbooks/java.git
    git clone https://github.com/opscode-cookbooks/nginx.git
    git clone https://github.com/opscode-cookbooks/runit.git
    cd ..

Startup the virtual machine and let Chef do the rest

    vagrant up

When chef finishes open your browser 

    http://localhost:8081

Now, you can create your first user in the webinterface.</br>
To get log messages into the Graylog2 server just redirect your syslog to UDP localhost:1514.

