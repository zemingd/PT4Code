n = gets.to_i
p = gets.split.map(&:to_i)
min = Float::INFINITY
count = 0
for i in 0..n-1
  if p[i] <= min
    min = p[i]
    count += 1
  end
end
puts count
