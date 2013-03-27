require 'rubygems'
require 'mechanize'

a = Mechanize.new { |agent|
  agent.user_agent_alias = 'Mac Safari'
}

page = a.get('https://script.google.com/macros/s/AKfycbytA2xBsaQ0_FSJXNkPVXQekBnWD4hXPOaCjCT00wo/dev')

pp page
