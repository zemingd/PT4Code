 (a, b) = gets.chomp.split(" ")
 p a,b
 a, b = a.to_i, b.to_i
 p a, b
d = a + b
c = 0
 while d != 0
  c = c + 1
  d = d/10
 end
puts c