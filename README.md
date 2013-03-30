# hwraid cookbook
[![Build Status](https://secure.travis-ci.org/higanworks-cookbooks/hwraid.png?branch=master)](https://travis-ci.org/higanworks-cookbooks/hwraid)

Add repository hwraid [http://hwraid.le-vert.net/](http://hwraid.le-vert.net/)

Install packeage and setup monitoring daemon. 

- megaraid_sas

## tested by

- foodcritic with travis ci.

# Requirements

- cookbook[apt]

## For hwraid::nagios

- cookbook[nagios]

# Attributes

## megaraid_sas

<pre><code>default['hwraid']['megacli_sas']['config_path'] = "/etc/default/megaclisas-statusd"
default['hwraid']['megacli_sas']['configs'] = {
  "mailto" => "root",
  "period" => 600,
  "remind" => 7200,
  "daemonize" => "yes"</code></pre>}


# Recipes

- default: add repository hwraid
- megaraid_sas
  - install megacli and setup megaclisas-status as daemon.
  - regist scheduled consistency check per month to crontab.
- nagios
  - Use nagios_nrpecheck LWRP to add Nagios checking


# Author

Author:: HiganWorks LLC (<sawanoboriyu@higanworks.com>)
Author:: Leo Unbekandt (<leo@unbekandt.eu>)
