a,b = gets.split
c = a.to_i/b.to_i
d = a.to_i%b.to_i
e = a.to_f/b.to_i
puts(c.to_s + " " + d.to_s + " " + e.to_s)