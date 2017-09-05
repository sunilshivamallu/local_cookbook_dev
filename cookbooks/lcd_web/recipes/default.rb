#
# Cookbook:: lcd_web
# Recipe:: default
#
# Copyright:: 2017, Student Name, All Rights Reserved.

include_recipe 'lcd_web::users'

node.default['app']['language'] = 'ruby'


hello_httpd 'greet hello' do
  greeting "Hello"
  action :create
end

package 'net-tools' do
	action :install
end

package node['app']['language'] do
	action :install
end

execute 'systemctl restart httpd' do
  only_if { index_exists? }
end




