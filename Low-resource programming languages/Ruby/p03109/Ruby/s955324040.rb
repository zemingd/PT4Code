require "date"
a,b,c = gets.split("/").map(&:to_i)

d = Date.new(a,b,c)
heisei = Date.new(2019,4,30)
result = ""

if d >= heisei
    puts "TBD"
else
    puts "Heisei"
end