n = gets.to_i
a = gets.chomp.split(" ").map(&:to_i)
su,gu = 0
result = 10**9
a = a.sort.reverse
for i in 0..(n-1)/2
	su = a[0..i].inject(:+)
	for j in 0..((n-1)/2)-i
		gu = a[i+1..a.length].inject(:+)
		result = (su-gu).abs < result ? (su-gu).abs : result
	end
end

puts result
