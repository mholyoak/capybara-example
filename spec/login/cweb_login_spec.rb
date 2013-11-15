require 'rspec'
require 'capybara'
require 'capybara/dsl'
require 'spec_helper.rb'

Capybara.default_driver = :selenium

feature "Sorenson Website" do
  scenario "Visit Sorenson" do
    Capybara.app_host = "http://www.sorensonmedia.com"

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