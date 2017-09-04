#
# Cookbook:: lcd_web
# Recipe:: default
#
# Copyright:: 2017, Student Name, All Rights Reserved.

include_recipe 'lcd_web::users'

node.default['app']['language'] = 'ruby'

package 'httpd' do
	action :install
end

service 'httpd' do
	action [:enable, :start]
end

package 'net-tools' do
	action :install
end

package node['app']['language'] do
	action :install
end
