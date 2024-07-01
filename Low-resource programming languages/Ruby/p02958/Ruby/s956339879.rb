N = gets.to_i
P = gets.split.map &:to_i

sorted = P.sort
puts sorted.zip(P).count{|a, b| a != b } <= 2 ? :YES : :NO