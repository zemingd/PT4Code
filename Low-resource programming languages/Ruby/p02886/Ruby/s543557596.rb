n = gets.to_i
d = gets.chomp.split.map(&:to_i)
res = 0
0.step(n - 2) do |i|
  (i + 1).step(n - 1) do |j|
    res += d[i] * d[j]
  end
end
puts res