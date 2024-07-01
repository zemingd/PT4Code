X = gets.to_i
n = 1
n += 1 while n**2 < X
puts (n**2 == X) ? X : (n-1)**2
