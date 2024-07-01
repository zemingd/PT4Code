a, b = gets.split.map(&:to_f)
d = a / b
r = a % b
f = a.to_f / b.to_f
p "#{d r f}"