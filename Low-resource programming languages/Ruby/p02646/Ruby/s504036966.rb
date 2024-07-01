a, v = gets.split.map(&:to_i)
b, w = gets.split.map(&:to_i)
t = gets.to_i

caught = ((a - b).abs <= (v - w) * t)
puts(caught ? 'YES' : 'NO')
