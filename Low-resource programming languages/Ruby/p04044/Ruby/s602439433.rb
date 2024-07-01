s = gets().split().map(&:to_i)

str = []
s[0].times do |i|
	str << gets().chomp!
end

str.sort!

ans = ""
s[0].times do |i|
	ans += str[i]
end

puts ans