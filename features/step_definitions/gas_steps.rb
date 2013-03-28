Given /^the following assignments exist$/ do |table|
  # table is a Cucumber::Ast::Table
  # we need some way of populating a google spreadsheet with this data
  # let's just see if we can even hit the existing app script
end

Given /^I am on the home page$/ do
  visit '/'
end

Given /^I view the script$/ do
  visit 'https://script.google.com/macros/s/AKfycbzVweiPGHCLcxLR0HlWRtr5QuxJbtUONOY_o6RSp1xQu2XyptE/exec'
end

Given /^I am logged in$/ do
  #debugger
  fill_in 'Email', :with => 'hpuappscripttest@gmail.com'
  fill_in 'Passwd', :with => 'hpu@ppscripttest'
  click_button 'Sign in'
end


Given /^that I enter 'yes' into background_questionnaire textfield$/ do
  pending # express the regexp above with the code you wish you had
end

Given /^click submit$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I should see "(.*?)"$/ do |arg1|
  debugger
  page.should have_content arg1
end

