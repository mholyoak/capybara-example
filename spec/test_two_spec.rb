require 'rspec'
require 'capybara'
require 'capybara/dsl'
require 'spec_helper.rb'

feature 'Test Two Feature' do
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
