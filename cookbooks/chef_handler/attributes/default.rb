
default["chef_handler"]["root_user"] = "root"

case platform
when "openbsd", "freebsd", "mac_os_x", "mac_os_x_server"
  default["chef_handler"]["root_group"] = "wheel"
else
  default["chef_handler"]["root_group"] = "root"
end

default["chef_handler"]["handler_path"] = "#{File.expand_path(File.join(Chef::Config[:file_cache_path], '..'))}/handlers"
