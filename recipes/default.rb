#
# Cookbook Name:: web
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

package 'httpd' do
  action :install
end

template '/var/www/html/index.html' do
  action :create
  source 'index.html.erb'
end

service 'httpd' do
  action [ :enable, :start ]
end
