A = gets.split.map(&:to_i)
puts A.inject(:+) - A.max