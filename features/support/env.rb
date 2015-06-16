require 'capybara/cucumber'
require 'capybara'
require 'rspec'
require 'capybara/poltergeist'
require 'selenium-webdriver'
require 'cucumber'

if ENV['chrome']
  Capybara.default_driver = :firefox
  Capybara.register_driver :chrome do |app|
    options = {
        :js_errors => false,
        :timeout => 360,
        :debug => false,
        :inspector => false,
    }
#    Capybara::Selenium::Driver.new(app, :browser => :chrome)
    Capybara::Selenium::Driver.new(app, :browser => :chrome, :switches => ["--load-extension=features/support/Extensions/Chrome/2.3.19_0/"])
  end

elsif ENV['firefox']
  profile = Selenium::WebDriver::Firefox::Profile.new
  profile.add_extension "features/support/Extensions/FireFox/2_2_24/onelogin.xpi"
  Capybara.default_driver = :firefox
  Capybara.register_driver :firefox do |app|
    options = {
        :js_errors => true,
        :timeout => 360,
        :debug => false,
        :inspector => false,
    }
    Capybara::Selenium::Driver.new(app, :browser => :firefox, :profile => profile)
  end
elsif ENV['iexplore']
  Capybara.default_driver = :selenium
  Capybara.register_driver :selenium do |app|
    options = {
        :js_errors => true,
        :timeout => 360,
        :debug => false,
        :inspector => false,
    }
    Capybara::Selenium::Driver.new(app, :browser => :internet_explorer)
  end

elsif ENV['safari']
  Capybara.default_driver = :safari
  Capybara.register_driver :safari do |app|
    options = {
        :js_errors => false,
        :timeout => 360,
        :debug => false,
        :inspector => false,
    }
    Capybara::Selenium::Driver.new(app, :browser => :safari)
  end
end
