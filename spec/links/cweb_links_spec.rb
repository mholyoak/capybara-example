require 'rspec'
require 'capybara'
require 'capybara/dsl'
require 'spec_helper.rb'
require File.join File.dirname(__FILE__), '../utilities/gen_tools.rb'

feature 'Test Two Feature' do

  background do
    GenTools.setup_test "http://www.sorensonmedia.com"
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
