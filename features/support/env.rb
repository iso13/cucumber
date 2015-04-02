require 'capybara/cucumber'
require 'capybara'
require 'rspec'
require 'factory_girl'
require 'capybara/poltergeist'
require 'selenium-webdriver'
require 'cucumber'

Capybara.default_driver = :poltergeist

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.javascript_driver = :chrome

