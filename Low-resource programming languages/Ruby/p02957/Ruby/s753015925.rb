a,b = gets.split.map(&:to_f)
a = (a**2-b**2) / (2*(a-b))
puts a % 1 == 0.0 ? a.to_i : 'IMPOSSIBLE'
