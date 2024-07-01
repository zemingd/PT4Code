n = gets.to_i
s = gets.chomp
max_count = 0
for i in 1..(n-1) do
  x = s.slice(0, i)
  y = s.slice(i, n-i)
  xx = x.split("").sort.uniq
  yy = y.split("").sort.uniq
  count = 0
  for j in 0...i do
    if yy.include?(xx[j])
      count += 1
    end
  end
  max_count = count if max_count < count
end
puts max_count
