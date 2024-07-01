a,b,c = gets.chomp.split.map(&:to_i)
flag = false
(0..b-1).each do |i|
	if i * (a % b) % b == c
		flag = true
	end
end

puts flag ? "YES" : "NO"