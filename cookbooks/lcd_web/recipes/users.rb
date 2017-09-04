#
# Cookbook:: lcd_web
# Recipe:: users
#
# Copyright:: 2017, Student Name, All Rights Reserved.
#

group 'developers' do
	action :create
end

user 'webadmin' do
	action :create
        group 'developers'
	uid '1020'
        home '/home/webadmin'
        shell '/bin/bash'
end
