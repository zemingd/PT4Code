a, b, c = gets.split.map(&:to_i)
x = a * 10 + b + c
y = a + b * 10 + c

puts [x,y].max