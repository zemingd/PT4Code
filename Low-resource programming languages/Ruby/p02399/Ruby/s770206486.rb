a, b = gets.split.map(&:to_i)
d = a / b
r = a % b
f = "%.5f"%(Rational(a, b).to_f)
p [d, r, f].join(' ')