Dir[File.dirname(__FILE__) + '/lib/*.rb'].each {|file| require file }
require 'rspec/expectations'
require 'capybara/cucumber'
Capybara.run_server=false
Capybara.current_driver = :mechanize 
Capybara.app_host = 'https://script.google.com/macros/s/AKfycbytA2xBsaQ0_FSJXNkPVXQekBnWD4hXPOaCjCT00wo/dev' 
