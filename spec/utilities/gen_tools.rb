class GenTools

  def self.setup_test web_site
    Capybara.default_driver = :selenium
    Capybara.app_host = web_site
  end

end