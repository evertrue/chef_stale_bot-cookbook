name             'chef_stale_bot'
maintainer       'The Authors'
maintainer_email 'you@example.com'
license          'all_rights'
description      'Installs/Configures chef_stale_bot'
long_description 'Installs/Configures chef_stale_bot'
version          '0.0.1'

supports 'ubuntu', '>= 12.04'

depends 'cron'
depends 'ruby'
depends 'rubygems'
depends 'bundler', '~> 0.2.0'
depends 'apt'