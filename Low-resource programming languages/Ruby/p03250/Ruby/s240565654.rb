a, b, c = gets.split.map(&:to_i)
x = [a,b,c].sort.reverse
puts x[0]*10 + x[1] + x[2]
