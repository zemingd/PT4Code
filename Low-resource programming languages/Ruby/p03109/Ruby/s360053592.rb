require "Date"
s = gets.chomp

input = Date.parse(s)
gengou = Date.parse("2019/4/30")

if input > gengou
  puts "TBD"
else
  puts "heisei"
end

