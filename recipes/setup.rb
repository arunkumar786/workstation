package 'tree' do
   action :install
end

package 'ntp' do
  # here action default is install
end

package 'git' do
  action :install
end

file '/etc/motd' do
  content 'This server is the property of Achutha'
  # default property
  action :create
  owner 'root'
  group 'root'
end

service 'ntp' do
  action [ :enable, :start ]
end
