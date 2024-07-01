abc = gets.split.map(&:to_i).sort
k = gets.to_i

m = abc.max
p m
s = abc.inject(:+) - m
p s
puts s + m * 2 ** k