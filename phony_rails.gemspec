# -*- encoding: utf-8 -*-
require File.expand_path('../lib/phony_rails/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Joost Hietbrink"]
  gem.email         = ["joost@joopp.com"]
  gem.description   = %q{This Gem adds useful methods to your Rails app to validate, display and save phone numbers.}
  gem.summary       = %q{This Gem adds useful methods to your Rails app to validate, display and save phone numbers.}
  gem.homepage      = "https://github.com/joost/phony_rails"
  gem.license       = 'MIT'

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "phony_rails"
  gem.require_paths = ["lib"]
  gem.version       = PhonyRails::VERSION

  gem.post_install_message = "PhonyRails v0.10.0 changes the way numbers are stored!"
  gem.post_install_message = "It now ads a '+' to the normalized number when it starts with a country number!"

  gem.add_dependency "countries", '~> 0.11', '>= 0.11.5'
  gem.add_dependency "activesupport", ">= 3.0"
  gem.add_development_dependency "activerecord", ">= 3.0"
  gem.add_development_dependency "mongoid", ">= 3.0"
end
