Given(/^I visit "([^"]*)"$/) do |pageUrl|
  visit(pageUrl)
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field, value|
  fill_in(field, :with => value)
end

When(/^I press "([^"]*)"$/) do |buttonName|
  click_button(buttonName)
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

Then(/^I refresh page$/) do
  page.driver.browser.navigate.refresh
end

Given(/^I hover "([^"]*)"/) do |menu|
  page.find(menu).hover
end