a, b = gets.chomp.split.map(&:to_i)
res = 0
a.step(b) do |i|
  n = i.to_s
  res += 1 if n == n.reverse
end
puts res