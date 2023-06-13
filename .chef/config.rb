# See https://docs.chef.io/workstation/config_rb/ for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "maha50iac"
client_key               "#{current_dir}/maha50iac.pem"
chef_server_url          "https://api.chef.io/organizations/maha50iacorg"
cookbook_path            ["#{current_dir}/../cookbooks"]
