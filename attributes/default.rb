default['app']['xdebug']['enable'] = true
default['app']['xdebug']['version'] = "stable"
default['app']['xdebug']['remote_ip'] = "192.168.34.1"

default['app']['name'] = "magento"
default['app']['document_root'] = "/vagrant/public"
default['app']['run_codes'] = {}
default['app']['server_params'] = {}
default['app']['local_xml_cookbook'] = 'aligent-magento-dev'

default['app']['cache_backend'] = 'redis';
default['app']['cache_backend_redis']['prefix'] = 'dev_'
default['app']['cache_backend_redis']['server'] = 'localhost'
default['app']['cache_backend_redis']['port'] = '6379'

default['app']['session_backend'] = "files"
default['app']['session_backend_redis']['server'] = 'localhost'
default['app']['session_backend_redis']['port'] = '6379'

default['app']['primary_user'] = "vagrant"
default['app']['cron_user'] = "vagrant"

default['app']['vhost_cookbook'] = 'aligent-magento-dev'

default['app']['database_engine'] = 'mysql'

default['app']['opcache']['installed'] = false
default['app']['opcache']['enabled'] = true
default['app']['opcache']['max_accelerated_files'] = 20000
default['app']['opcache']['validate_timestamps'] = 0
default['app']['opcache']['revalidate_freq'] = 60

default['app']['prompt']['stack'] = 'vagrant'
default['app']['prompt']['role'] = 'default'

default['app']['dev']['phpunit']['disable_modules'] = []

default['app']['templates']['after'] = "varnish.service"
default['app']['templates']['before'] = "cloud-final.service"
'/etc/nginx/nginx.conf /etc/my.conf'
default['varnish']['version'] = '3.0'
default['varnish']['vcl_cookbook'] = 'aligent-magento-dev'
default['varnish']['backend_host'] = 'localhost'
default['varnish']['backend_port'] = 80

