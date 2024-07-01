n = gets.to_i
a = gets.chomp.split(" ").map(&:to_i)
su,gu = 0
result = 10**9
a = a.sort
for i in (n/2)-1..n-2
	su = a[0..i].inject(:+)
	gu = a[i+1..a.length].inject(:+)
	result = (su-gu).abs < result ? (su-gu).abs : result
end

puts result
