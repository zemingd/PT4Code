n,m,c = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
count = 0
n.times do
  a = gets.split.map(&:to_i)
  sum = 0
  m.times do |i|
    sum += a[i] * b[i]
  end
  if sum + c > 0
    count += 1
  end
end
puts count	