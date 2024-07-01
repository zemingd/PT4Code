abc = gets.split.map(&:to_i).sort
k = gets.to_i

m = abc.max
s = abc.inject(:+) - m
puts s + m * 2 ** k