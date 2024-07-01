n = gets.chomp.to_i
difficults = gets.chomp.split(" ").map(&:to_i)
middle = n / 2
difficults.sort!
middle_1 = difficults[middle]
middle_2 = difficults[middle - 1]
ans = (middle_2 - middle_1).abs
puts ans