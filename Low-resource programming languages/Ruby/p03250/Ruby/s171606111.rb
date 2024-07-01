ABC = gets.split.map(&:to_i).sort

puts ABC[0] + ABC[2] * 10 + ABC[1]
