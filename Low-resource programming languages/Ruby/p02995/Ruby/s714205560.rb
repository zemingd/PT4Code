
a,b,c,d = gets.split.map {|x| x.to_i}

cd = c.lcm(d)
cdi = b/c - (a-1)/c
ddi = b/d - (a-1)/d
cddi = b/cd - (a-1)/cd

puts (b - a + 1) - cdi - ddi + cddi


