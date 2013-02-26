require 'bootstrap_rainbow/breadcrumbs.rb'

module BootstrapRainbow
  class Engine < ::Rails::Engine
    
    initializer 'twitter-bootstrap-rails.setup_helpers' do |app|
      app.config.to_prepare do
        ActionController::Base.send :include, Breadcrumbs
      end
    end
    
  end
end