a, b, c = gets.split(" ").map(&:to_i)
puts a + b + c > 21 ? "bust" : "win"