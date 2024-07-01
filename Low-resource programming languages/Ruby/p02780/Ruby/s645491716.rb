n, k = gets.split.map(&:to_i)
p = gets.split.map{ |p_i| (p_i.to_i * 1.0 + 1.0) / 2.0 }
l = []
(0..(n-k)).each do |idx|
  l[idx] = p[idx..(idx+k-1)].inject(:+)
end
puts l.max