require 'capybara/cucumber'
require 'capybara'
require 'rspec'
require 'factory_girl'
require 'capybara/poltergeist'
require 'selenium-webdriver'
require 'cucumber'

def browser_name
  (ENV['BROWSER']) ||= 'firefox'.downcase.to_sym
end


