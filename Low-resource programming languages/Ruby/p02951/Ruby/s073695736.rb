a,b,c = gets.split.map(&:to_i)

c = (c - a + b) < 0 ? c = 0 : c

puts c