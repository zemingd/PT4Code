a, v = gets.split.map(&:to_i)
b, w = gets.split.map(&:to_i)
t = gets.to_i

d = a + v * t
e = b + w * t

if d >= 0 && e >= 0
  puts d >= e ? "Yes": "NO"

elsif d >= 0
  puts d >= e ? "Yes": "NO"

elsif e >= 0
  puts d >= e ? "Yes": "NO"

elsif d < 0 && e < 0
  puts d <= e ? "YES": "NO"
end