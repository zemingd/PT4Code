require 'pp'

n = gets.chomp!.to_i
d_n = gets.chomp!.split(" ").map(&:to_i)

sum = 0
d_n.combination(2).each do |x, y|
    sum += x * y
end

puts sum
    
