n, m= gets.chomp.split.map(&:to_i)
 
d = gets.chomp.split.map(&:to_i).sort.reverse
 
i = 0
res = 0
 
while i < m
	res += (d[i]-1)*0.5+1
	i += 1
end
 
puts res