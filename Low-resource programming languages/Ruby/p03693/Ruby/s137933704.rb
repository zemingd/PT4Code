r, g, b, = gets.split(' ').map(&:to_i)

total = r * 100 + g * 10 + b
puts total % 4 == 0 ? 'YES' : 'NO'
