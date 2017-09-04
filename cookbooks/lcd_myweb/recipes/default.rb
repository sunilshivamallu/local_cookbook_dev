#
# Cookbook:: lcd_myweb
# Recipe:: default
#
# Copyright:: 2017, Student Name, All Rights Reserved.

package 'httpd' do
  action :install
end

package node['app']['language'] do
  action :install
end
