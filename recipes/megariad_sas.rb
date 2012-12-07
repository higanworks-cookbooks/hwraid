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
