a = gets.split.map(&:to_i).inject(&:+)
puts a >= 22 ? "bust" : "win"