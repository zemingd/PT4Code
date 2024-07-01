require 'complex'

a, b = gets.chomp.split(" ")
c = (a + b).to_i

# floorは小数点切り捨て
d = Math.sqrt(c).floor
if (d*d) == c
    puts "Yes"
else
    puts "No"
end

#puts "#{}"
#puts "#{}"
