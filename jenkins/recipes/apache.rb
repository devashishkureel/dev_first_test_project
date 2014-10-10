# Cookbook Name:: jenkins
# Recipe:: apache.rb
#
# Author: QaSource


case node['platform_family']
when 'debian'

    package 'apache2'  do
     action :install
  end

    service 'apache2' do
     action [ :start, :enable ]
  end

    package 'libapache2-mod-proxy-html'  do
     action :install
  end

    execute "a2enmod proxy" do
     action :run
  end

    execute "a2dissite 000-default" do
     action :run
  end


    template '/etc/apache2/sites-available/jenkins.conf' do
     source   'apache-jenkins-config-debian.erb'
     mode     '0644'
  end

   execute "sudo a2ensite jenkins.conf" do
    action :run
  end

    service 'apache2' do
      action :reload
  end

  
when 'rhel'

  package 'httpd'  do
     action :install
  end

 service 'httpd' do
     action [ :start, :enable ]

  end
    template '/etc/httpd/conf/httpd.conf' do
     source   'httpd.conf.erb'
     mode     '0644'
   
  end

    template '/etc/httpd/conf.d/jenkins.conf' do
     source   'apache-jenkins-config-rhel.erb'
     mode     '0644'
     notifies :restart, 'service[httpd]', :immediately
  end

  

 end


 