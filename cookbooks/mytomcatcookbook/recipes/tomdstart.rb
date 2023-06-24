
execute 'daemon reload' do
    command 'sudo systemctl daemon-reload'
    action :run
    not_if { ::File.exist?('/home/ubuntu/tomcatstart') }
end

execute 'start tomcat' do
    command 'sudo systemctl start tomcat'
    action :run
    not_if { ::File.exist?('/home/ubuntu/tomcatstart') }
end

execute 'enable' do
    command 'sudo systemctl enable tomcat'
    action :run
    not_if { ::File.exist?('/home/ubuntu/tomcatstart') }
end

file '/home/ubuntu/tomcatstart' do
    content 'content'
    mode '0755'
    action :create
end
