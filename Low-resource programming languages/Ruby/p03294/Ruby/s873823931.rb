n = gets.to_i
puts gets.split.reduce(0){|sum, x| sum + x.to_i - 1}