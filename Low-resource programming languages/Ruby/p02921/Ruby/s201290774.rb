s = gets.chomp.chars
t = gets.chomp.chars
puts s.zip(t).reduce(0) { |sum, (x, y)| sum += 1 if x == y; sum }
