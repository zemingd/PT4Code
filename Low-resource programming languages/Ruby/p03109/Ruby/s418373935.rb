require 'date'

S = Date.parse(gets.chomp)
T = Date.parse("2019/04/30")

if S <= T then
  puts "Heisei"
else
  puts "TBD"
end