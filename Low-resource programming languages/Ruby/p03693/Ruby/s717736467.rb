r, g, b = gets.split
num = [r,g,b].join.to_i
puts num % 4 == 0 ? 'YES' : 'NO'