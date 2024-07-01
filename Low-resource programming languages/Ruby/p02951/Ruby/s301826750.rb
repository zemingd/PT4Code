a, b, c = gets.split.map(&:to_i)
c = c - (a - b)
c = c < 0 ? 0 : c
puts(c)
