#
# Cookbook Name:: aligent-magento-dev
# Recipe:: templates
#
# Copyright 2016, (c) 2016 Aligent Consulting
#
# Permission is hereby granted, free of charge, to any person obtaining
# a copy of this software and associated documentation files (the
# "Software"), to deal in the Software without restriction, including
# without limitation the rights to use, copy, modify, merge, publish,
# distribute, sublicense, and/or sell copies of the Software, and to
# permit persons to whom the Software is furnished to do so, subject to
# the following conditions:
#
# The above copyright notice and this permission notice shall be
# included in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
# LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
# OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
# WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
#

template '/etc/systemd/system/templates.service' do
  source 'templates/templates.service.erb'
  owner 'root'
  group 'root'
  mode '0644'
  action :create
end

template '/usr/local/sbin/templates.sh' do
  source 'templates/templates.sh.erb'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

template '/usr/local/sbin/process-template.sh' do
  source 'templates/process-template.sh.erb'
  owner 'root'
  group 'root'
  mode '0755'
  cookbook node['app']['templates']['process_template_cookbook']
  action :create
end

service "templates" do
  action :enable
end