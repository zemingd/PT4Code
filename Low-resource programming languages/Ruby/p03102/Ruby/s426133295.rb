n, m, c = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
count = 0
n.times do
  a = gets.split.map(&:to_i)
  sum = 0
  for i in 0...m do
    sum += a[i] * b[i]
  end
  count += 1 if sum + c > 0
end
puts count
