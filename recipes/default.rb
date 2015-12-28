#
# Cookbook Name:: web
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

package 'httpd' do
  action :install
end

file '/var/www/html/index.html' do
  owner 'root'
  group 'root'
  mode 00755
  content '
54.86.147.175
ip-10-100-20-235
'
  action :create
end

service 'httpd' do
  action [ :enable, :start ]
end
