module LcdWebCookBook
  module Helpers
    def package_name_http
      case node['platform']
      when 'centos' then 'httpd'
      when 'ubuntu' then 'apache2'
      end
    end

    def service_name_http
      case node['platform']
      when 'centos' then 'httpd'
      when 'ubuntu' then 'apache2'
      end
    end
  end
end

Chef::Recipe.include(LcdWebCookBook::Helpers)
Chef::Resource.include(LcdWebCookBook::Helpers)
