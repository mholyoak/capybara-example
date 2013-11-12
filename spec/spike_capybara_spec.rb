require 'rspec'
require 'capybara'
require 'capybara/dsl'
require 'spec_helper.rb'

Capybara.default_driver = :selenium
Capybara.app_host = "http://www.youtube.com"

=begin
describe "Searching for a video" do
  it "allows searches for general terms" do
    visit ""
    fill_in('search_query', :with => "text adventures")
    click_button('search-btn')
    page.should have_content("GET LAMP: The Text Adventure Documentary")
  end
end
=end

=begin
feature "Searching for a video" do
  scenario "allows searches for general terms" do
    visit ""
    fill_in('search_query', :with => "text adventures")
    click_button('search-btn')
    page.should have_content("GET LAMP: The Text Adventure Documentary")
  end
end
=end

feature "Sorenson Website" do
  scenario "Visit Sorenson" do
#    Capybara.current_driver = :selenium_safari
#    Capybara.current_driver = :selenium_chrome
    Capybara.current_driver = :selenium_ie
    Capybara.app_host = "http://www.sorensonmedia.com"

    visit '/'
    page.should have_content("Sorenson");
    click_link 'Login'
    page.should have_content "Login"
    fill_in "username", :with => "mholyoak@sorensonmedia.com"
    fill_in "password", :with => "Squ33z3"
    click_button "Login"
    page.should have_content "Logout"
  end
end
