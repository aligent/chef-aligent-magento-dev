#
## Cookbook Name:: aligent-magento-dev
## Recipe:: codedeploy-agent
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

%w{wget ruby zip unzip}.each do |pkg|
  package pkg do
    action :install
  end
end

remote_file "#{Chef::Config[:file_cache_path]}/codedeploy-agent-install" do
  source 'https://aws-codedeploy-ap-southeast-2.s3.amazonaws.com/latest/install'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

execute "install_codedeploy_agent" do
    command "#{Chef::Config[:file_cache_path]}/codedeploy-agent-install rpm"
    cwd "/opt"
    creates "/etc/init.d/codedeploy-agent"
end

# Ship codedeploy-agent as disabled; enable/start during userdata, per
# codedeploy troubleshooting docs for 'AWS CodeDeploy agent is included in your
# AMI'.  We're not using cfn-init, but this should achieve similar results
# (userdata is used to execute cfn-init; reordering in cfn-init would be used
# as a way to delay starting the agent).
#
# https://docs.aws.amazon.com/codedeploy/latest/userguide/troubleshooting-auto-scaling.html
#
# A deployment fails for new Amazon EC2 instances that are launched as part of
# an Auto Scaling group. Typically in this scenario, running the scripts in a
# deployment can prevent the launching of Amazon EC2 instances in the Auto
# Scaling group. (Other Amazon EC2 instances in the Auto Scaling group may appear
# to be running normally.) To address this issue, make sure that all other
# scripts are complete first:
#    * AWS CodeDeploy agent is not included in your AMI: If you use the
#      cfn-init command to install the AWS CodeDeploy agent while launching a new
#      instance, place the agent installation script at the end of the cfn-init
#      section of your AWS CloudFormation template.
#    * AWS CodeDeploy agent is included in your AMI: If you include the AWS
#      CodeDeploy agent in your AMI, configure it so that the agent is in a Stopped
#      state when the instance is created, and then include a script for starting the
#      agent as the final step in your cfn-init script library.
#
service "codedeploy-agent" do
    action [ :stop, :disable ]
end

