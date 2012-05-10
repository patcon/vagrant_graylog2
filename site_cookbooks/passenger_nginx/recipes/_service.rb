bash "force nginx restart" do
  code "pkill -P 1 nginx"
  notifies :restart, "service[nginx]"
  only_if "pgrep -P 1 nginx"
end
