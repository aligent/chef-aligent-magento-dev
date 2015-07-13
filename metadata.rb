name             'aligent-magento-dev'
maintainer       'Aligent Consulting'
maintainer_email 'YOUR_EMAIL'
license          'MIT'
description      'Custom recipes for an Aligent dev environment'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends 'database', '~> 4.0.6'
depends 'nginx', '~> 2.7.6'
depends 'php', '~> 1.3.12'