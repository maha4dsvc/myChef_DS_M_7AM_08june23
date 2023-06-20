#
# Cookbook:: myfilehandling
# Recipe:: default
#
# Copyright:: 2023, The Authors, All Rights Reserved.


apt_update 'package' do
    ignore_failure true
    action :update
end



file '/home/ubuntu/mytestfile' do
    content 'this is my test file'
    mode '0755'
    action :create
end

directory '/home/ubuntu/myfolder' do
    mode '0755'
    action :create
end

package 'apache2' do
    action :install
end

cookbook_file '/var/www/html/index.html' do
    source 'myfile'
    mode '0755'
    action :create
end


template '/var/www/html/index.html' do
    source 'myindexfile.erb'
    mode '0755'
    action :create
end

remote_file '/home/ubuntu/apache-tomcat-10.0.20.tar.gz' do
    source 'https://archive.apache.org/dist/tomcat/tomcat-10/v10.0.20/bin/apache-tomcat-10.0.20.tar.gz'
    mode '0755'
    action :create
end



package 'tree' do
    action :install
end
