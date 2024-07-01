n, x = gets.split.map(&:to_i)
a = n.times.map{ gets.chomp.to_i }

count = 0
i = 0
while x > 0
  x -= a[i]
  count += 1
  i >= n ? i = 0 : i += 1
end

puts count