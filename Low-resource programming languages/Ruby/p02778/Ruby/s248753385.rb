s = gets.split('').map(&:to_s)

ans = []

s.map do |c|
	ans << 'x'	
end

puts ans.join