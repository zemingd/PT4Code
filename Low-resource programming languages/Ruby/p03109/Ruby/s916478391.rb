require 'time'
date = gets.chomp

if Time.parse(date) <= Time.parse('2019/04/30')
  puts 'Heisei'
else
  puts "TBD"
end
