require 'rubygems'
require 'mechanize'

a = Mechanize.new { |agent|
  agent.user_agent_alias = 'Mac Safari'
}

page = a.get('https://script.google.com/macros/s/AKfycbzVweiPGHCLcxLR0HlWRtr5QuxJbtUONOY_o6RSp1xQu2XyptE/exec')

pp page
