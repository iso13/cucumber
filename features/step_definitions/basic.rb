

Given(/^I am on the homepage$/) do
  visit ('http://www.techcrunch.com')
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field, value|
  fill_in field, :with => value
end

When(/^I press "([^"]*)"$/) do |button|
  click_button(button)
end

Then(/^I should see "([^"]*)"$/) do |expectedText|
  page.should have_content (expectedText)
end

Then(/^I take a screenshot$/) do
  cur_time = Time.now.strftime('%Y%m%d%H%M%S%L')
  page.save_screenshot('./features/screenshot/screenshot' + cur_time + '.png')
end

Then(/^I wait (\d+) sec|secs$/) do |time|
  sleep time.to_i
end

Given(/^I maximize the browser$/) do
  page.driver.browser.manage.window.maximize
end


