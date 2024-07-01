a, b, c, d = gets.split.map &:to_i
puts (c + b - 1) / b <= (a + d - 1) / d ? 'Yes' : 'No'
