N,K = gets.split.map(&:to_i)
ans = 0
N.downto(1) do |n|
	if  n>=K
		ans += 1.0
		next
	end
	c = Math.log2(K/n.to_f).ceil
	ans += (1/2.0)**c
end
print sprintf("%.12f", ans/N.to_f)