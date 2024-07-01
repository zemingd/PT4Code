a,b = gets.chomp.split(" ").map(&:to_i)
sa = (a.abs - b.abs).abs
hante = sa
hante = sa + 2 if(a>b and b>0)
hante = sa + 1 if(a>b and b<0 and a> 0)
hante = sa + 2 if(a>b and a< 0)
hante = sa  if(a<b and a>0)
hante = sa + 1  if(a<b and a<0 and b>0)
hante = sa  if(a<b and a<0 and b>0)
hante = sa if(a == b)
puts hante
=begin
10 20
10 -10
=end