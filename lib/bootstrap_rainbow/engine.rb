require 'rails'

require 'bootstrap_rainbow/breadcrumbs.rb'

module BootstrapRainbow
  class Engine < ::Rails::Engine
    
    initializer 'bootstrap-rainbow.setup' do |app|
      app.config.to_prepare do
        ActionController::Base.send :include, BootstrapRainbow::Breadcrumbs
      end
    end
    
  end
end