#
## Cookbook Name:: aligent-magento-dev
## Recipe:: magetools
##
## Copyright 2015, Aligent Consulting
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

remote_file '/usr/local/bin/modman' do
  source 'https://raw.githubusercontent.com/colinmollenhour/modman/master/modman'
  owner 'root'
  group 'root'
  mode '755'
end

remote_file '/usr/local/bin/n98-magerun.phar' do
  source 'https://github.com/netz98/n98-magerun/raw/master/n98-magerun.phar'
  owner 'root'
  group 'root'
  mode '755'
end

link "/usr/local/bin/n98-magerun.phar" do
  to "/usr/local/bin/n98-magerun"
end
