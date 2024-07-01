a,b = gets.split.map(&:to_i)
pu = a + b 
m = a - b 
k = a * b
c = [pu,m,k].sort!
puts c[2]