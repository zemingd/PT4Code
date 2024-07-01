a,b,c,d=gets.split.map(&:to_i)
lcm = c.lcm(d)
n=b-a+1
a-=1
m=(b/c + b/d - b/lcm) - (a/c + a/d - a/lcm)
puts n-m