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

# so here instead using this file 
# resource we use template resource.
#file '/etc/motd' do
#  # accessing the node objects to update the
#  # system info instead of hardcoding.
#  # here we use pound curly brace syntax
#  # to extrac the nod info.
#  content "This server is the property of Achutha
#           HOSTNAME: #{node['hostname']}
#           IPADDRESS: #{node['ipaddress']}
#           CPU: #{node['cpu']['0']['mhz']}
#           MEMORY: #{node['memory']['total']}"
#  # default property
#  action :create
#  owner 'root'
#  group 'root'
#end
# here template file path
# source file is the one where the content
# is copied.
template '/etc/motd' do
  # we can use variables inside the 
  # templates as follows.
  variables(
     :name => 'achutha')
  source 'motd.erb'
  action :create
end

service 'ntp' do
  action [ :enable, :start ]
end
