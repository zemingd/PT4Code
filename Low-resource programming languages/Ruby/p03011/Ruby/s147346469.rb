p, q, r = gets.chomp.split(" ").map(&:to_i)
result = [p + q, p + r, q + r].min
puts result