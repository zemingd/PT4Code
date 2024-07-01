require 'date'
s = gets.chomp

d = Date.parse(s)
if d <= Date.new(2019,4,30)
  puts "Heisei"
else
  puts "TBD"
end