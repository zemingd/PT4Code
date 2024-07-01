a, b = gets.split.map(&:to_i)
a_min = a * 100 / 8
a_max = (a + 1) * 100 / 8
b_min = b * 10
b_max = (b + 1) * 10
result = (a_min...a_max).to_a & (b_min...b_max).to_a
if result.size == 0
  puts '-1'
else
  puts result.min
end