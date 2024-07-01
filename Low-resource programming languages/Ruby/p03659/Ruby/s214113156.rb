n = gets.to_i
a = gets.chomp.split(" ").map(&:to_i)
su = a[0]
gu = a[1..a.length].inject(:+)
result = (su-gu).abs
for i in 1..n-2
	su += a[i]
	gu -= a[i]
	result = (su-gu).abs < result ? (su-gu).abs : result
end
puts result
