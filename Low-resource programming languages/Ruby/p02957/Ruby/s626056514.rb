a,b = gets.strip.split(' ').map(&:to_i)

r = (a+b) / 2
r = 'IMPOSSIBLE' if (a+b) % 2 != 0
puts r
