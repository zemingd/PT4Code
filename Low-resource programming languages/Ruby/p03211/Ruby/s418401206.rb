s = gets.chomp
ans = 100000
(s.length-2).times do |i|
	tmp = s[i..i+2].to_i
	ans = [ans, (tmp-753).abs].min
end

puts ans