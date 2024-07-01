n, k = gets.split.map(&:to_i)
p = gets.split.map{ |p_i| (p_i.to_i * 1.0 + 1.0) / 2.0 }
p_0 = p.slice!(0..(k-1))
l = []
l[0] = p_0.inject(:+)
(1..(n-k)).each do |idx|
  p_0 << p.shift
  l[idx] = l[idx-1] - p_0[idx-1] + p_0[-1]
end
puts l.max