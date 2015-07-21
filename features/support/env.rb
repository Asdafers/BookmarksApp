  require_relative '../../config/environment'
ENV["RAILS_ENV"] = "test"
if RUBY_VERSION =~ /1.8/
  require 'test/unit/testresult'
  Test::Unit.run = true
end

  require 'capybara'
  require 'capybara/cucumber'
  require 'capybara/rails'
  require 'rspec'
  require 'rspec/rails'

World do
  Capybara.app = BookmarksApp
  Capybara.app_host = 'http://192.168.56.102:3000'
  Capybara.run_server = false
  Capybara.default_driver = :selenium
  include Capybara::DSL
  include RSpec::Matchers
end
