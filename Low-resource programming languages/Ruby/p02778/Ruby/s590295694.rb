s = gets.chomp.split('').map(&:to_s)

ans = []

s.map do |c|
	ans << 'x'	
end

puts ans.join