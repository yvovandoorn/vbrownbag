# See http://docs.getchef.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "yvo"
client_key               "#{current_dir}/yvo.pem"
validation_client_name   "vbrownbag-validator"
validation_key           "#{current_dir}/vbrownbag-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/vbrownbag"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]


knife[:vsphere_host] = "172.31.8.66"
knife[:vsphere_user] = "administrator@vsphere.local"
knife[:vsphere_pass] = "1008Western"
knife[:vsphere_dc] = "vmwarelab"
knife[:vsphere_insecure] = true

