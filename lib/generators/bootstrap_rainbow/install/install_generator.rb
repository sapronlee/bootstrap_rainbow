require 'rails/generators'

module BootstrapRainbow
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      source_root File.expand_path("../templates", __FILE__)
      desc "bootstrap_rainbow install."
      argument :layout_name, :type => :string, :default => "application"
      
      attr_reader :app_name
      
      def generate_install
        app = ::Rails.application
        @app_name = app.class.to_s.split("::").first
        template "layout.html.erb", "app/views/layouts/#{layout_name}.html.erb"
        template "sidebar.html.erb", "app/views/rainbow/_sidebar_nav.html.erb"
        template "breadcrumb.html.erb", "app/views/rainbow/_breadcrumb.html.erb"
      end
    end
  end
end