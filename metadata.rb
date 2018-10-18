name             'aligent-magento-dev'
maintainer       'Aligent Consulting'
maintainer_email 'sysadmin@aligent.com.au'
license          'MIT'
description      'Custom recipes for an Aligent dev environment'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.2.2'

depends 'mysql2_chef_gem', '~> 1.1.0'
depends 'database', '~> 4.0.6'
depends 'nginx', '~> 2.7.6'
depends 'php', '~> 2.2.1'
depends 'mysql', '~> 6.1.0'
depends 'redis2', '~> 0.5.1'
depends 's3_file', '~> 2.7.0'
depends 'varnish', '~> 3.3.1'
depends 'mariadb', '~> 0.3.1'
depends 'cpan', '~> 0.0.34'
depends 'php-ioncube', '~> 0.2.1'

