name             'ruby_install'
maintainer       'Ross Timson'
maintainer_email 'ross@rosstimson.com'
license          'Apache v2.0'
description      'Installs/Configures ruby-install'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends          'ark'
depends          'apt'
depends          'yum'

supports         'ubuntu'
supports         'centos'
