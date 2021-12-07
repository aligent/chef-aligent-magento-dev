name             'aligent-magento-dev'
maintainer       'Aligent Consulting'
maintainer_email 'sysadmin@aligent.com.au'
license          'MIT'
description      'Custom recipes for an Aligent dev environment'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.4.0'

depends 'mysql2_chef_gem', '~> 2.1.0'
depends 'nginx', '~> 12.0.10'
depends 'php', '~> 9.1.0'
depends 'mysql', '~> 11.0.0'
depends 'redis2', '~> 0.5.1'
depends 's3_file', '~> 2.8.5'
depends 'varnish', '~> 5.0.0'
depends 'cpan', '~> 0.1.0'

