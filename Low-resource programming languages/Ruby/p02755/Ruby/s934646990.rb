a, b = gets.split("\s").map(&:to_i)

a_min = 1.0 * a * 100 / 8
a_max = a_min + 12.5
b_min = 1.0 * b * 10
b_max = b_min + 10

if a_max <= b_min || b_max <= a_min
  print -1
else
  x = [a_min, b_min].max.to_i
  print x > 0 ? x : -1
end