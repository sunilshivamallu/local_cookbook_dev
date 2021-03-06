#
# Cookbook:: lcd_web
# Recipe:: default
#
# Copyright:: 2017, Student Name, All Rights Reserved.

include_recipe 'lcd_web::users'

node.default['app']['language'] = 'ruby'

#package 'httpd' do
#	action :install
#end

#service 'httpd' do
#	action [:enable, :start]
#end

package package_name_http

service service_name_http do
  action [:enable, :start]
end

package 'net-tools' do
	action :install
end

package node['app']['language'] do
	action :install
end

template '/var/www/html/index.html' do
  source 'index2.html.erb'
  owner 'apache'
  group 'apache'
  mode '0755'
  variables(
    greeting_scope: 'World',
    greeting: node['greeting'],
    fqdn: node['fqdn']
  )
end


execute 'systemctl restart httpd' do
  only_if { index_exists? }
end




