a,b,c,d = gets.split.map(&:to_i)
e = c*d/(c.gcd(d))
l = (a-1)/c + (a-1)/d - (a-1)/e
r = b/c + b/d - b/e
p (b-a+1)-(r-l)
