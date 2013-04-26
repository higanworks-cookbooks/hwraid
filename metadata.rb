name             "hwraid"
maintainer       "HiganWorks LLC"
maintainer_email "sawanoboriyu@higanworks.com"
license          "MIT"
description      "Installs/Configures hwraid from hwraid..le-vert.net"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.3.1"

recipe           "hwraid", "Add hwraid repo from le-vert.ne"
recipe           "hwraid::megaraid_sas", "Install and configure megaclisas-statusd, add cron task"
recipe           "hwraid::nagios", "add nagios plugin using nrpecheck LWR"

supports         "debian"
supports         "ubuntu"

depends          "apt"
depends          "nagios"
depends          "hwraid" # add self for foodcritic
