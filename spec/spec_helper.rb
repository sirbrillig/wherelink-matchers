require 'rspec'
require 'capybara'
require 'wherelink-matchers'

RSpec.configure do |config|
  config.include(Wherelink::Matchers)
end
