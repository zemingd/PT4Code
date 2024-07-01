n, m= gets.chomp.split.map(&:to_i)

d = gets.chomp.split.map(&:to_i)

i = 0
sum = 0

while i < n
	d[i] = (d[i]+1)*0.5
	if m <= i-1 && sum < d[i-m+1..i].inject(:+)
		sum += d[i-m+1..i].inject(:+)
	end
	i += 1
end

puts sum