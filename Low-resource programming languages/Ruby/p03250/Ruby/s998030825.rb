abc = gets.split.map(&:to_i)
m = abc.max
puts m * 10 + abc.inject(:+) - m