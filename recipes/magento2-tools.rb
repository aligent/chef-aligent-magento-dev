#
## Cookbook Name:: aligent-magento-dev
## Recipe:: magento2-tools
##
## Copyright 2016, Aligent Consulting
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

%w{pv}.each do |pkg|
  package pkg do
    action :install
  end
end


remote_file '/usr/local/bin/modman' do
  source 'https://raw.githubusercontent.com/colinmollenhour/modman/master/modman'
  owner 'root'
  group 'root'
  mode '755'
end

if node['n98-magerun2'] and node['n98-magerun2']['version']
  # e.g. https://files.magerun.net/n98-magerun2-3.2.0.phar
  n98_source = "https://files.magerun.net/n98-magerun2-#{node['n98-magerun2']['version']}.phar"
else
  n98_source = 'https://files.magerun.net/n98-magerun2.phar'
end

remote_file '/usr/local/bin/n98-magerun2.phar' do
  source n98_source
  owner 'root'
  group 'root'
  mode '755'
end
