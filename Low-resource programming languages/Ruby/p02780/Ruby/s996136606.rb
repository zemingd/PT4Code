def chance(n)
	return 0.5 * (n+1)
end

n, k = gets.chomp.split(" ").map{|e|e.to_i}
ps = gets.chomp.split(" ").map{|e|e.to_i}

c = []

for i in ps do
	c << chance(i)
end



max = 0
sum = 0

0.upto(n-k) do |i|
	i.upto(i+k-1) do |j|
		sum += c[j]
	end
	if sum>max then max = sum end
	sum = 0
end

p(max)