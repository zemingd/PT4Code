a, b, c, d = gets.split().map(&:to_i)
all = b-a+1
n = c*d/c.gcd(d)
x = (b/c + b/d - b/n) - ((a-1)/c + (a-1)/d - (a-1)/n)
puts all - x