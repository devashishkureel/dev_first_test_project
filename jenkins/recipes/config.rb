
 template "/var/lib/jenkins/config.xml" do
  source "jenkins-conf.erb"
  action :create # see actions section below
  mode '644'
  owner 'jenkins'
  group 'jenkins'
  notifies :restart, 'service[jenkins]', :immediately
end
