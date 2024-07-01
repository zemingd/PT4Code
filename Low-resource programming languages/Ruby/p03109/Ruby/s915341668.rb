S = gets.chomp

require "date"
d = Date.parse(S)
if d <= Date.new(2019, 4, 30)
  puts "Heisei"
else
  puts "TBD"
end
