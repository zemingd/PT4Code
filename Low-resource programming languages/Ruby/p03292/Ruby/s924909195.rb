require 'pp'

a_n = gets.chomp!.split(" ").map(&:to_i)

min = 999999999
a_n.permutation do |x|
    y = (x[1] - x[0]).abs + (x[2] - x[1]).abs
    if y < min
        min = y
    end
end
 
puts min
