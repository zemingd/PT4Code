n, k = gets.split.map(&:to_i)
p = []
n.times do
  p.push(gets.to_i)
end
p.sort!
ret = nil
(n - k + 1).times do |i|
  dif = p[i + k - 1] - p[i]
  ret = dif if ret.nil? || (dif < ret)
end
puts (ret)