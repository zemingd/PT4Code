arr = gets.chomp.split(" ").map(&:to_i)
puts arr.inject(:+) >= 22 ? "bust" : "win"
