arr = gets.chomp.split.map(&:to_i)
puts arr.sum >= 22 ? "bust" : "win"