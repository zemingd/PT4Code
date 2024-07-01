a = gets.split.map(&:to_i).inject(:+)
puts (a > 21 ? "bust" : "win")