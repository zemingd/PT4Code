a = gets.split.map(&:to_i)
puts a.sum > 21 ? "bust" : "win"