n = gets.to_i
digits = gets.split.map(&:to_i).sort

center1, center2 = digits[n/2-1], digits[n/2]
puts center2-center1