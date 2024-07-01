n = gets.to_i
a = gets.split.map(&:to_i)
plus = []
minus = []
min_abs = 10 ** 9 + 1
a.each do |v|
  if v >= 0
    plus.push(v)
  else
    minus.push(v)
  end
  min_abs = v if v.abs < min_abs.abs
end
m = 0
if minus.size % 2 == 1
  m = (min_abs >= 0) ? (-2 * min_abs) : (2 * min_abs)
end
puts plus.inject(:+) - minus.inject(:+) + m
