n = gets.to_i
m = (n + 1) / 2 - 1
x = gets.split.map(&:to_i)
y = x.each_with_index.sort{|a, b| a[0] <=> b[0] }
z = []
y.each_with_index do |i, j|
  z[i[1]] = j
end

n.times do |i|
  puts y[z[i] <= m ? m + 1 : m][0]
end

