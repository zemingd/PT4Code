a, v = gets.split.map(&:to_i)
b, w = gets.split.map(&:to_i)
t = gets.to_i

d = a + v * t
e = b + w * t

f = d - e

puts f >= 0 ? "YES": "NO"