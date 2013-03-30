name             "hwraid"
maintainer       "HiganWorks LLC"
maintainer_email "sawanoboriyu@higanworks.com"
license          "MIT"
description      "Installs/Configures hwraid from hwraid..le-vert.net"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.3.0"
depends          "apt"
depends          "nagios"
depends          "hwraid" # add self for foodcritic
