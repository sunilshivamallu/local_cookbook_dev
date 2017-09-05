resource_name :hello_httpd
property :greeting, :kind_of => String

default_action :create
action :create do
  package package_name_http

  service service_name_http do
    action [:enable, :start]
  end

  template '/var/www/html/index.html' do
    cookbook 'lcd_web'
    source 'index.html.erb'
    owner 'apache'
    group 'apache'
    mode '0755'
    variables(
      greeting: node['greeting'],
      greeting_scope: "World",
      fqdn: node['fqdn']
    )
    end
end
