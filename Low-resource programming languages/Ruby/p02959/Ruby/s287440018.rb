n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
count = 0
for i in 0..n - 1
  kill = [a[i], b[i]].min
  a[i] -= kill
  b[i] -= kill
  count += kill
  kill = [a[i + 1], b[i]].min
  a[i + 1] -= kill
  b[i] -= kill
  count += kill
end
puts count
