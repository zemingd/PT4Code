n = gets.to_i
w = gets.split.map(&:to_i)
w.unshift(0)
sum = 0
w.each { |e|
  sum += e
}
s1 = [0]
s2 = [0]
d_abs_min = 1000000
for i in 1..n do
  s1[i] = s1[i-1] + w[i]
  s2[i] = sum - s1[i]
  d_abs = (s1[i] - s2[i]).abs
  d_abs_min = d_abs if d_abs_min > d_abs
end
puts d_abs_min
