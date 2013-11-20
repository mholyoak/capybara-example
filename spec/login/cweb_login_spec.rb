require 'rspec'
require 'capybara'
require 'capybara/dsl'
require 'spec_helper.rb'

feature "Sorenson Website" do
  background do
    Capybara.default_driver = :selenium
    Capybara.app_host = "http://www.sorensonmedia.com"
  end

  scenario "Visit Sorenson" do

    visit '/'
    page.should have_content("Sorenson");
    
    click_link 'Login'
    page.should have_content "Login"
    
    within "#formLogin" do
      fill_in "username", :with => "mholyoak@sorensonmedia.com"
      fill_in "password", :with => "Squ33z3"
      click_button "Login"
    end
    page.should have_content "Logout"
  end
end
