a, b = gets.split.map(&:to_i)
s1 = (a / 0.08).to_i
e1 = ((a + 1) / 0.08).to_i
s2 = (b / 0.10).to_i
e2 = ((b + 1) / 0.10).to_i

if [s1, s2].max <= [e1, e2].min
  puts [s1, s1].max
else
  puts '-1'
end
