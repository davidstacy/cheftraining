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
<html><body>
<img src=https://upload.wikimedia.org/wikipedia/commons/thumb/1/1d/AmazonWebservices_Logo.svg/2000px-AmazonWebservices_Logo.svg.png width=200>
<pre>
Hostname:   ip-10-100-20-235
IP:         54.86.147.175
Memory:     1015944 kB
# CPUs:     1
Kernel:     3.10.0-229.14.1.el7.x86_64
OS Version: CentOS Linux release 7.1.1503 (Core)
</pre></body></html>
'
  action :create
end

service 'httpd' do
  action [ :enable, :start ]
end
