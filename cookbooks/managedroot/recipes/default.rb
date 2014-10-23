# Manage root user recipe
# This is an interesting concept for the win. 

user "root" do
  comment 'Chef managed root user'
  uid 0
  gid 0
  home "/root"
  manage_home false
  shell "/bin/bash"
  password node['root']['password']
end
