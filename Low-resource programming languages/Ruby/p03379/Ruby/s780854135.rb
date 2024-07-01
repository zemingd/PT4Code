n = gets.to_i
x = gets.split.map(&:to_i)
y = x.each_with_index.sort{|a, b| a[0] <=> b[0] }
z = []
y.each_with_index do |i, j|
  z[i[1]] = j
end

n.times do |i|
  t = y.delete_at(z[i])
  puts y[(n + 1) / 2 - 1][0]
  y.insert(z[i], t)
end
