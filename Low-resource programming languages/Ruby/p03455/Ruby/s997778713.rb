a, b = gets.split.map(&:to_i)
res = (a * b) % 2 == 0 ? 'Even' : 'Odd'
puts(res)