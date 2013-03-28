Dir[File.dirname(__FILE__) + '/lib/*.rb'].each {|file| require file }
require 'rspec/expectations'
require 'capybara/cucumber'
require 'ruby-debug'
# maybe selenium is the way to go since it can use my google login through the browser ...
Capybara.current_driver = :selenium 
Capybara.default_driver = :selenium 
Capybara.app_host = 'https://accounts.google.com/Login?continue=https://history.google.com/history/&hl=en&service=hist&ltmpl=gh&authuser=0' 
