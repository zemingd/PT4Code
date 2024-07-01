a, b, c, d = gets.split.map(&:to_i)
puts (a+b>c+d) ? 'Left' : (a+b==c+d) ? 'Balanced' : 'Right'