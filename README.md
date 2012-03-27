## Installation

    $ gem install vagrant veewee
    $ git clone https://github.com/mariussturm/vagrant_graylog2.git
    $ cd vagrant_graylog2
    $
    $ vagrant basebox define graylog2 ubuntu-11.10-server-amd64-ruby192
    $ vagrant basebox build 'graylog2'
    $ vagrant basebox export graylog2
    $ vagrant box add 'graylog2' 'graylog2.box'
    $ 
    $ cd cookbooks
    $ git clone https://github.com/opscode-cookbooks/apt.git
    $ git clone https://github.com/opscode-cookbooks/build-essential.git
    $ git clone https://github.com/opscode-cookbooks/bluepill.git
    $ git clone https://github.com/opscode-cookbooks/java.git
    $ git clone https://github.com/opscode-cookbooks/nginx.git
    $ git clone https://github.com/opscode-cookbooks/runit.git
    $ cd ..
    $ 
    $ vagrant up
    $ http://localhost:8081
