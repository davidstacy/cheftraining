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
  content 'hello world!'
  action :create
end
