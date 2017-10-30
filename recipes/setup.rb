package 'tree' do
   action :install
end

package 'ntp' do
  # here action default is install
end

package 'git' do
  action :install
end

package 'emacs'

file '/etc/motd' do
  # accessing the node objects to update the
  # system info instead of hardcoding.
  # here we use pound curly brace syntax
  # to extrac the nod info.
  content "This server is the property of Achutha
           HOSTNAME: #{node['hostname']}
           IPADDRESS: #{node['ipaddress']}
           CPU: #{node['cpu']['0']['mhz']}
           MEMORY: #{node['memory']['total']}"
  # default property
  action :create
  owner 'root'
  group 'root'
end

service 'ntp' do
  action [ :enable, :start ]
end
