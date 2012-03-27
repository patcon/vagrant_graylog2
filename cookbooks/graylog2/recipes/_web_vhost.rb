# Install nginx vhost

template "#{node['nginx']['dir']}/sites-available/graylog2-web-interface.conf" do
  owner "root"
  group "root"
  mode  "0644"

  notifies :run, resources(:execute => "restart passenger")
end

nginx_site 'graylog2-web-interface.conf'

