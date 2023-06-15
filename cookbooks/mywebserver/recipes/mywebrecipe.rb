
mypack=node['mywebserver']['mywebpack']


package mypack do
    action :install
end


service mypack do
    action :start
end
