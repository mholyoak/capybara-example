require 'capybara/rspec'

RSpec.configure do |config|
  config.include Capybara::DSL
end

Capybara.register_driver :selenium do |app|
  file = File.new("spec/browser.txt", "r")
  str = file.gets

  #puts "str:" + str

  if str.start_with? "chrome"
    #puts "Using Chrome"
    Capybara::Selenium::Driver.new(app, :browser => :chrome)

  elsif str.start_with? "ie"
    #puts "Using IE"
    Capybara::Selenium::Driver.new(app, :browser => :ie)
  elsif str.start_with? "safari"
    #puts "Using Safari"
    Capybara::Selenium::Driver.new(app, :browser => :safari)
  else
    #puts "Using Firfox"
    Capybara::Selenium::Driver.new(app, :browser => :firefox)
  end
end

Capybara.register_driver :selenium_firefox do |app|
  Capybara::Selenium::Driver.new(app, :browser => :firefox)
end

Capybara.register_driver :selenium_ie do |app|
  Capybara::Selenium::Driver.new(app, :browser => :ie)
end

Capybara.register_driver :selenium_chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.register_driver :selenium_safari do |app|
  Capybara::Selenium::Driver.new(app, :browser => :safari)
end
