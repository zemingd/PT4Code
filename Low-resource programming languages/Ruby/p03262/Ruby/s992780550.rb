N, X = gets.strip.split.map(&:to_i)
puts gets.strip.split.map { |x| (X - x.to_i).abs }.inject(:gcd)
