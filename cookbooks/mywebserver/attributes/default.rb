default['mywebserver']['mahaattribure']="mytest"


if node['platform'] == 'ubuntu'
default['mywebserver']['mywebpack']="apache2"
end


if node['platform'] == 'amazon'
 default['mywebserver']['mywebpack']="httpd"
end


default['mywebserver']['pack']="git" # 1
force_default['mywebserver']['pack']="tree" # 5