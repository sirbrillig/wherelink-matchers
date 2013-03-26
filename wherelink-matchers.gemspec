# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wherelink-matchers/version'

Gem::Specification.new do |gem|
  gem.name          = "wherelink-matchers"
  gem.version       = Wherelink::Matchers::VERSION
  gem.authors       = ["Payton Swick"]
  gem.email         = ["payton@foolord.com"]
  gem.description   = %q{Adds link matchers to RSpec for use with Capybara.}
  gem.summary       = %q{Adds link matchers to RSpec for use with Capybara.}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency 'rspec'
  gem.add_dependency 'capybara'
end
