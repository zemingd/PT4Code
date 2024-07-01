a, b = gets.split("\s").map(&:to_i)

a_min = a     * 100 / 8
a_max = (a+1) * 100 / 8
b_min = b     * 10
b_max = (b+1) * 10

if a_max < b_min || b_max < a_min
  print -1
else
  x = [a_min, b_min].max
  print x > 0 ? x : -1
end