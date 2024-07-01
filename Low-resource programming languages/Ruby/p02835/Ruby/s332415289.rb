A = gets.split.map(&:to_i).sum
puts A > 21 ? "bust" : "win"
