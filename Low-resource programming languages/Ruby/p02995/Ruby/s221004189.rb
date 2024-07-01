a,b,c,d = gets.strip.split.map(&:to_i)
s = (b.to_f/c).floor-(a.to_f/c).floor
t = (b.to_f/d).floor-(a.to_f/d).floor
e = c.lcm(d)
u = (b.to_f/e).floor-(a.to_f/e).floor
puts b-a+1-(s+t-u)