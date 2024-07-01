n = gets.to_i
a = gets.chomp.split.map(&:to_i)
b = gets.chomp.split.map(&:to_i)
c = gets.chomp.split.map(&:to_i)
res = b.inject(:+)
0.step(n - 2) do |i|
  res += c[a[i] - 1] if a[i] + 1 == a[i + 1]
end
puts res