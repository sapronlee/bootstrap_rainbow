# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bootstrap_rainbow/version'

Gem::Specification.new do |gem|
  gem.name          = "bootstrap_rainbow"
  gem.version       = BootstrapRainbow::VERSION
  gem.platform      = Gem::Platform::RUBY
  gem.authors       = ["SapronLee"]
  gem.email         = ["sapronlee@gmail.com"]
  gem.description   = %q{extend bootstrap}
  gem.summary       = %q{extend bootstrap}
  gem.homepage      = "http://github.com/sapronlee"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  
  gem.add_dependency 'bootstrap-sass', '~> 2.3.0.0'
  gem.add_dependency 'font-awesome-sass-rails', '~> 3.0.2.1'
  
  gem.add_runtime_dependency 'railties', '>= 3.1.1'
  gem.add_runtime_dependency 'sass-rails', '>= 3.1.1'
end
