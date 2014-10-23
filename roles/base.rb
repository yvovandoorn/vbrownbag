name "base"
description "base roll"
run_list "recipe[motd]", "recipe[iptables::disabled]", "recipe[chef-client]"
