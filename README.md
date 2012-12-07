# hwraid cookbook

Add repository hwraid [http://hwraid.le-vert.net/](http://hwraid.le-vert.net/)

Install packeage and setup monitoring daemon.

- megaraid_sas

# Requirements

- cookbook[apt]


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
- megaraid_sas: install megacli and setup megaclisas-status as daemon.


# Author

Author:: HiganWorks LLC (<sawanoboriyu@higanworks.com>)
