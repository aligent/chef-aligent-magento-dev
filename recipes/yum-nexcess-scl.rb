#
## Cookbook Name:: aligent-magento-dev
## Recipe:: yum-nexcess-scl
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

# Configure the Nexcess SCL yum repo so we can match their php versions for
# PHP 5.4 and 5.5
yum_repository "nexcess_scl" do
    description "Nexcess Repo SCL"
    baseurl "http://rpms.nexcess.net/el/$releasever/scl/$basearch/"
    gpgcheck true
    gpgkey "http://rpms.nexcess.net/RPM-GPG-KEY-NEXCESS"
    enabled true
    exclude "mysql* varnish* php55u-php-mysql*"
end
