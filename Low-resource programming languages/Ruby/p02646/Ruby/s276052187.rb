a, v = gets.split.map(&:to_i)
b, w = gets.split.map(&:to_i)
t = gets.to_i

d = a.abs + v * t
e = b.abs + w * t
f = []
f << d
f << e
j =f.max
puts j == d ? "YES": "NO"