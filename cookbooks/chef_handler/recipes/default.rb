
Chef::Log.info("Chef Handlers will be at: #{node['chef_handler']['handler_path']}")

remote_directory node['chef_handler']['handler_path'] do
  source 'handlers'
  # Just inherit permissions on Windows, don't try to set POSIX perms
  if node["platform"] != "windows"
    owner node['chef_handler']['root_user']
    group node['chef_handler']['root_group']
    mode "0755"
    recursive true
  end
  action :nothing
end.run_action(:create)
