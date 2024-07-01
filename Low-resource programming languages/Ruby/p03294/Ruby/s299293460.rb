n = gets.to_i
puts gets.split.map { |s| s.to_i - 1 }.inject(:+)