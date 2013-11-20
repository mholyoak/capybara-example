require 'rspec'
require 'capybara'
require 'capybara/dsl'
require 'spec_helper.rb'

feature 'Test Two Feature' do

  background do
    Capybara.default_driver = :selenium
    Capybara.app_host = "http://www.sorensonmedia.com"
  end

  scenario 'My scenario' do
    visit '/'
  end

  scenario 'Click Who we are' do
    visit '/'
    within 'footer' do
      click_on 'Who We Are'
    end
  end
end
