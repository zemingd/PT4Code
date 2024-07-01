require 'pp'

x = gets.chomp!.to_i
sum = 2 * (x / 11)
if (x % 11 > 6)
    sum += 2
elsif x % 11 > 0
    sum += 1
end

puts sum
