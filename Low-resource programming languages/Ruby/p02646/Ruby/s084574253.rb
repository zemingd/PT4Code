a, v = gets.split.map(&:to_i)
b, w = gets.split.map(&:to_i)
t = gets.to_i

d = a + v * t
e = b + w * t

f = []
f << d
f << e

if d == e
  e == d
end

j =f.max

puts j == d ? "Yes": "NO"