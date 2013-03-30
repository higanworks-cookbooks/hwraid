include_recipe "hwraid::default"

%w(megactl).each do |pkg|
  package pkg do
    action :install
    options "--force-yes" #  without verification
  end
end

template "#{node['nagios']['plugin_dir']}/check_megasasctl" do
  source "check_megasasctl.erb"
  mode 0755
  owner "root"
  group "root"
end

nagios_nrpecheck "check_megasasctl" do
  command "#{node['nagios']['plugin_dir']}/check_megasasctl"
  action :add
end
