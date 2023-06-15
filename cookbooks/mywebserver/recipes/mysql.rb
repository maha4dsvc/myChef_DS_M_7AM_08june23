mysql_service 'foo' do
    port '3306'
    version '8.0'
    initial_root_password 'test'
    action [:create, :start]
  end