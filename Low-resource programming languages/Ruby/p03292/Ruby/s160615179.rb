a,b,c = gets.split.map(&:to_i).sort
D = [a,b,c]

puts (D[1] - D[0]).abs + (D[2] - D[1]).abs
