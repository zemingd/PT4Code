a, b, c = gets.split.map(&:to_i).sort
k = gets.to_i
p a + b + (c << k)