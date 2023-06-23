template '/opt/tomcat/conf/tomcat-users.xml' do
    source 'tomuser.erb'
    mode '0755'
    action :create
end
