# abc083 A
a, b, c, d = gets.split.map(&:to_i)
puts a + b == c + d ? 'Balanced' : a + b > c + d ? 'Left' : 'Right'

