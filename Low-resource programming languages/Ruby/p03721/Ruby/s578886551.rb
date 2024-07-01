n, k = gets.chomp.split(" ").map(&:to_i)
pd = []

n.times do
	a, b = gets.chomp.split(" ").map(&:to_i)
	pd[a] ||= 0
	pd[a] += b
end

pd.each_with_index do |b, a|
	next unless b
	
	if k <= b
		puts a
		break
	end
	
	k -= b
end