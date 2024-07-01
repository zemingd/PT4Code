def dual_gt(x, max, n)
  return n + 1 if x >= max
  return dual_gt(x*2, max, n + 1)
end

n,k = gets.split.map(&:to_f)
xs = (1..n).map do |i|
	(1/n) * ((1/2) ** dual_gt(i, k, 0))
end
puts xs.sum
