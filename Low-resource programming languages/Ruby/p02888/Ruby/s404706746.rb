n = gets.to_i
d = gets.chomp.split.map(&:to_i)

count = 0

d.combination(3) do |m|
	if m[0] + m[1] > m[2] && m[0] + m[2] > m[1] && m[1] + m[2] > m[0]
		count += 1
	end
end

puts count