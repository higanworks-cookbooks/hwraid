include_recipe "hwraid::default"


%w(megacli megaclisas-status).each do |pkg|
  package pkg do
    action :install
    options "--force-yes" #  without verification
  end
end

service "megaclisas-statusd" do
  supports [:restart]
  action [:enable, :start]
end

template node['hwraid']['megacli_sas']['config_path'] do
  source "megaraid_sas.erb"
  variables node['hwraid']['megacli_sas']['configs']
  notifies :restart, "service[megaclisas-statusd]"
end

cron "megaraid check consistency" do
  hour node['hwraid']['megacli_sas']['cc_hour']
  minute node['hwraid']['megacli_sas']['cc_minute']
  day node['hwraid']['megacli_sas']['cc_day']
  command node['hwraid']['megacli_sas']['cc_command']
end if node['hwraid']['megacli_sas']['enable_cc']
