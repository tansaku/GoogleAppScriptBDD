require 'rubygems'
require 'mechanize'

a = Mechanize.new { |agent|
  agent.user_agent_alias = 'Mac Safari'
}

a.get('http://google.com/') do |page|
  search_result = page.form_with(:name => 'gbqf') do |search|
    search.q = 'ruby mechanize'
  end.submit

  search_result.search(".//a[@class='l']").each_with_index.map do |link, i|
    puts "#{i} #{link.content}"
  end
end
