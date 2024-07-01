def dual_gt(x, max, n)
  return n + 1 if x >= max
  return dual_gt(x*2, max, n + 1)
end

n,k = gets.split.map(&:to_f)
xs = (1..n).map do |i|
	(1.to_f/n.to_f) * ((1.to_f/2.to_f) ** dual_gt(i.to_f, k.to_f, 0).to_f)
end
puts xs.sum
