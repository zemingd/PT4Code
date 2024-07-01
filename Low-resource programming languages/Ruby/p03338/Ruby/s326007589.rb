n = gets.to_i
s = gets.chomp
max = 0

for i in 0..n-1 do
	a = s[0..i]
	b = s[i..n]
	score = 0

	('a'..'z').map do |c|
		score += a.include?(c) && b.include?(c) ? 1 : 0
	end


	if max < score
		max = score
	end
end
puts max