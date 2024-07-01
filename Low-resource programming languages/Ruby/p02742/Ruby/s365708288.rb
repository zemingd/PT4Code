h,w = gets.chomp.split.map(&:to_i)
result = h.even? ? (h * w) / 2 : ((h * w) / 2) + 1
puts result