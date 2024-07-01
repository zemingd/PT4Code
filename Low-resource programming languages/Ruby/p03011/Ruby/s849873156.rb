p, q, r = gets.strip.split(" ").map(&:to_i)

puts [p + q, q + r, p + r].min
