default['hwraid']['megacli_sas']['config_path'] = "/etc/default/megaclisas-statusd"
default['hwraid']['megacli_sas']['configs'] = {
  "mailto" => "root",
  "period" => 600,
  "remind" => 7200,
  "daemonize" => "yes"
}

default['hwraid']['megacli_sas']['enable_cc'] = true
default['hwraid']['megacli_sas']['cc_hour']   = "11"
default['hwraid']['megacli_sas']['cc_minute'] = "11"
## use octet 4 of ipaddress as day.
default['hwraid']['megacli_sas']['cc_day'] = (node['ipaddress'].split(".")[3].to_i % 30).to_s
default['hwraid']['megacli_sas']['cc_command'] = "/usr/sbin/megacli -LDCC -Start -LALL -aALL"

default['hwraid']['nagios']['megasasctl_path'] = "/usr/sbin/megasasctl"
