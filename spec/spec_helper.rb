require 'capybara/rspec'

RSpec.configure do |config|
  config.include Capybara::DSL
end

Capybara.register_driver :selenium_chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.register_driver :selenium_safari do |app|
  Capybara::Selenium::Driver.new(app, :browser => :safari)
end

Capybara.register_driver :selenium_ie do |app|
  Capybara::Selenium::Driver.new(app, :browser => :ie)
end

