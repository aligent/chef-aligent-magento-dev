name             'aligent-magento-dev'
maintainer       'Aligent Consulting'
maintainer_email 'sysadmin@aligent.com.au'
license          'MIT'
description      'Custom recipes for an Aligent dev environment'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.1'

depends 'mysql2_chef_gem', '~> 1.0.2'
depends 'database', '~> 4.0.6'
depends 'nginx', '~> 2.7.6'
depends 'php', '~> 1.8.0'
depends 'mysql', '~> 6.0.30'
depends 'redis2', '~> 0.5.1'
depends 's3_file', '~> 2.7.0'
depends 'varnish', '~> 2.3.0'
depends 'mariadb', '~> 0.3.1'
depends 'cpan', '~> 0.0.34'
depends 'php-ioncube', '~> 0.2.1'

