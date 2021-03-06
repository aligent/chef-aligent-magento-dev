#
## Cookbook Name:: aligent-magento-dev
## Recipe:: system-manager-agent
##
## Copyright 2018, Aligent Consulting
##
## Permission is hereby granted, free of charge, to any person obtaining
## a copy of this software and associated documentation files (the
## "Software"), to deal in the Software without restriction, including
## without limitation the rights to use, copy, modify, merge, publish,
## distribute, sublicense, and/or sell copies of the Software, and to
## permit persons to whom the Software is furnished to do so, subject to
## the following conditions:
##
## The above copyright notice and this permission notice shall be
## included in all copies or substantial portions of the Software.
##
## THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
## EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
## MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
## NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
## LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
## OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
## WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
##
#

# https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-manual-agent-install.html
remote_file "#{Chef::Config[:file_cache_path]}/amazon-ssm-agent.rpm" do
  source 'https://s3.amazonaws.com/ec2-downloads-windows/SSMAgent/latest/linux_amd64/amazon-ssm-agent.rpm'
  owner 'root'
  group 'root'
  mode '0644'
  action :create
end

package 'amazon-ssm-agent' do
  source "#{Chef::Config[:file_cache_path]}/amazon-ssm-agent.rpm"
  action :install
end

service "amazon-ssm-agent" do
    action [:enable]
end

